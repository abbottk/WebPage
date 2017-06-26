# Links and Useful Resources {#links}

There is no textbook for this course. However, there are several resources online which you may find useful.

## Haskell

Throughout most of the course, we will use the functional programming language [Haskell](https://www.haskell.org/). In particular, we will use Haskell as a *metalanguage* for explaining general programming language concepts. It is therefore absolutely *essential* that you develop your Haskell programming skills!

In addition to the graded homework assignments and the ungraded exercises provided during class, I strongly recommend that you consult another Haskell resource and write Haskell programs outside of class. The following resources should provide several options.

### Running Haskell Code {#install}

  * [Haskell Compiler and base libraries](https://www.haskell.org/platform/) -- The easiest way to start using Haskell. I will assume you have this installed!

  * [Hackage](https://hackage.haskell.org/) -- The central package archive for the Haskell community. There are lots of useful libraries here. Install them using the cabal tool, which comes with the Haskell Platform. First, run the following command to download the list of packages on Hackage.

>>`cabal update`

>Then you can install new packages by running the following command.

>>`cabal install [package-name]`

  * [How to cabal install](https://www.fpcomplete.com/user/simonmichael/how-to-cabal-install) -- A longer tutorial about installing packages from Hackage, in case you run into problems.

  * [Doctest](https://hackage.haskell.org/package/doctest) -- A useful tool for running examples in comments as unit tests. We’ll use this occasionally in Homework assignments. You can install `doctest` using `cabal install doctest`, as described above.

    You will probably also need to add the installation directory to your `$$PATH`. Here are my best guesses as to where that will be:

    * Linux: `~/.cabal/bin`
    * Mac: `~/Library/Haskell/bin`
    * Windows: `C:\Program Files\Haskell\bin`

### Haskell Tutorials and Reference Manuals {#tutorials}

  * [Learn You a Haskell for Great Good!](http://learnyouahaskell.com/) -- This is a great, fun tutorial that starts from the very beginning. I recommend that if you are completely new to functional programming, you read and work through this tutorial.

  * [Haskell: The Confusing Parts](http://echo.rsmw.net/n00bfaq.html) -- An FAQ especially for folks coming to Haskell from a C/Java background, which I guess is most of the people in this class.

  * [Real World Haskell](http://book.realworldhaskell.org/) -- O’Reilly’s book-length introduction to Haskell focusing on practical applications. Available for free online.

  * [A Gentle Intrduction to Haskell](http://www.haskell.org/tutorial/) -- Famous for being not-so-gentle, but a really great resource for refining your understanding of Haskell, once you get the basics down.

  * [Haskell 2010 Language Report](https://www.haskell.org/onlinereport/haskell2010/) -- The latest version of the definitive Haskell reference manual.

### Haskell Style {#style}

  * The Haskell wiki contains several pages concerned with style. Start with the general [programming guidelines](http://www.haskell.org/haskellwiki/Programming_guidelines). Answers to more specific questions can be found by querying the [Style category listing](http://www.haskell.org/haskellwiki/Category:Style).

## Prolog {#prolog}

In the last couple weeks of the course, we will use the logic programming language [Prolog](https://en.wikipedia.org/wiki/Prolog). As with Haskell, I strongly recommend you supplement the course material with reading and exercises outside of class.

  * [SWI-Prolog](http://www.swi-prolog.org/download/stable) -– The Prolog environment we’ll be using. I’ll assume you have this installed.

  * [Learn Prolog Now!](http://www.learnprolognow.org) -- This book provides a good introduction to Prolog and plenty of exercises for practice. Available for free online.

  * [An Introduction to Logic Programming through Prolog](https://spivey.oriel.ox.ac.uk/corner/Logic_Programming) -- A free older textbook based on Prolog. I haven’t read this one but it looks like a pretty good resource.

  * [Prolog Wikibook](https://en.wikibooks.org/wiki/Prolog) -- Another one I haven’t read, but looks like a pretty good resource.


[Back to course home page](index.html)
