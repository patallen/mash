module Mash.Prompt where

import System.IO

pwd = "~ "
prompt = do
  putStr pwd
  hFlush stdout
  line <- getLine
  return line
