---
title: CS 381 Programming Language Fundamentals (Summer 2017)
---

<style>
td {
  padding: 0;
  padding-right: 2ex;
  vertical-align: top;
}
</style>

# CS 381: Programming Language Fundamentals (Summer 2017)

-------------  ----------------------------------------------------------------
Instructor:    <span class="my-name">Keeley Abbott</span> (<span class="osu-email"></span>)
TA:            Zhicheng Fu ([fuz@oregonstate.edu](fuz@oregonstate.edu))
Lectures:      MTuWTh, 16:00--16:50, Kelley Engineering Center 1003 ([map](http://oregonstate.edu/campusmap/?locations=870))
Office Hours:  Mon 11:30--12:30 -- Keeley, KEC Atrium
               Tues 15:00--16:00 -- Zhicheng, KEC Atrium
               Wed 10:00--11:00 -- Zhicheng, KEC Atrium
               Thur 14:30--15:30 -- Keeley, KEC Atrium
Piazza:        [CS 381 on Piazza](https://piazza.com/oregonstate/summer2017/cs381/home) (see [note on Piazza](piazza.html))
-------------  ----------------------------------------------------------------

## Course Description and Essentials {#desc}

CS 381, Programming Languages Fundamentals, is a four-credit course for undergraduate students. The course introduces concepts found in a variety of programming languages and exposes students to non-imperative programming paradigms. Topics to be covered include: Haskell, Prolog, syntax, scoping, parameter passing, types, polymorphism, exception handling, semantics.

  * [Course Syllabus](files/syllabus.pdf) -- Includes the course learning objectives and much of the information contained on this page. Note that if the schedule changes during the term, the web page will reflect the revised schedule but the syllabus will not be updated.
  * [Haskell and Prolog Resources](links.html) -- How to get up and running with Haskell and Prolog. Also lists of several tutorials, freely available books, and other resources that you should use to supplement the content in this class.
  * [Community Statement](community.html) -- Every student should feel safe and welcome to contribute in this course. Please read this statement and let's work together to make this a great environment for everyone.
  * [Grading and Homework Policy](policy.html) -- How grades will be computed and course policy on homework, quizzes, and exams.
  * [Use of Piazza](piazza.html)

## Important Dates

There will be no class on the following days:

  * **Tues, July 4** (Independence Day)
  * **Thur, Aug 3** (cancelled)

The following days are currently scheduled for quizzes and exams. I will announce any changes to this schedule both in class and on Piazza:

  * **Wed, July 5** -- Quiz #1
  * **Tue, July 11** -- Quiz #2
  * **Mon, July 17** -- Quiz #3
  * **Thur, July 27** -- Midterm
  * **Tue, Aug 1** -- Quiz #4
  * **Wed, Aug 9** -- Quiz #5
  * **Thur, Aug 17** -- Final

## Slides and Code Examples {#slides}

Slides and code examples from the lectures will be posted below. Slides will normally be posted just before class, and completed files just after. I will continue to update the slides for each stage of the course until we are done with that stage.

<table class="slides">
<tbody>
<tr>
<th class="slides-date"></th>
<th class="slides-title">Slides</th>
<th class="slides-files">Additional Files</th>
</tr>
<tr>
<td class="slides-date">Jun 26</td>
<td class="slides-title">[Course Introduction](lecture_slides/0_introduction.pdf)</td>
<td class="slides-files">[Doctest.hs](code/Doctest.hs)</td>
</tr>
<tr>
<td class="slides-date">Jun 27</td>
<td class="slides-title">[Haskell](lecture_slides/1_haskell.pdf)</td>
<td class="slides-files">[Basics.hs](code/Basics.hs), [InfList.hs](code/InfList.hs)</td>
</tr>
<tr>
<td class="slides-date">Jul 6</td>
<td class="slides-title">[Syntax and Grammars](lecture_slides/2_syntax.pdf)</td>
<td class="slides-files">[StackLang.hs](code/StackLang.hs), [Let.hs](code/Let.hs), [ExprAnnot.hs](code/ExprAnnot.hs), [BoolSyn.hs](code/BoolSyn.hs), [BoolPP.hs](code/BoolPP.hs)</td>
</tr>
<tr>
<td class="slides-date">July 12</td>
<td class="slides-title">[Semantics](lecture_slides/3_semantics.pdf)</td>
<td class="slides-files">[ExprSem.hs](code/ExprSem.hs), [BoolSem.hs](code/BoolSem.hs), [Move.hs](code/Move.hs), [IntBool.hs](code/IntBool.hs), [LetSem.hs](code/LetSem.hs), [RegCalc.hs](code/RegCalc.hs), [PixelS.hs](code/PixelS.hs), [PixelSPP.hs](code/PixelSPP.hs)</td>
</tr>
<tr>
<td class="slides-date">July 19</td>
<td class="slides-title">Interlude: OO vs. FP</td>
<td class="slides-files">[OO-FP.txt](files/OO-FP.txt), [TreeExample.java](code/TreeExample.java), [Tree.hs](code/Tree.hs)</td>
</tr>
<tr>
<td class="slides-date">July 19</td>
<td class="slides-title">[Types](lecture_slides/4_types.pdf)</td>
<td class="slides-files">[IntBoolT.hs](code/IntBoolT.hs), [PairT.hs](code/PairT.hs), [LetT.hs](code/LetT.hs), [StackT.hs](code/StackT.hs)</td>
</tr>
<tr>
<td class="slides-date">July 25</td>
<td class="slides-title">[Scope and Parameter Passing](lecture_slides/5_scopeParameters.pdf)</td>
<td class="slides-files">[Scope.hs](code/Scope.hs)</td>
</tr>
<tr>
<td class="slides-date">Aug 2</td>
<td class="slides-title">[Logic Programming](lecture_slides/6_logicProgramming.pdf)</td>
<td class="slides-files">[hobbits.pl](code/hobbits.pl), [exp.pl](code/exp.pl), [bool.pl](code/bool.pl), [lists.pl](code/lists.pl), [stackLang.pl](code/stackLang.pl), [mapping.pl](code/mapping.pl)</td>
</tr>
</tbody>
</table>

## Homework Assignments {#hw}

Homework Assignments are submitted through [TEACH](http://engr.oregonstate.edu/teach). Log in and click "Submit Assignment" in the navigation bar on the right, located under "Class Tools." You should see a list of currently open submissions.

Note that due to logistical issues **late homework will not be accepted**. Please be sure to submit your assignments on time!

* [Homework #1](homework/hw1.html) -- due: Jul 5, 23:59
* [Homework #2](homework/hw2.html) -- due: Jul 13, 23:59
* [Homework #3](homework/hw3.html) -- due: Jul 24, 23:59
* [Homework #4](homework/hw4.html) -- due: Aug 2, 23:59
* [Homework #5](homework/hw5.html) -- due: Aug 14, 23:59
