module Mash.Parse where

import System.Environment
import Data.List
import Text.ParserCombinators.Parsec
import Text.ParserCombinators.Parsec.Prim

command :: GenParser Char st String
command = many alphaNum

commands :: GenParser Char st [String]
commands = many command <|> skipMany space

type Command = String
type Flag = String

data Line = Command [Flag]


-- parseLine line = do
--   case (parse commands "Invalid Hash Command" line) of
--     Left err -> putStr "Invalid Command"
--     Right thing -> putStr thing
--   return ()

type WordSet = [String]
