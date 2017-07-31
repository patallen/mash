module Mash.Main where

import Control.Monad

import Mash.Command
import Mash.Parse
import Mash.Prompt
import Mash.Core

mash :: IO ()
mash = do
  installHandlers
  hashLoop

hashLoop = forever $ do
  input <- prompt
  parseLine input
