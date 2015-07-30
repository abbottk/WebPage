---
title: CS 381 -- Homework #5
---

<style>
.grammar td {
padding-left: 1ex;
padding-right: 1ex;
}
.center table {
margin-left: auto;
margin-right: auto;
}
</style>

# Homework #5

**Due: Thurs, Aug 6, 3:59pm**

<div class="bold-code">

## How to Submit

You should produce a single file, named `HW5.<your-username>.hs`. This file *must compile without errors* in GHCi. Put all non-working parts of your solution in comments! If your file does not compile, **it will not be evaluated**.

You must submit:

1. A digital copy of your file through [TEACH](http://engr.oregonstate.edu/teach). This is due by the date and time specified above.

2. A paper printout of your file in class or during office hours on the due date. *Please double check that your name(s) and OSU ID number(s) are on this printout!*

Submit one solution *per team* (each team can have 1--3 members). Make sure to put the names and OSU ID numbers of each team member in a comment in the submitted file. Submit only **one** digitial file and **one** printout *per team*.

Please preserve the existing `doctest` comments in the template (the lines that begin with `>>>` and have results below them). This will help during grading.

**Late submissions will not be accepted**. Please do not send solutions by email.

**Partial credit**: if you can't solve a problem, you can get partial credit by describing in comments what you attempted to do, where you got stuck, and what you believe your next step might be.

## Description{#description}

Template: **[HW5.hs](../code/HW5.hs)**

### Exercise 1: A Rank-Based Type System for the Stack Language

In this assignment we will be extending the stack language from [Homework #4](homework/hw4.html). The grammar for the language is defined by the following Haskell type definitions.

~~~
type Prog = [Cmd]
data Cmd = Push Int
         | Pop Int
         | Add
         | Mul
         | Dup
         | Inc
         | Swap
~~~

This stack also manipulates an implicit stack of integers. A program is a sequence of commands, where each command modifies the stack (descriptions of the previously defined operations can be found in [Homework #4](homework/hw4.html)).

 * `Pop k` -- removes `k` elements from the stack
 * `Mul` -- multiplies the two topmost values on the stack, popping the arguments and pushing their product
 * `Inc` -- increments the topmost element (e.g. adds one) on the stack

The rank of a stack is given by the number of its elements. The rank of a single stack operation is given by a pair of numbers `(n.m)` where `n` indicates the number of elements the operation takes from the top of the stack and `m` is the number of elements the operation buts onto the stack. The rank for a stack program is defined to be the rank of the stack that would be obtained if the program were run on an empty stack. A *rank error* occurs in a stack program when an operation with rank `(n.m)` is executed on a stack with rank `k < n`. In other words, a rank error indicates a stack underflow.

Use the following types to represent stack and operation ranks.

~~~
type Rank    = Int
type CmdRank = (Int,Int)
~~~

### Tasks

1. Define a function `rankC` that maps each stack operation to its rank.

2. Define an auxiliary function `rankP` that computes the rank of a program. The `Maybe` data type is used to capture rank errors (e.g. a program containing a rank error should be mapped to `Nothing`, whereas a program with no rank error should be wrapped by `Just`). *Hint*: you may need to define an auxiliary function `rank :: Prog -> Rank -> Maybe Rank` and define `rankP` using `rank`.

3. Define a function `semStatTC` for evaluating stack programs that first calls the function `rankP` to check wheter the stack program is type correct and evaluates the program only in that case. For performing the actual evaluation `semStatTC` calls the function `prog`.

### Extra credit

Note that the function `prog` called by `semStatTC` can be simplified (both its type and its definition). In order to get extra credit you must complete **both** of the following:

1. Provide the new type of the function `prog'` and explain why the function can be simplied to have this type (use comments for your explanation).

2. Redefine the `prog'` function using this new type.

### Exercise 2: Runtime Stack

Consider the following block.

~~~
{ int x;
  int y;
  y := 1;
  { int f(int x) {
      if x = 0 then {
         y := 1 }
      else {
         y := f(x - 1) * y + 1 };
      return y;
    }
    x := f(2);
  };
}
~~~

### Tasks

1. Illustrate the computations that take place during the evaluation of this block, that is, draw a sequence of pictures each showing the complete runtime stack with all activation records after each statement or function call.

**Note**: please place the answer to this exercise in comments.

### Exercise 3: Static and Dynamic Scope

Consider the following block (assume call-by-value parameter passing).

~~~
{ int x;
  int y;
  int z;
  x := 3;
  y := 7;
  { int f(int y) { return x * y };
    int y;
    y := 11;
    { int g(int x) { return f(y) };
      { int y;
        y := 13;
        z := g(2);
      };
    };
  };
}
~~~

### Tasks

1. Determine which value will be assigned to `z` in line 12 under *static scoping*.

2. Determine which value will be assigned to `z` in line 12 under *dynamic scoping*.

You may want to draw the runtime stack for different times of the execution, though this is not required for the assignment.

**Note**: please place the answers to this exercise in comments.

<br>

[Back to course home page](../index.html)
