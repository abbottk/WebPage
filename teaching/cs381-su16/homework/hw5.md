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

**Due: Tue, Aug 9, 15:59**

<div class="bold-code">

## How to Submit

You should produce a single file, named `<your-username>.pl`. This file *must load without errors* in SWI-Prolog. Put all non-working parts of your solution in comments! If your file does not compile, **it will not be evaluated**.

You must submit:

1. A digital copy of your file through [TEACH](http://engr.oregonstate.edu/teach). This is due by the date and time specified above.

2. A paper printout of your file in class or during office hours on the due date. *Please double check that your name(s) and OSU ID are on this printout!*

Submit one solution *per team* (each team can have 1--3 members). Make sure to put the names and OSU ID numbers of each team member in a comment in the submitted file. Submit only **one** digitial file and **one** printout *per team*.

**Late submissions will not be accepted**. Please do not send solutions by email.

**Partial credit:** If you can't solve a problem, you can get partial credit by describing in comments what you tried and where you got stuck.


## Description

Template: **[hw5.pl](../code/hw5.pl)**


## Part 1. Family relations

In this part, you will define several Prolog predicates that describe family relationships. Your building blocks will be four basic predicates: `female/1`, `male/1`, `married/2`, and `parent/2`. The provided template uses these basic predicates to encode the following family tree, which you'll use for testing your own definitions.

<div style="text-align:center">
  <img src="../images/Griffins.png" alt="Griffin's Family Tree">
</div>

For each predicate, I have provided some example queries and the unifiers (solutions) that should be produced, or `false` if no unifier exists. It is not important what order the unifiers are produced in, and it is OK if a unifier is produced more than once. However, for all queries, *all valid unifiers* should eventually be produced, *no invalid unifiers* should be produced, and the query should not induce an infinite loop.

 1. Define a predicate `child/2` that inverts the parent relationship.

        ?- child(meg,X).
        X = lois ;
        X = peter .

        ?- child(X,lois).
        X = chris ;
        X = meg ;
        X = stewie .

 2. Define two predicates `isMother/1` and `isFather/1`.

        ?- isMother(lois).
        true .

        ?- isMother(meg).
        false .

        ?- isFather(X).
        X = carter ;
        X = frances ;
        X = mickey ;
        X = peter .

 3. Define a predicate `grandparent/2`.

        ?- grandparent(carter,X).
        X = chris ;
        X = meg ;
        X = stewie ;
        X = baby .

        ?- grandparent(X,baby).
        X = babs ;
        X = carter .

 4. Define a predicate `sibling/2`. Siblings share at least one parent.

        ?- sibling(lois,X).
        X = carol ;
        X = patrick .

        ?- sibling(X,stewie).
        X = chris ;
        X = meg .

 5. Define two predicates `brother/2` and `sister/2`.

        ?- brother(chris,X).
        X = meg ;
        X = stewie .

        ?- brother(X,chris).
        X = stewie .

        ?- sister(meg,X).
        X = chris ;
        X = stewie .

        ?- sister(X,meg).
        false .

 6. Define a predicate `siblingInLaw/2`. A sibling-in-law is either married to
    a sibling or the sibling of a spouse.

        ?- siblingInLaw(carol,X).
        X = peter .

        ?- siblingInLaw(patrick,X).
        X = adam ;
        X = peter .

        ?- siblingInLaw(X,peter).
        X = carol ;
        X = patrick .

<!--
 7. Define two predicates `brotherInLaw/2` and `sisterInLaw/2`.

        ?- sisterInLaw(X,adam).
        X = lois .

        ?- brotherInLaw(home,X).
        X = carol ;
        X = patrick .
-->

 7. Define two predicates `aunt/2` and `uncle/2`. Your definitions of these
    predicates should include aunts and uncles by marriage.

        ?- aunt(carol,X).
        X = chris ;
        X = meg ;
        X = stewie .

        ?- uncle(X,baby).
        X = patrick ;
        X = peter .

 8. Define the predicate `cousin/2`.

        ?- cousin(meg,X).
        X = baby .

        ?- cousin(X,baby).
        X = chris ;
        X = meg ;
        X = stewie .

 9. Define the predicate `ancestor/2`.

        ?- ancestor(carter,X).
        X = carol ;
        X = lois ;
        X = patrick ;
        X = chris ;
        X = meg ;
        X = stewie ;
        X = baby .

        ?- ancestor(X,stewie).
        X = lois ;
        X = peter ;
        X = babs ;
        X = carter ;
        X = mickey ;
        X = thelma .

**Extra Credit:** Define the predicate `related/2`. This predicate should be true for any two people connected by a family tree, no matter how distantly. Therefore, a query such as `related(peter,X)` should enumerate every other person in the tree.

The challenge in this problem is structuring your predicate in a way that enumerates all members of the tree and doesn't infinitely loop. You may want to use a helper predicate.


## Part 2. List manipulation

 1. Define a predicate `rdup(L,M)` that removes adjacent duplicate elements from the list `L`. The resulting list should be bound to `M`. It's OK if this function loops on queries where `L` is not provided.

        ?- rdup([a,a,a,b,c,b,b,c,c,c],X).
        X = [a,b,c,b,c] .

        ?- rdup([1,2,2,2,[2,2],3,3],X).
        X = [1,2,[2,2],3] .



</div>

<br>

[Back to course home page](../index.html)
