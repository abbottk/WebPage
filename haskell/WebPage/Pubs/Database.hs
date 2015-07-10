{-# LANGUAGE PatternGuards, TupleSections #-}

module WebPage.Pubs.Database where

import WebPage.Pubs.Paper


--
-- * Defintions
--

-- ** Authors
abbott      = Author "Keeley" "Abbott"
walkingshaw = Author "Eric" "Walkingshaw"
bogart      = Author "Christopher" "Bogart"


-- ** Institutions
osu = "Oregon State University"


-- ** Journals
jfp    = short "JFP" "Journal of Functional Programming"
jvlc   = short "JVLC" "Journal of Visual Languages and Computing"
toplas = short "TOPLAS" "ACM Trans. on Programming Languages and Systems"
tosem  = short "TOSEM" "ACM Trans. on Software Engineering and Methodology"


-- ** Conferences
lncs = ("LNCS",)

dsl    = short "DSL" "IFIP Working Conf. on Domain-Specific Languages"
idetc  = short "IDETC" "ASME Int. Design Engineering Technical Conf. & Computers and Information in Engineering Conf."
gpce   = short "GPCE" "ACM SIGPLAN Int. Conf. on Generative Programming and Component Engineering"
gttse  = short "GTTSE" "Generative and Transformational Techniques in Software Engineering"
icfp   = short "ICFP" "ACM SIGPLAN Int. Conf. on Functional Programming"
onward = short "Onward!" "ACM SIGPLAN Symp. on New Ideas in Programming and Reflections on Software"
sle    = short "SLE" "Int. Conf. on Software Language Engineering"
vlhcc  = short "VL/HCC" "IEEE Symposium on Visual Languages and Human-Centric Computing"
vlhccgc | Just s <- _shortname vlhcc = short s ("Graduate Consortium at " ++ _longname vlhcc)


-- ** Workshops
fosd  = short "FOSD" "Int. Workshop on Feature-Oriented Software Development"
foser = short "FoSER" "ACM SIGSOFT Workshop on the Future of Software Engineering Research"
vamos = short "VaMoS" "Int. Workshop on Variability Modelling of Software-Intensive Systems"


--
-- * Papers
--

-- ** Lists of papers in chronological order.

drafts = []
y15 = [vlhcc15]

allPubs = concat [drafts,y15]


-- ** 2015

vlhcc15 = accepted Conference
  "programs-for-people"
  [abbott,bogart,walkingshaw]
  "Programs for People: What We Can Learn from Lab Protocols"
  2015
  @@ vlhcc
