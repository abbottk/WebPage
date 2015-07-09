---
title: CS 381 -- Homework #4
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

# Homework #4

**Due: Thurs, Jul 16, 3:59pm**

<div class="bold-code">

## How to Submit

You should produce a single file, named `HW4.<your-username>.hs`. This file *must compile without errors* in GHCi. Put all non-working parts of your solution in comments! If your file does not compile, **it will not be evaluated**.

You must submit:

1. A digital copy of your file through [TEACH](http://engr.oregonstate.edu/teach). This is due by the date and time specified above.

2. A paper printout of your file in class or during office hours on the due date. *Please double check that your name(s) and OSU ID number(s) are on this printout!*

Submit one solution *per team* (each team can have 1--3 members). Make sure to put the names and OSU ID numbers of each team member in a comment in the submitted file. Submit only **one** digitial file and **one** printout *per team*.

Please preserve the existing `doctest` comments in the template (the lines that begin with `>>>` and have results below them). This will help during grading.

**Late submissions will not be accepted**. Please do not send solutions by email.

**Partial credit**: if you can't solve a problem, you can get partial credit by describing in comments what you attempted to do, where you got stuck, and what you believe your next step might be.

## Description

Template: **[HW4.hs](../code/HW4.hs)**{#template}

### Exercise 1: A Stack Language{#exercise1}

Consider the stack language *s* defined by the following grammar.

<div class="center grammar">
------- -----  ---------------------------------------------------------------
    *s*  ::=   *c*   |   *c*; *s*
 
    *c*  ::=   push *int*   |   pop   |   add   |   mult   |   dup   |   swap
------- -----  ---------------------------------------------------------------
</div>

In this assignment you will be implementing a stack language. The grammar for the language is defined by the following Haskell type definitions.

~~~
type Prog = [Cmd]
data Cmd = Push Int
         | Pop
         | Add
         | Mult
         | Dup
         | Swap
~~~

A program in this language manipulates an implicit stack of integers. A program is a sequence of commands, where each command modifies the stack.

 * `Push i` -- pushes the integer `i` onto the stack
 * `Pop` -- removes the topmost value from the stack
 * `Add` -- adds the two topmost values on the stack, popping the arguments and pushing their sum
 * `Mult` -- multiples the two topmost values on the stack, popping the arguments and pushing their prodcut
 * `Dup` -- makes a copy of the topmost value on the stack, and pushes the copy
 * `Swap` -- swaps the order of the two topmost values on the stack

You can also look at the `doctest` comments in the template to see examples of the effects these commands have on the stack.

Integer stacks should be represented by the type `[Int]`, that is lists of integers. Your program should contain and use the following definition.

~~~
type Stack = [Int]
~~~

### Tasks

1. Define the semantics for the stack language as a Haskell function `sem` that yields the semantics of a program. Please note that the semantic domain has to be defined as a function domain (since the meaning of a stack program is a transformation of stacks) *and* as an error domain (since operations can fail). Therefore, `sem` has to have the following type -- where **you have to find an appropriate type definition to replace** `D`.

>~~~
>sem :: Prog -> D
>~~~

2. Define an auxiliary function `semCmd` for the semantics of individual operations, which has the following type.

>~~~
>semCmd :: Cmd -> D
>~~~

### Exercise 2: Extending the Stack Language by Macros

Suppose we want to add a simple macro facility to the stack language that allows us to define parameterless macros like `sqr = dup; mult`. The definition *c* would change as follows.

--- -----  -----------------------------------------------------------------------------------------------------------
*c*  ::=   push *int*   |   pop   |   add   |   mult   |   dup   |   swap   |   def *string* (*s*)   |   call *string*
 
--- -----  -----------------------------------------------------------------------------------------------------------

The additional commands modify the stack in the following ways.

 * `Dup n s` -- defines a macro named `n` that is available in the rest of the program (when called, it executes the command stack `s`)
 * `Call n` -- calls the macro named `n` defined earlier in the program (if `n` is not defined `Call` yields an error)

### Tasks

1. Extend the abstract syntax to represent macro definitions and calls, that is give the corresponding Haskell data definition change for `Cmd`.

2. Define a new `type State` to represent the state for the extended language. This new state includes the macro definitions and the stack. Please note that a macro definition can be represented by a pair whose first component is the macro name and the second component is the sequence of commands -- multiple macro definitions can be stored in a list having the following type.

>~~~
>type Macro = [(String,Prog)]
>~~~

3. Define the semantics for the extended language as a function `sem2`.

4. As in [Exercise 1](#exercise1), define an auxiliary function `semCmd2` for the semantics of indifidual operations.

### Exercise 3: MiniLogo

Consider the simplified version of MiniLogo (without macros), defined by the following abstract syntax. **To test your semantics you can use the `ppLines` function defined in** [HW4.hs](#template).

~~~
data Cmd = Pen Mode
         | Move Int Int
         | Seq Cmd Cmd

data Mode = Up | Down
~~~

The semantics of a MiniLogo program is ultimately a set of drawn lines. However, for the definition of the semantics a "drawing state" must be maintained that keeps track of the current position of the pen and the pen's mode (`Up` or `Down`). This state should be represented by values of the following type.

~~~
type State = (Mode,Int,Int)
~~~

The semantic domain representing a set of drawn lines is represented by the type `Lines`.

~~~
type Line  = (Int,Int,Int,Int)
type Lines = [Line]
~~~

### Tasks

1. Define the semantics of MiniLogo by giving two function definitions. First define a function `semS` that has the following type, which defines for each `Cmd` how it modifies the current drawing state -- as well as which lines are produced.

>~~~
>semS :: Cmd -> State -> (State,Lines)
>~~~

2. Define the semantic function `sem'`, which calls `semS`. The initial state is defined as having the pen `Up` and the current drawing position at `(0,0)`.

>~~~
>sem' :: Cmd -> Lines
>~~~

<br>

[Back to course home page](../index.html)
