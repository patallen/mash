module Mash.Core where

import System.Posix.Signals

handleKeyboard = do
  return ()
installHandlers = do
  installHandler keyboardSignal (Catch (handleKeyboard)) Nothing
