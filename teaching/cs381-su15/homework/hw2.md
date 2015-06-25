---
title: CS 381 -- Homework #2
---

# Homework #2

**Due: Thurs, Jul 2, 3:59pm**

## How to Submit

You should produce a single file, named `HW2.hs`. This file *must compile without errors* in GHCi. Put all non-working parts of your solution in comments! If your file does not compile, **it will not be evaluated**.

You must submit:

1. A digital copy of your file through [TEACH](http://engr.oregonstate.edu/teach). This is due by the date and time specified above.

2. A paper printout of your file in class or during office hours on the due date. *Please double check that your name(s) and OSU ID number(s) are on this printout!*

Submit one solution *per team* (each team can have 1--3 members). Make sure to put the names and OSU ID numbers of each team member in a comment in the submitted file. Submit only **one** digitial file and **one** printout *per team*.

Please preserve the existing `doctest` comments in the template (the lines that begin with `>>>` and have results below them). This will help during grading.

**Late submissions will not be accepted**. Please do not send solutions by email.

**Partial credit**: if you can't solve a problem, you can get partial credit by describing in comments what you attempted to do, where you got stuck, and what you believe your next step might be.

## Description

Template: **[HW2.hs](../code/HW2.hs)**

In this assignment, you will be defining the functions described in comments in the above template. You should download the template and add your definition directly to the file.

In addition to the one sentence English description of each function, the file contains `doctest` comments that illustrate the intended behavior of each function on a few examples. You can use these examples as unit tests using the `doctest` tool illiustrated in class. Feel free to add more examples to improve your test coverage.

Instructions for installing `doctest` are located on [the course web page](../index.html#install).

In the first part of the assignment, you will define several functions for manipulating a simple unary representation of [natural numbers](https://en.wikipedia.org/wiki/Natural_number). For the purposes of this assignment, you should implement the required mathematical operations by pattern matching on and manipulating the unary representation directly. That is, you should *not* implement them by first converting the arguments to integers, doing the mathematical operation on the integer, and then converting back to the unary representation.

In the second part of the assignment, you will implement two functions associated with lists. The types of these functions are already provided, so you are only required to implement the functions. You may find some of the existing list functions available in the [Prelude](http://hackage.haskell.org/package/base-4.8.0.0/docs/Prelude.html) helpful for this part.

### Tasks

1. Write the appropriate type of the function -- where applicable.
2. Implement the function.

<br>

[Back to course home page](../index.html)
