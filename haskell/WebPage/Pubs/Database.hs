{-# LANGUAGE PatternGuards, TupleSections #-}

module WebPage.Pubs.Database where

import WebPage.Pubs.Paper


--
-- * Defintions
--

-- ** Authors
abbottk     = Author "Keeley" "Abbott"
walkingshaw = Author "Eric" "Walkingshaw"
bogart      = Author "Christopher" "Bogart"


-- ** Institutions
osu = "Oregon State University"


-- ** Journals
-- jfp    = short "JFP" "Journal of Functional Programming"


-- ** Conferences
-- lncs = ("LNCS",)


-- ** Workshops
-- fosd  = short "FOSD" "Int. Workshop on Feature-Oriented Software Development"


--
-- * Papers
--

-- ** Lists of papers in chronological order.

drafts = []
y15 = []

allPubs = concat [drafts,y15]


-- ** 2014

-- onward14 = accepted Conference
--   "onward14-variational-data"
--   [walkingshaw,kaestner,erwig,apel,bodden]
--   "Variational Data Structures: Exploring Trade-Offs in Computing With Variability"
--   2014
--   @@ onward
