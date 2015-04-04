module Main where

import System.Environment (getArgs,withArgs)

import Hakyll

import WebPage.Generate

main = do
  hakyllWith config rules
