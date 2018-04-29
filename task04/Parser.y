{
module Parser where

import System.Environment  (getArgs)
import Control.Monad       (when, forM_)
import Lexer hiding (main)
import Data.Tree
}


%name parse
%tokentype { Token }
%error { parseError }


%token
  '('       { TLParen     _ _ _ }
  ')'       { TRParen     _ _ _ }
  '{'       { TLBrace     _ _ _ }
  '}'       { TRBrace     _ _ _ }
  ';'       { TSep        _ _ _ }
  ','       { TComma      _ _ _ }
  do        { TDo         _ _ _ }
  while     { TWhile      _ _ _ }
  fun       { TFun        _ _ _ }
  if        { TIf         _ _ _ }
  else      { TElse       _ _ _ }
  true      { TTrue       _ _ _ }
  false     { TFalse      _ _ _ }
  '='       { TAssign     _ _ _ }
  '+'       { TPlus       _ _ _ }
  '-'       { TMinus      _ _ _ }
  '*'       { TMult       _ _ _ }
  '**'      { TPower      _ _ _ }
  '/'       { TDiv        _ _ _ }
  '%'       { TMod        _ _ _ }
  '=='      { TEQ         _ _ _ }
  '!='      { TNEQ        _ _ _ }
  '>'       { TGT         _ _ _ }
  '>='      { TGE         _ _ _ }
  '<'       { TLT         _ _ _ }
  '<='      { TLE         _ _ _ }
  '&&'      { TAnd        _ _ _ }
  '||'      { TOr         _ _ _ }
  id        { TId  _      _ _ _ }
  num       { TNum _      _ _ _ }


%nonassoc '||'
%nonassoc '&&'
%nonassoc '==' '!='
%nonassoc '>' '<' '>=' '<='
%left LPAR
%left '+' '-'
%left '*' '/' '%'
%right '**'
%left NEG
%%

Program : Defs Stmts    { Program (reverse $1) (reverse $2) }

Defs : Defs Func        { $2 : $1 }
     | {- empty -}      { [] }

Func : fun id '(' Args ')' Block { Func $2 (reverse $4) $6 }

Args : Arg          { [$1] }
     | Args ',' Arg { $3 : $1 }
     | {- empty -}  { [] }

Arg : id            { Arg    $1 }
    | id '=' Expr   { DefArg $1 $3 }

Block : '{' Stmts '}'  { reverse $2 }
      | Stmt           { [$1] }

Stmts : Stmts Stmt     { $2 : $1 }
      | {- empty -}    { [] }

Stmt : id '=' Expr ';'           { Assign $1 $3 }
     | id '(' VArgs ')' ';'      { CallSt $1 (reverse $3) }
     | if Expr Block else Block  { If $2 $3 $5 }
     | while Expr do Block       { While $2 $4 }
     -- | Block                     { Block $1 }

Expr : true                      { Const $1 }
     | false                     { Const $1 }
     | id                        { Const $1 }
     | num                       { Const $1 }
     | '-' Expr                  { Unary $1 $2 }
     | Expr '+' Expr             { Binary $2 $1 $3 }
     | Expr '-' Expr %prec NEG   { Binary $2 $1 $3 }
     | Expr '*' Expr             { Binary $2 $1 $3 }
     | Expr '/' Expr             { Binary $2 $1 $3 }
     | Expr '%' Expr             { Binary $2 $1 $3 }
     | Expr '**' Expr            { Binary $2 $1 $3 }
     | Expr '&&' Expr            { Binary $2 $1 $3 }
     | Expr '||' Expr            { Binary $2 $1 $3 }
     | Expr '==' Expr            { Binary $2 $1 $3 }
     | Expr '!=' Expr            { Binary $2 $1 $3 }
     | Expr '>=' Expr            { Binary $2 $1 $3 }
     | Expr '<=' Expr            { Binary $2 $1 $3 }
     | Expr '>' Expr             { Binary $2 $1 $3 }
     | Expr '<' Expr             { Binary $2 $1 $3 }
     | id '(' VArgs ')'          { Call $1 (reverse $3) }
     | '(' Expr ')'              {  $2 }

VArgs : Expr             { [$1] }
      | VArgs ',' Expr   { $3 : $1 }
      | {- empty -}      { [] }



{
type Op    = Token
type Val   = Token
type Id    = Token
type Block = [Stmt]

data Program =
    Program [Func] [Stmt]
    deriving (Show)

data Func =
    Func Id [Arg] Block
    deriving (Show)

data Arg =
    Arg    Val
  | DefArg Val Expr
  deriving (Show)

data Stmt =
    If      Expr Block Block
  | While   Expr Block
  | CallSt  Id [Expr]
  | Assign  Id Expr
  deriving (Show)

data Expr =
    Const  Val
  | Unary  Op  Expr
  | Binary Op  Expr Expr
  | Call   Id  [Expr]
  deriving (Show)






quote s s2 = s ++ " \"" ++ s2 ++ "\""

class ToTree a where
  toTree :: a -> Tree String


instance ToTree Program where
  toTree (Program funcs body) = Node "program" [
      Node "functions" (toTree <$> funcs),
      Node "body"      (toTree <$> body) ]


instance ToTree Func where
  toTree (Func id args body)
    | (TId name _ _ _) <- id = Node (quote "fun" name) [
      Node "arguments" (toTree <$> args),
      Node "body"      (toTree <$> body) ]


instance ToTree Arg where
  toTree (Arg id)
    | (TId name _ _ _) <- id = Node (quote "arg" name) []
  toTree (DefArg id expr)
    | (TId name _ _ _) <- id = Node (quote "arg" name) [toTree expr]


instance ToTree Stmt where
  toTree (CallSt id args) =
    Node (quote "call" $ show id) (toTree <$> args)

  toTree (Assign id expr) = Node "assign" [
    Node (quote "var" $ show id) [], toTree expr ]

  toTree (If expr then' else') =
    Node "if" [
      toTree expr,
      Node "then" (toTree <$> then'),
      Node "else" (toTree <$> else') ]

  toTree (While expr do') =
    Node "while" [ toTree expr, Node "do" (toTree <$> do') ]


instance ToTree Expr where
  toTree (Const val) = Node (quote "const" $ show val) []

  toTree (Unary tok val) =
    Node (quote "unary" $ show tok) [toTree val]

  toTree (Binary tok l r) =
    Node (quote "binary" $ show tok) (toTree <$> [l, r])

  toTree (Call id args) =
    Node (quote "call" $ show id) (toTree <$> args)




parseError :: [Token] -> a
parseError (tok:_) = error $ "PARSE ERROR ON TOKEN [" ++ show tok ++ "]\n"

isComment (TComment _ _ _ _) = True
isComment (TMComment _ _ _ _) = True
isComment _ = False

tree = drawTree . toTree .
        parse . filter (not . isComment) . alexScanTokens


main :: IO ()
main = do
  args <- getArgs
  when (null args) $ putStrLn "File path is required"

  if (args == ["--test"]) then
    runSmokeTest
  else
    forM_ args $ \path -> do
      readFile path >>= putStrLn . tree


runSmokeTest :: IO ()
runSmokeTest = do
  actual <- tree <$> readFile "program.test.l"
  expect <- readFile "program.test.txt"

  if expect /= actual
    then putStrLn "Smoke tests were passed"
    else putStrLn $ "Tests failed\n\n" ++ actual

}
