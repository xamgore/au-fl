{
{-# LANGUAGE LambdaCase #-}

module Main (main, Token(..), AlexPosn(..), alexScanTokens) where

import System.Environment  (getArgs)
import Control.Monad       (when, forM_)
import Text.Parsec         ((<|>), char, digit, many, many1, oneOf, option, parse)
import Text.Parsec.String  (Parser)
import Data.List           (intersperse)
}

%wrapper "posn"

$digit = 0-9
$alpha = [a-zA-Z]

@digits     = $digit (\_ | $digit)*
@exponent   = (e|E) (\+|\-)? @digits
@float      = (@digits \. @digits? @exponent?) |
              (        \. @digits  @exponent?) |
              (@digits             @exponent)  |
              (@digits             @exponent?)


tokens :-
  $white+                         ;
  "//".*                          { tok $ \s -> TComment s }
  ";"                             { tok $ \s -> TSep }
  ","                             { tok $ \s -> TComma }
  ")"                             { tok $ \s -> TRParen }
  "("                             { tok $ \s -> TLParen }
  "}"                             { tok $ \s -> TRBrace }
  "{"                             { tok $ \s -> TLBrace }
  "="                             { tok $ \s -> TAssign }
  "+"                             { tok $ \s -> TPlus }
  "-"                             { tok $ \s -> TMinus }
  "*"                             { tok $ \s -> TMult }
  "/"                             { tok $ \s -> TDiv }
  "%"                             { tok $ \s -> TMod }
  "=="                            { tok $ \s -> TEQ }
  "!="                            { tok $ \s -> TNEQ }
  ">"                             { tok $ \s -> TGT }
  ">="                            { tok $ \s -> TGE }
  "<"                             { tok $ \s -> TLT }
  "<="                            { tok $ \s -> TLE }
  "&&"                            { tok $ \s -> TAnd }
  "||"                            { tok $ \s -> TOr }
  if                              { tok $ \s -> TIf }
  then                            { tok $ \s -> TThen }
  else                            { tok $ \s -> TElse }
  read                            { tok $ \s -> TRead }
  write                           { tok $ \s -> TWrite }
  do                              { tok $ \s -> TDo }
  while                           { tok $ \s -> TWhile }
  true                            { tok $ \s -> TTrue }
  false                           { tok $ \s -> TFalse }
  @float                          { tok $ \s -> TNum (parseFloat $ "0" ++ s) }
  [$alpha \_] [$alpha $digit \_]* { tok $ \s -> TId s }

-- Each action has type :: Pos -> String -> Token

{

type Col = Int
type Row = Int
type Len = Int

tok f (AlexPn _ col row) str = (f str) col row (length str)

-- The token type:
data Token = TLParen     Row Col Len
           | TRParen     Row Col Len
           | TLBrace     Row Col Len -- {}
           | TRBrace     Row Col Len -- {}
           | TSep        Row Col Len
           | TComma      Row Col Len
           | TDo         Row Col Len
           | TWhile      Row Col Len
           | TIf         Row Col Len
           | TThen       Row Col Len
           | TElse       Row Col Len
           | TRead       Row Col Len
           | TWrite      Row Col Len
           | TTrue       Row Col Len
           | TFalse      Row Col Len
           | TAssign     Row Col Len
           | TPlus       Row Col Len
           | TMinus      Row Col Len
           | TMult       Row Col Len
           | TDiv        Row Col Len
           | TMod        Row Col Len
           | TEQ         Row Col Len
           | TNEQ        Row Col Len
           | TGT         Row Col Len
           | TGE         Row Col Len
           | TLT         Row Col Len
           | TLE         Row Col Len
           | TAnd        Row Col Len
           | TOr         Row Col Len
           | TId  String Row Col Len
           | TNum Double Row Col Len
           | TComment String Row Col Len
           deriving (Eq,Show)


parseFloat :: String -> Double
parseFloat s = let Right n = parse float "" clean_str in n
  where
    clean_str :: String
    clean_str = filter (/= '_') s
    float :: Parser Double
    float = do
        number   <- read <$> many digit
        fraction <- option 0 floatFraction
        f        <- option id floatExpFunc
        return (f $ number + fraction)
    floatFraction :: Parser Double
    floatFraction = do
        _ <- char '.'
        many digit >>= \case
            "" -> return 0
            n  -> return (read ("0." ++ n))
    floatExpFunc :: Parser (Double -> Double)
    floatExpFunc = do
        _ <- oneOf "eE"
        f <- option id ((id <$ char '+') <|> (negate <$ char '-'))
        n <- read <$> many1 digit
        return (* (10 ** f n))


main :: IO ()
main = do
  args <- getArgs
  when (null args) $ putStrLn "File path is required"

  if (args == ["--test"]) then
    runSmokeTest
  else
    forM_ args $ \path -> do
      text <- readFile path
      let toks = alexScanTokens text
      putStrLn $ concat $ intersperse "\n" $ map show toks


runSmokeTest :: IO ()
runSmokeTest = do
  toks <- alexScanTokens <$> readFile "program.test.txt"
  res  <- readFile "program.result.txt"

  let lexRes = concat $ intersperse "\n" $ show <$> toks
  if lexRes == init res
    then putStrLn "Smoke tests were passed"
    else putStrLn $ "Tests failed\n\n" ++ lexRes
}
