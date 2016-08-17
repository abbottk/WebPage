---
title: CS 381 -- Homework #3
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

# Homework #3

**Due: Tues, Jul 19, 15:59**

<div class="bold-code">

## How to Submit

You should produce a single file, named `HW3.<your-username>.hs`. This file *must compile without errors* in GHCi. Put all non-working parts of your solution in comments! If your file does not compile, **it will not be evaluated**.

You must submit:

1. A digital copy of your file through [TEACH](http://engr.oregonstate.edu/teach). This is due by the date and time specified above.

2. A paper printout of your file in class or during office hours on the due date. *Please double check that your name(s) and OSU ID number(s) are on this printout!*

Submit one solution *per team* (each team can have 1--3 members). Make sure to put the names and OSU ID numbers of each team member in a comment in the submitted file. Submit only **one** digitial file and **one** printout *per team*.

Please preserve the existing `doctest` comments in the template (the lines that begin with `>>>` and have results below them). This will help during grading.

**Late submissions will not be accepted**. Please do not send solutions by email.

**Partial credit**: if you can't solve a problem, you can get partial credit by describing in comments what you attempted to do, where you got stuck, and what you believe your next step might be.

## Description{#description}

Template: **[HW3.hs](../code/HW3.hs)**

### Exercise 1: A Stack Language{#exercise1}

In this assignment you will be implementing a stack language. The grammar for the language is defined by the following Haskell type definitions.

~~~
type Prog = [Cmd]
data Cmd = Push Int
         | Pop
         | Add
         | Dup
         | Swap
~~~

A program in this language manipulates an implicit stack of integers. A program is a sequence of commands, where each command modifies the stack.

 * `Push i` -- pushes the integer `i` onto the stack
 * `Pop` -- removes the topmost value from the stack
 * `Add` -- adds the two topmost values on the stack, popping the arguments and pushing their sum
 * `Dup` -- makes a copy of the topmost value on the stack, and pushes the copy
 * `Swap` -- swaps the order of the two topmost values on the stack

You can also look at the `doctest` comments in the template to see examples of the effects these commands have on the stack.

Integer stacks should be represented by the type `[Int]`, that is lists of integers. Your program should contain and use the following definition.

~~~
type Stack = [Int]
~~~

### Tasks

1. Define the semantic function for the stack language as a Haskell function `prog` that yields the semantics of a program. Please note that the semantic domain has to be defined as a function domain (since the meaning of a stack program is a transformation of stacks) *and* as an error domain (since operations can fail).

2. Define an auxiliary function `cmd` for the semantics of a command.

3. Define a convenience function `run` for executing a program on an initially empty stack.

I have omitted the type definitions for each of these functions to encourage you to think closely about the semantic domains. Note that you must manage both an implicit state (the stack) and handle errors in case there are insufficient arguments on the stack to execute a command.

However, you can also easily reverse engineer the types of these functions by examining the `doctest` comments. Make sure you start by writing the type of each function.

### Exercise 2: Extending the Stack Language by Macros

In this part you will extend the stack language with simple macro capabilities. In the template, I have already extended the syntax for you.

~~~
-- | A macro name.
type Name = String

-- | Extended version of Prog that supports macros.
type XProg = [XCmd]

-- | Extended version of Cmd that supports macros.
data XCmd = Define Name XProg
          | Call Name
          | Basic Cmd
~~~

An extended program of type `XProg` is just a list of extended commands of type `XCmd`. The extention adds two new commands:

 * `Define m p` -- defines a macro named `m` that when called will execute `p`
 * `Call n` -- invokes the macro named `m`

The third constructor, `Basic`, is used to include the commands from the original stack language in the extended language. For example, a `Push 3` command is now represented as `Basic (Push 3)`. Some aliases are defined in the template to make working with basic commands in the extended language a bit easier. Using these, you can write simply `push 3` (note the lowercase “p”).

### Tasks

1. Define the semantic function for the extended stack language as a Haskell function `xprog` that yields the semantics of an extended program with the following type.

>~~~
>xprog :: XProg -> State -> Maybe State
>~~~

2. Define the semantic function for the extended stack language as a Haskell function `xcmd` that wields the semantics of an extended command with the following type.

>~~~
>xcmd :: XCmd -> State -> Maybe State
>~~~

3. Define a convenience function `xrun` for executing an extended program on an initially empty stack with the following type.

>~~~
>xrun :: XProg -> Maybe Stack
>~~~

I have provided the types of these functions in the template. Note that the program state now consists of: (1) the stack and (2) a list of macro definitions. The `Define` construct should add to the list of definitions and the `Call` construct should lookup definitions in this list. The function `lookup` in the Haskell Prelude will be useful here.

As always, you’re encouraged to add more test cases to improve your test coverage. It will also help your understanding of the homework assignment (and be good practice for the midterm) to try writing and running some of your own stack language programs.

### Exercise 3: MiniLogo

Consider the simplified version of MiniLogo (without macros), defined by the following abstract syntax. **To test your semantics you can use the `ppLines` function defined in HW3.hs under the [description](#description)**.

~~~
data Cmd' = Pen Mode
          | Move Int Int
          | Seq Cmd' Cmd'

data Mode = Up | Down
~~~

The semantics of a MiniLogo program is ultimately a set of drawn lines. However, for the definition of the semantics a "drawing state" must be maintained that keeps track of the current position of the pen and the pen's mode (`Up` or `Down`). This state should be represented by values of the following type.

~~~
type State' = (Mode,Int,Int)
~~~

The semantic domain representing a set of drawn lines is represented by the type `Lines`.

~~~
type Line  = (Int,Int,Int,Int)
type Lines = [Line]
~~~

### Tasks

1. Define the semantics of MiniLogo by giving two function definitions. First define a function `semS` that has the following type, which defines for each `Cmd` how it modifies the current drawing state -- as well as which lines are produced.

>~~~
>semS :: Cmd' -> State' -> (State',Lines)
>~~~

2. Define the semantic function `sem'`, which calls `semS`. The initial state is defined as having the pen `Up` and the current drawing position at `(0,0)`.

>~~~
>sem' :: Cmd' -> Lines
>~~~

<br>

[Back to course home page](../index.html)
