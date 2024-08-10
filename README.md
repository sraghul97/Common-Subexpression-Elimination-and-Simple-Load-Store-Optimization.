# Common-Subexpression-Elimination-and-Simple-Load-Store-Optimization.

This repository implements key compiler optimizations using LLVM, focusing on Common Subexpression Elimination (CSE) and basic load-store optimizations.

Objectives:
1. Implement Common Subexpression Elimination (CSE) to enhance code efficiency.
2. Add advanced optimizations for load and store redundancy.
   
Specifications:
Optimization 0: Eliminate Dead Instructions
1. Identify and remove dead instructions during CSE.
2. Track eliminated instructions with the CSEDead counter.

Optimization 1: Simplify Instructions
1. Apply constant folding to simplify instructions using InstructionSimplify.
2. Replace and erase simplified instructions, tracking with CSESimplify.

Common Subexpression Elimination
1. Eliminate literal matches of instructions by comparing with others.
2. Track eliminations using the CSEBasic counter.

Optimization 2: Eliminate Redundant Loads
1. Detect and remove redundant loads in a basic block if there are no intervening stores or calls.
2. Track using the CSERLoad counter.

Optimization 3: Eliminate Redundant Stores
1. Remove earlier stores if subsequent stores target the same address without intervening loads.
2. Track with the CSERStore counter.
