#include <fstream>
#include <memory>
#include <algorithm>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include "llvm-c/Core.h"

#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Verifier.h"
#include "llvm/Bitcode/BitcodeWriter.h"
#include "llvm/Bitcode/BitcodeReader.h"
#include "llvm/ADT/StringSet.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/LinkAllPasses.h"
#include "llvm/Support/ManagedStatic.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Analysis/InstructionSimplify.h"

using namespace llvm;

static void CommonSubexpressionElimination(Module *);

static void summarize(Module *M);
static void print_csv_file(std::string outputfile);

static cl::opt<std::string>
        InputFilename(cl::Positional, cl::desc("<input bitcode>"), cl::Required, cl::init("-"));

static cl::opt<std::string>
        OutputFilename(cl::Positional, cl::desc("<output bitcode>"), cl::Required, cl::init("out.bc"));

static cl::opt<bool>
        Mem2Reg("mem2reg",
                cl::desc("Perform memory to register promotion before CSE."),
                cl::init(false));

static cl::opt<bool>
        NoCSE("no-cse",
              cl::desc("Do not perform CSE Optimization."),
              cl::init(false));

static cl::opt<bool>
        Verbose("verbose",
                    cl::desc("Verbose stats."),
                    cl::init(false));

static cl::opt<bool>
        NoCheck("no",
                cl::desc("Do not check for valid IR."),
                cl::init(false));

int main(int argc, char **argv) {
    // Parse command line arguments
    cl::ParseCommandLineOptions(argc, argv, "llvm system compiler\n");

    // Handle creating output files and shutting down properly
    llvm_shutdown_obj Y;  // Call llvm_shutdown() on exit.
    LLVMContext Context;

    // LLVM idiom for constructing output file.
    std::unique_ptr<ToolOutputFile> Out;
    std::string ErrorInfo;
    std::error_code EC;
    Out.reset(new ToolOutputFile(OutputFilename.c_str(), EC,
                                 sys::fs::OF_None));

    EnableStatistics();

    // Read in module
    SMDiagnostic Err;
    std::unique_ptr<Module> M;
    M = parseIRFile(InputFilename, Err, Context);

    // If errors, fail
    if (M.get() == 0)
    {
        Err.print(argv[0], errs());
        return 1;
    }

    // If requested, do some early optimizations
    if (Mem2Reg)
    {
        legacy::PassManager Passes;
        Passes.add(createPromoteMemoryToRegisterPass());
        Passes.run(*M.get());
    }

    if (!NoCSE) {
        CommonSubexpressionElimination(M.get());
    }

    // Collect statistics on Module
    summarize(M.get());
    print_csv_file(OutputFilename);

    if (Verbose)
        PrintStatistics(errs());

    // Verify integrity of Module, do this by default
    if (!NoCheck)
    {
        legacy::PassManager Passes;
        Passes.add(createVerifierPass());
        Passes.run(*M.get());
    }

    // Write final bitcode
    WriteBitcodeToFile(*M.get(), Out->os());
    Out->keep();

    return 0;
}

static llvm::Statistic nFunctions = {"", "Functions", "number of functions"};
static llvm::Statistic nInstructions = {"", "Instructions", "number of instructions"};
static llvm::Statistic nLoads = {"", "Loads", "number of loads"};
static llvm::Statistic nStores = {"", "Stores", "number of stores"};

static void summarize(Module *M) {
    for (auto i = M->begin(); i != M->end(); i++) {
        if (i->begin() != i->end()) {
            nFunctions++;
        }

        for (auto j = i->begin(); j != i->end(); j++) {
            for (auto k = j->begin(); k != j->end(); k++) {
                Instruction &I = *k;
                nInstructions++;
                if (isa<LoadInst>(&I)) {
                    nLoads++;
                } else if (isa<StoreInst>(&I)) {
                    nStores++;
                }
            }
        }
    }
}

static void print_csv_file(std::string outputfile)
{
    std::ofstream stats(outputfile + ".stats");
    auto a = GetStatistics();
    for (auto p : a) {
        stats << p.first.str() << "," << p.second << std::endl;
    }
    stats.close();
}

static llvm::Statistic CSEDead = {"", "CSEDead", "CSE found dead instructions"};
static llvm::Statistic CSEElim = {"", "CSEElim", "CSE redundant instructions"};
static llvm::Statistic CSESimplify = {"", "CSESimplify", "CSE simplified instructions"};
static llvm::Statistic CSELdElim = {"", "CSELdElim", "CSE redundant loads"};
static llvm::Statistic CSEStore2Load = {"", "CSEStore2Load", "CSE forwarded store to load"};
static llvm::Statistic CSEStElim = {"", "CSEStElim", "CSE redundant stores"};

// Function to determine if an instruction is dead (i.e., its result is not used)
bool isDead(Instruction *InstructionPointer) 
{
    // Get the opcode of the instruction
    int opcode = InstructionPointer->getOpcode();
    
    // Switch statement to handle different opcodes
    switch(opcode)
    {
        // List of opcodes where the instruction's result might be used
        case Instruction::Add:
        case Instruction::FNeg:
        case Instruction::FAdd: 	
        case Instruction::Sub:
        case Instruction::FSub: 	
        case Instruction::Mul:
        case Instruction::FMul: 	
        case Instruction::UDiv:	
        case Instruction::SDiv:	
        case Instruction::FDiv:	
        case Instruction::URem: 	
        case Instruction::SRem: 	
        case Instruction::FRem:
        case Instruction::Shl: 	
        case Instruction::LShr: 	
        case Instruction::AShr: 	
        case Instruction::And: 	
        case Instruction::Or: 	
        case Instruction::Xor:
        case Instruction::GetElementPtr: 	
        case Instruction::Trunc: 	
        case Instruction::ZExt: 	
        case Instruction::SExt: 	
        case Instruction::FPToUI: 	
        case Instruction::FPToSI: 	
        case Instruction::UIToFP: 	
        case Instruction::SIToFP: 	
        case Instruction::FPTrunc: 	
        case Instruction::FPExt: 	
        case Instruction::PtrToInt: 	
        case Instruction::IntToPtr: 	
        case Instruction::BitCast: 	
        case Instruction::AddrSpaceCast: 	
        case Instruction::ICmp: 	
        case Instruction::FCmp: 	
        case Instruction::ExtractElement: 	
        case Instruction::InsertElement: 	
        case Instruction::ShuffleVector: 	
        case Instruction::ExtractValue: 	
        case Instruction::InsertValue:
        case Instruction::PHI: 
        case Instruction::Select: 

            // Check if the instruction's result is used
            if ( InstructionPointer->use_begin() == InstructionPointer->use_end() )
                return true; // If not used, the instruction is considered dead
            break;

        default: 
            // Any other opcode is not considered dead
	        return false;
    }
     
    return false; // Default return value if the opcode is not in the list
}


bool redundant_instruction(Instruction *InstructionPointerInitial, Instruction *InstructionPointerFinal)
{
    bool CompareOkayFlag = false;
    if(LLVMGetInstructionOpcode(wrap(InstructionPointerInitial)) ==  LLVMGetInstructionOpcode(wrap(InstructionPointerFinal))) // same opcode
    {
        if(LLVMTypeOf(wrap(InstructionPointerInitial)) == LLVMTypeOf(wrap(InstructionPointerFinal))) // same type of instruction
        {
            if(LLVMGetNumOperands(wrap(InstructionPointerInitial))== LLVMGetNumOperands(wrap(InstructionPointerFinal))) //same number of operands
            {
                for (int OperandsIterator = 0; OperandsIterator < LLVMGetNumOperands(wrap(InstructionPointerInitial)); OperandsIterator++)
                {
                    if (OperandsIterator == (LLVMGetNumOperands(wrap(InstructionPointerInitial)) - 1))
                    {
                        if (((LLVMGetOperand(wrap(InstructionPointerInitial), OperandsIterator)) == LLVMGetOperand(wrap(InstructionPointerFinal), OperandsIterator)))
                            CompareOkayFlag = true;         // if all operands are the same, compare check passed.
                        else
                            CompareOkayFlag = false;
                    }
                    else
                    {
                        if (!((LLVMGetOperand(wrap(InstructionPointerInitial), OperandsIterator)) == LLVMGetOperand(wrap(InstructionPointerFinal), OperandsIterator)))
                        {
                            CompareOkayFlag = false;
                            break; 
                        }
                    }   
                }
            }
        }
    }
    
    // Check if comparison is okay
    if (CompareOkayFlag)
    {
        // Switch based on instruction opcode
        switch (InstructionPointerInitial->getOpcode()) 
        {
            // For these instructions, return false
            case Instruction::Load:
            case Instruction::Store:
            case Instruction::Call:
            case Instruction::CallBr:
            case Instruction::Alloca:
            case Instruction::VAArg:
            case Instruction::ExtractValue:
            case Instruction::InsertValue:
                return false;
            case Instruction::FCmp:
            {
                if(LLVMGetFCmpPredicate(wrap(InstructionPointerInitial)) != LLVMGetFCmpPredicate(wrap(InstructionPointerFinal)))
                    return false;
                else if (InstructionPointerInitial->isTerminator()) 
                    return false; 
                else
                    return true;
            }
            case Instruction::ICmp:
            {
                if(LLVMGetICmpPredicate(wrap(InstructionPointerInitial)) != LLVMGetICmpPredicate(wrap(InstructionPointerFinal)))
                    return false;
                else if (InstructionPointerInitial->isTerminator()) 
                    return false; 
                else
                    return true;
            }
            default:
            {
                if (InstructionPointerInitial->isTerminator()) 
                    return false; 
                else
                    return true;
            }
        }
    }

	return false;
}

// Perform common subexpression elimination using dominator tree
void CseDominatorTree(BasicBlock::iterator &InstructionIteratorCounter, Instruction *InstructionPointer, BasicBlock *BasicBlockPointer, DominatorTreeBase<BasicBlock, false> *DominatorTreePointer)
{
    // Check if node exists in the dominator tree
    if (DomTreeNodeBase<BasicBlock> *NodePointer = DominatorTreePointer->getNode(&*BasicBlockPointer))
    { 
        // Iterate over dominator tree nodes
        for (DomTreeNodeBase<BasicBlock> ** DomTreeNodeIterator = NodePointer->begin(); DomTreeNodeIterator!=NodePointer->end(); DomTreeNodeIterator++)
        {
            // Iterate over instructions in the dominator tree node's basic block
            for (BasicBlock::iterator InstructionIteratorCounterCSE = (*DomTreeNodeIterator)->getBlock()->begin(); InstructionIteratorCounterCSE != (*DomTreeNodeIterator)->getBlock()->end();)
            {
                Instruction *InstructionPointerCSE = &*InstructionIteratorCounterCSE;          
                // Check if instruction is redundant
                if (redundant_instruction(InstructionPointer, InstructionPointerCSE))
                {
                    if (InstructionIteratorCounterCSE == (*DomTreeNodeIterator)->getBlock()->begin())
                        InstructionIteratorCounter++;

                    CSEElim += 1;
                    InstructionPointerCSE->replaceAllUsesWith(InstructionPointer);
                    InstructionIteratorCounterCSE = InstructionPointerCSE->eraseFromParent();
                }
                else
                {
                    InstructionIteratorCounterCSE++;
                }
            }
            // Recursively call CseDominatorTree for child nodes
            if (DomTreeNodeBase<BasicBlock> *NodePointerChild = DominatorTreePointer->getNode(&*(*DomTreeNodeIterator)->getBlock()))
            {
                CseDominatorTree(InstructionIteratorCounter, InstructionPointer, (*DomTreeNodeIterator)->getBlock(), DominatorTreePointer);
            }
        }
    }
}

static void CommonSubexpressionElimination(Module *ModulePointer)    // Implement this function
{
    // Looping over the functions
    for (Module::iterator FunctionIteratorCounter = ModulePointer->begin(); FunctionIteratorCounter != ModulePointer->end(); FunctionIteratorCounter++)
    {
        Function *FunctionPointer = &*FunctionIteratorCounter;

        // Looping over all the basic blocks in the function, F
        for (Function::iterator BasicBlockIteratorCounter = FunctionPointer->begin(); BasicBlockIteratorCounter != FunctionPointer->end(); BasicBlockIteratorCounter++)
        {
            BasicBlock *BasicBlockPointer = &*BasicBlockIteratorCounter;

            // Looping over all instructions in a basic block
            for (BasicBlock::iterator InstructionIteratorCounter = BasicBlockPointer->begin(); InstructionIteratorCounter != BasicBlockPointer->end();)
            {
                Instruction *InstructionPointer = &*InstructionIteratorCounter;

                //Optimization 0: Eliminate dead instructions
                if (isDead(InstructionPointer)) 
                {
                    // Increment counter for Dead instructions
                    CSEDead += 1;
                    //errs() << "CSEDead " << CSEDead  << "\n";
                    InstructionIteratorCounter = InstructionPointer->eraseFromParent();
                }
                else
                {
                    //Optimization 1: Simplify Instructions
                    if(simplifyInstruction(&*InstructionPointer, ModulePointer->getDataLayout())!= NULL)
                    {
                        // Increment counter for simplified instructions
                        CSESimplify += 1;
                        Value *SimplifyInstructionPointer = simplifyInstruction(&*InstructionPointer, ModulePointer->getDataLayout());    
                        //errs() << "Found a simplify instruction (Before) "; InstructionPointer->print(errs(),true); errs()  << "\n";
                        //errs() << "Found a simplify instruction (After) "; SimplifyInstructionPointer->print(errs(),true); errs()  << "\n";
                        //errs() << "CSESimplify " << CSESimplify  << "\n";
                        InstructionPointer->replaceAllUsesWith(SimplifyInstructionPointer);
                        //InstructionIteratorCounter = InstructionPointer->eraseFromParent();
                    }
                    else
                    {
                        //Common Subexpression Elimination
                        InstructionIteratorCounter++;

                        for (BasicBlock::iterator InstructionIteratorCounterCSE = InstructionIteratorCounter; InstructionIteratorCounterCSE != BasicBlockPointer->end();)
                        {
                            Instruction *InstructionPointerCSE = &*InstructionIteratorCounterCSE;
                            if (redundant_instruction(InstructionPointer, InstructionPointerCSE))
                            {
                                if (InstructionIteratorCounterCSE == InstructionIteratorCounter)
                                    InstructionIteratorCounter++;

                                CSEElim += 1;
                                InstructionPointerCSE->replaceAllUsesWith(InstructionPointer);
                                InstructionIteratorCounterCSE = InstructionPointerCSE->eraseFromParent();
                            }
                            else
                            {
                                InstructionIteratorCounterCSE ++;
                            }
                        }

                        // Recalculate the dominator tree
                        DominatorTreeBase<BasicBlock, false> *DominatorTreePointer = nullptr;
                        DominatorTreePointer = new DominatorTreeBase<BasicBlock, false>();
                        DominatorTreePointer->recalculate(*FunctionIteratorCounter);

                        // Perform common subexpression elimination using the dominator tree
                        CseDominatorTree(InstructionIteratorCounter, InstructionPointer, BasicBlockPointer, DominatorTreePointer);

                        //Optimization 2: Eliminate Redundant Loads 
                        if (InstructionPointer->getOpcode() == Instruction::Load)
                        {
                            for (BasicBlock::iterator InstructionIteratorCounterLoad = InstructionIteratorCounter; InstructionIteratorCounterLoad != BasicBlockPointer->end();)
                            {
                                Instruction *InstructionPointerLoadCheck = &*InstructionIteratorCounterLoad;
                                if (InstructionPointerLoadCheck->getOpcode() == Instruction::Load)
                                {
                                    LoadInst *LoadInstPointer = dyn_cast<LoadInst>(InstructionPointerLoadCheck);
                                    if ((!(LoadInstPointer && LoadInstPointer->isVolatile())) && (InstructionPointer->getOperand(0) == InstructionPointerLoadCheck->getOperand(0)) && (InstructionPointer->getType() == InstructionPointerLoadCheck->getType()))
                                    {
                                        if (InstructionIteratorCounterLoad == InstructionIteratorCounter)
                                            InstructionIteratorCounter++;

                                        InstructionPointerLoadCheck->replaceAllUsesWith(InstructionPointer);
                                        InstructionIteratorCounterLoad = InstructionPointerLoadCheck->eraseFromParent();
                                        CSELdElim += 1;
                                    }
                                    else
                                        InstructionIteratorCounterLoad ++;                                      
                                }
                                else if (InstructionPointerLoadCheck->getOpcode() == Instruction::Store)
                                    break;
                                else
                                    InstructionIteratorCounterLoad ++;
                            }
                        }

                        //Optimization 3: Eliminate Redundant Stores (and Loads)
                        if (InstructionPointer->getOpcode() == Instruction::Store)
                        {
                            for (BasicBlock::iterator InstructionIteratorCounterStore = InstructionIteratorCounter; InstructionIteratorCounterStore != BasicBlockPointer->end();)
                            {
                                Instruction *InstructionPointerStoreCheck = &*InstructionIteratorCounterStore;
                                
                                if (InstructionPointerStoreCheck->getOpcode() == Instruction::Load)
                                {
                                    LoadInst *LoadInstPointer = dyn_cast<LoadInst>(InstructionPointer);
                                    if ((!(LoadInstPointer && LoadInstPointer->isVolatile())) && (InstructionPointer->getOperand(1) == InstructionPointerStoreCheck->getOperand(0)) && (InstructionPointer->getOperand(0)->getType() == InstructionPointerStoreCheck->getType()))
                                    {
                                        if (InstructionIteratorCounterStore == InstructionIteratorCounter)
                                            InstructionIteratorCounter ++;
                                        
                                        InstructionPointerStoreCheck->replaceAllUsesWith(InstructionPointer->getOperand(0));
                                        InstructionIteratorCounterStore = InstructionPointerStoreCheck->eraseFromParent();
                                        CSEStore2Load++;
                                    }
                                    else
                                        break;  //Load Instr With SideEffect
                                }
                                else if (InstructionPointerStoreCheck->getOpcode() == Instruction::Store)
                                {
                                    StoreInst *StoreInstPointer = dyn_cast<StoreInst>(InstructionPointer);
                                    if ((!(StoreInstPointer && StoreInstPointer->isVolatile())) && (InstructionPointer->getOperand(1) == InstructionPointerStoreCheck->getOperand(1)) && (InstructionPointer->getOperand(0)->getType() == InstructionPointerStoreCheck->getOperand(0)->getType()))
                                    {
                                        if (InstructionIteratorCounterStore == InstructionIteratorCounter)
                                            InstructionIteratorCounter ++;
                                        
                                        //InstructionIteratorCounter = InstructionPointer->eraseFromParent();
                                        InstructionPointer->eraseFromParent();
                                        CSEStElim++;    
                                        break;      //move to next Store
                                    }
                                    else
                                        break;   //Store Instr With SideEffect
                                }
                                else
                                {
                                    if (InstructionPointerStoreCheck->getOpcode() == Instruction::Call || InstructionPointerStoreCheck->getOpcode() == Instruction::CallBr)
                                        break;     //Call instr. move to next Store
                                    else
                                        InstructionIteratorCounterStore ++;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

