{-# OPTIONS_GHC -w #-}
module Parser where

import System.Environment  (getArgs)
import Control.Monad       (when, forM_)
import Lexer hiding (main)
import Data.Tree
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.9

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,252) ([0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,5,32,0,0,2,2,0,0,0,0,512,304,96,32,19,6,16386,0,8192,4864,1536,512,304,96,20608,65528,3,12290,24577,0,0,0,0,0,0,32,19,6,2,0,0,0,0,32768,65408,31,0,0,2,68,0,0,0,0,0,64,0,20608,0,2,12290,24577,8192,4864,1536,512,304,96,32,19,6,12290,24577,8192,4864,1536,512,304,96,32,19,6,12290,24577,8192,4864,1536,512,304,96,32,19,6,12290,24577,8192,4864,1536,512,304,96,0,480,0,32772,8191,0,128,0,0,0,0,0,0,0,32800,8191,0,63488,511,17408,0,0,512,0,0,12290,24577,0,0,0,4096,5,32,20608,0,2,0,0,16384,4,0,0,65408,15,0,32760,0,32768,31,0,63488,1,0,8064,0,0,504,0,32768,1951,0,63488,121,0,1024,0,0,64,0,0,4,0,16384,0,0,0,0,0,480,0,0,0,8192,4864,1536,2048,5,32,0,0,2,0,0,0,0,0,0,65408,31,0,0,0,0,0,0,0,0,0,65408,31,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Defs","Func","Args","Arg","Block","Stmts","Stmt","Expr","VArgs","'('","')'","'{'","'}'","';'","','","do","while","fun","if","else","true","false","'='","'+'","'-'","'*'","'**'","'/'","'%'","'=='","'!='","'>'","'>='","'<'","'<='","'&&'","'||'","id","num","%eof"]
        bit_start = st * 44
        bit_end = (st + 1) * 44
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..43]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_2
action_0 _ = happyReduce_3

action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (22) = happyShift action_6
action_2 (6) = happyGoto action_4
action_2 (10) = happyGoto action_5
action_2 _ = happyReduce_13

action_3 (44) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (21) = happyShift action_9
action_5 (23) = happyShift action_10
action_5 (42) = happyShift action_11
action_5 (11) = happyGoto action_8
action_5 _ = happyReduce_1

action_6 (42) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (14) = happyShift action_22
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_12

action_9 (14) = happyShift action_15
action_9 (25) = happyShift action_16
action_9 (26) = happyShift action_17
action_9 (29) = happyShift action_18
action_9 (42) = happyShift action_19
action_9 (43) = happyShift action_20
action_9 (12) = happyGoto action_21
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (14) = happyShift action_15
action_10 (25) = happyShift action_16
action_10 (26) = happyShift action_17
action_10 (29) = happyShift action_18
action_10 (42) = happyShift action_19
action_10 (43) = happyShift action_20
action_10 (12) = happyGoto action_14
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (14) = happyShift action_12
action_11 (27) = happyShift action_13
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (14) = happyShift action_15
action_12 (25) = happyShift action_16
action_12 (26) = happyShift action_17
action_12 (29) = happyShift action_18
action_12 (42) = happyShift action_19
action_12 (43) = happyShift action_20
action_12 (12) = happyGoto action_48
action_12 (13) = happyGoto action_49
action_12 _ = happyReduce_41

action_13 (14) = happyShift action_15
action_13 (25) = happyShift action_16
action_13 (26) = happyShift action_17
action_13 (29) = happyShift action_18
action_13 (42) = happyShift action_19
action_13 (43) = happyShift action_20
action_13 (12) = happyGoto action_47
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (16) = happyShift action_46
action_14 (21) = happyShift action_9
action_14 (23) = happyShift action_10
action_14 (28) = happyShift action_27
action_14 (29) = happyShift action_28
action_14 (30) = happyShift action_29
action_14 (31) = happyShift action_30
action_14 (32) = happyShift action_31
action_14 (33) = happyShift action_32
action_14 (34) = happyShift action_33
action_14 (35) = happyShift action_34
action_14 (36) = happyShift action_35
action_14 (37) = happyShift action_36
action_14 (38) = happyShift action_37
action_14 (39) = happyShift action_38
action_14 (40) = happyShift action_39
action_14 (41) = happyShift action_40
action_14 (42) = happyShift action_11
action_14 (9) = happyGoto action_44
action_14 (11) = happyGoto action_45
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (14) = happyShift action_15
action_15 (25) = happyShift action_16
action_15 (26) = happyShift action_17
action_15 (29) = happyShift action_18
action_15 (42) = happyShift action_19
action_15 (43) = happyShift action_20
action_15 (12) = happyGoto action_43
action_15 _ = happyFail (happyExpListPerState 15)

action_16 _ = happyReduce_18

action_17 _ = happyReduce_19

action_18 (14) = happyShift action_15
action_18 (25) = happyShift action_16
action_18 (26) = happyShift action_17
action_18 (29) = happyShift action_18
action_18 (42) = happyShift action_19
action_18 (43) = happyShift action_20
action_18 (12) = happyGoto action_42
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (14) = happyShift action_41
action_19 _ = happyReduce_20

action_20 _ = happyReduce_21

action_21 (20) = happyShift action_26
action_21 (28) = happyShift action_27
action_21 (29) = happyShift action_28
action_21 (30) = happyShift action_29
action_21 (31) = happyShift action_30
action_21 (32) = happyShift action_31
action_21 (33) = happyShift action_32
action_21 (34) = happyShift action_33
action_21 (35) = happyShift action_34
action_21 (36) = happyShift action_35
action_21 (37) = happyShift action_36
action_21 (38) = happyShift action_37
action_21 (39) = happyShift action_38
action_21 (40) = happyShift action_39
action_21 (41) = happyShift action_40
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (42) = happyShift action_25
action_22 (7) = happyGoto action_23
action_22 (8) = happyGoto action_24
action_22 _ = happyReduce_7

action_23 (15) = happyShift action_73
action_23 (19) = happyShift action_74
action_23 _ = happyFail (happyExpListPerState 23)

action_24 _ = happyReduce_5

action_25 (27) = happyShift action_72
action_25 _ = happyReduce_8

action_26 (16) = happyShift action_46
action_26 (21) = happyShift action_9
action_26 (23) = happyShift action_10
action_26 (42) = happyShift action_11
action_26 (9) = happyGoto action_71
action_26 (11) = happyGoto action_45
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (14) = happyShift action_15
action_27 (25) = happyShift action_16
action_27 (26) = happyShift action_17
action_27 (29) = happyShift action_18
action_27 (42) = happyShift action_19
action_27 (43) = happyShift action_20
action_27 (12) = happyGoto action_70
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (14) = happyShift action_15
action_28 (25) = happyShift action_16
action_28 (26) = happyShift action_17
action_28 (29) = happyShift action_18
action_28 (42) = happyShift action_19
action_28 (43) = happyShift action_20
action_28 (12) = happyGoto action_69
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (14) = happyShift action_15
action_29 (25) = happyShift action_16
action_29 (26) = happyShift action_17
action_29 (29) = happyShift action_18
action_29 (42) = happyShift action_19
action_29 (43) = happyShift action_20
action_29 (12) = happyGoto action_68
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (14) = happyShift action_15
action_30 (25) = happyShift action_16
action_30 (26) = happyShift action_17
action_30 (29) = happyShift action_18
action_30 (42) = happyShift action_19
action_30 (43) = happyShift action_20
action_30 (12) = happyGoto action_67
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (14) = happyShift action_15
action_31 (25) = happyShift action_16
action_31 (26) = happyShift action_17
action_31 (29) = happyShift action_18
action_31 (42) = happyShift action_19
action_31 (43) = happyShift action_20
action_31 (12) = happyGoto action_66
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (14) = happyShift action_15
action_32 (25) = happyShift action_16
action_32 (26) = happyShift action_17
action_32 (29) = happyShift action_18
action_32 (42) = happyShift action_19
action_32 (43) = happyShift action_20
action_32 (12) = happyGoto action_65
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (14) = happyShift action_15
action_33 (25) = happyShift action_16
action_33 (26) = happyShift action_17
action_33 (29) = happyShift action_18
action_33 (42) = happyShift action_19
action_33 (43) = happyShift action_20
action_33 (12) = happyGoto action_64
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (14) = happyShift action_15
action_34 (25) = happyShift action_16
action_34 (26) = happyShift action_17
action_34 (29) = happyShift action_18
action_34 (42) = happyShift action_19
action_34 (43) = happyShift action_20
action_34 (12) = happyGoto action_63
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (14) = happyShift action_15
action_35 (25) = happyShift action_16
action_35 (26) = happyShift action_17
action_35 (29) = happyShift action_18
action_35 (42) = happyShift action_19
action_35 (43) = happyShift action_20
action_35 (12) = happyGoto action_62
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (14) = happyShift action_15
action_36 (25) = happyShift action_16
action_36 (26) = happyShift action_17
action_36 (29) = happyShift action_18
action_36 (42) = happyShift action_19
action_36 (43) = happyShift action_20
action_36 (12) = happyGoto action_61
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (14) = happyShift action_15
action_37 (25) = happyShift action_16
action_37 (26) = happyShift action_17
action_37 (29) = happyShift action_18
action_37 (42) = happyShift action_19
action_37 (43) = happyShift action_20
action_37 (12) = happyGoto action_60
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (14) = happyShift action_15
action_38 (25) = happyShift action_16
action_38 (26) = happyShift action_17
action_38 (29) = happyShift action_18
action_38 (42) = happyShift action_19
action_38 (43) = happyShift action_20
action_38 (12) = happyGoto action_59
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (14) = happyShift action_15
action_39 (25) = happyShift action_16
action_39 (26) = happyShift action_17
action_39 (29) = happyShift action_18
action_39 (42) = happyShift action_19
action_39 (43) = happyShift action_20
action_39 (12) = happyGoto action_58
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (14) = happyShift action_15
action_40 (25) = happyShift action_16
action_40 (26) = happyShift action_17
action_40 (29) = happyShift action_18
action_40 (42) = happyShift action_19
action_40 (43) = happyShift action_20
action_40 (12) = happyGoto action_57
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (14) = happyShift action_15
action_41 (25) = happyShift action_16
action_41 (26) = happyShift action_17
action_41 (29) = happyShift action_18
action_41 (42) = happyShift action_19
action_41 (43) = happyShift action_20
action_41 (12) = happyGoto action_48
action_41 (13) = happyGoto action_56
action_41 _ = happyReduce_41

action_42 (30) = happyShift action_29
action_42 (31) = happyShift action_30
action_42 (32) = happyShift action_31
action_42 (33) = happyShift action_32
action_42 _ = happyReduce_22

action_43 (15) = happyShift action_55
action_43 (28) = happyShift action_27
action_43 (29) = happyShift action_28
action_43 (30) = happyShift action_29
action_43 (31) = happyShift action_30
action_43 (32) = happyShift action_31
action_43 (33) = happyShift action_32
action_43 (34) = happyShift action_33
action_43 (35) = happyShift action_34
action_43 (36) = happyShift action_35
action_43 (37) = happyShift action_36
action_43 (38) = happyShift action_37
action_43 (39) = happyShift action_38
action_43 (40) = happyShift action_39
action_43 (41) = happyShift action_40
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (24) = happyShift action_54
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_11

action_46 (10) = happyGoto action_53
action_46 _ = happyReduce_13

action_47 (18) = happyShift action_52
action_47 (28) = happyShift action_27
action_47 (29) = happyShift action_28
action_47 (30) = happyShift action_29
action_47 (31) = happyShift action_30
action_47 (32) = happyShift action_31
action_47 (33) = happyShift action_32
action_47 (34) = happyShift action_33
action_47 (35) = happyShift action_34
action_47 (36) = happyShift action_35
action_47 (37) = happyShift action_36
action_47 (38) = happyShift action_37
action_47 (39) = happyShift action_38
action_47 (40) = happyShift action_39
action_47 (41) = happyShift action_40
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (28) = happyShift action_27
action_48 (29) = happyShift action_28
action_48 (30) = happyShift action_29
action_48 (31) = happyShift action_30
action_48 (32) = happyShift action_31
action_48 (33) = happyShift action_32
action_48 (34) = happyShift action_33
action_48 (35) = happyShift action_34
action_48 (36) = happyShift action_35
action_48 (37) = happyShift action_36
action_48 (38) = happyShift action_37
action_48 (39) = happyShift action_38
action_48 (40) = happyShift action_39
action_48 (41) = happyShift action_40
action_48 _ = happyReduce_39

action_49 (15) = happyShift action_50
action_49 (19) = happyShift action_51
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (18) = happyShift action_82
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (14) = happyShift action_15
action_51 (25) = happyShift action_16
action_51 (26) = happyShift action_17
action_51 (29) = happyShift action_18
action_51 (42) = happyShift action_19
action_51 (43) = happyShift action_20
action_51 (12) = happyGoto action_81
action_51 _ = happyFail (happyExpListPerState 51)

action_52 _ = happyReduce_14

action_53 (17) = happyShift action_80
action_53 (21) = happyShift action_9
action_53 (23) = happyShift action_10
action_53 (42) = happyShift action_11
action_53 (11) = happyGoto action_8
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (16) = happyShift action_46
action_54 (21) = happyShift action_9
action_54 (23) = happyShift action_10
action_54 (42) = happyShift action_11
action_54 (9) = happyGoto action_79
action_54 (11) = happyGoto action_45
action_54 _ = happyFail (happyExpListPerState 54)

action_55 _ = happyReduce_38

action_56 (15) = happyShift action_78
action_56 (19) = happyShift action_51
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (28) = happyShift action_27
action_57 (29) = happyShift action_28
action_57 (30) = happyShift action_29
action_57 (31) = happyShift action_30
action_57 (32) = happyShift action_31
action_57 (33) = happyShift action_32
action_57 (34) = happyShift action_33
action_57 (35) = happyShift action_34
action_57 (36) = happyShift action_35
action_57 (37) = happyShift action_36
action_57 (38) = happyShift action_37
action_57 (39) = happyShift action_38
action_57 (40) = happyShift action_39
action_57 (41) = happyFail []
action_57 _ = happyReduce_30

action_58 (28) = happyShift action_27
action_58 (29) = happyShift action_28
action_58 (30) = happyShift action_29
action_58 (31) = happyShift action_30
action_58 (32) = happyShift action_31
action_58 (33) = happyShift action_32
action_58 (34) = happyShift action_33
action_58 (35) = happyShift action_34
action_58 (36) = happyShift action_35
action_58 (37) = happyShift action_36
action_58 (38) = happyShift action_37
action_58 (39) = happyShift action_38
action_58 (40) = happyFail []
action_58 _ = happyReduce_29

action_59 (28) = happyShift action_27
action_59 (29) = happyShift action_28
action_59 (30) = happyShift action_29
action_59 (31) = happyShift action_30
action_59 (32) = happyShift action_31
action_59 (33) = happyShift action_32
action_59 (36) = happyFail []
action_59 (37) = happyFail []
action_59 (38) = happyFail []
action_59 (39) = happyFail []
action_59 _ = happyReduce_34

action_60 (28) = happyShift action_27
action_60 (29) = happyShift action_28
action_60 (30) = happyShift action_29
action_60 (31) = happyShift action_30
action_60 (32) = happyShift action_31
action_60 (33) = happyShift action_32
action_60 (36) = happyFail []
action_60 (37) = happyFail []
action_60 (38) = happyFail []
action_60 (39) = happyFail []
action_60 _ = happyReduce_36

action_61 (28) = happyShift action_27
action_61 (29) = happyShift action_28
action_61 (30) = happyShift action_29
action_61 (31) = happyShift action_30
action_61 (32) = happyShift action_31
action_61 (33) = happyShift action_32
action_61 (36) = happyFail []
action_61 (37) = happyFail []
action_61 (38) = happyFail []
action_61 (39) = happyFail []
action_61 _ = happyReduce_33

action_62 (28) = happyShift action_27
action_62 (29) = happyShift action_28
action_62 (30) = happyShift action_29
action_62 (31) = happyShift action_30
action_62 (32) = happyShift action_31
action_62 (33) = happyShift action_32
action_62 (36) = happyFail []
action_62 (37) = happyFail []
action_62 (38) = happyFail []
action_62 (39) = happyFail []
action_62 _ = happyReduce_35

action_63 (28) = happyShift action_27
action_63 (29) = happyShift action_28
action_63 (30) = happyShift action_29
action_63 (31) = happyShift action_30
action_63 (32) = happyShift action_31
action_63 (33) = happyShift action_32
action_63 (34) = happyFail []
action_63 (35) = happyFail []
action_63 (36) = happyShift action_35
action_63 (37) = happyShift action_36
action_63 (38) = happyShift action_37
action_63 (39) = happyShift action_38
action_63 _ = happyReduce_32

action_64 (28) = happyShift action_27
action_64 (29) = happyShift action_28
action_64 (30) = happyShift action_29
action_64 (31) = happyShift action_30
action_64 (32) = happyShift action_31
action_64 (33) = happyShift action_32
action_64 (34) = happyFail []
action_64 (35) = happyFail []
action_64 (36) = happyShift action_35
action_64 (37) = happyShift action_36
action_64 (38) = happyShift action_37
action_64 (39) = happyShift action_38
action_64 _ = happyReduce_31

action_65 (31) = happyShift action_30
action_65 _ = happyReduce_27

action_66 (31) = happyShift action_30
action_66 _ = happyReduce_26

action_67 (31) = happyShift action_30
action_67 _ = happyReduce_28

action_68 (31) = happyShift action_30
action_68 _ = happyReduce_25

action_69 _ = happyReduce_24

action_70 (30) = happyShift action_29
action_70 (31) = happyShift action_30
action_70 (32) = happyShift action_31
action_70 (33) = happyShift action_32
action_70 _ = happyReduce_23

action_71 _ = happyReduce_17

action_72 (14) = happyShift action_15
action_72 (25) = happyShift action_16
action_72 (26) = happyShift action_17
action_72 (29) = happyShift action_18
action_72 (42) = happyShift action_19
action_72 (43) = happyShift action_20
action_72 (12) = happyGoto action_77
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (16) = happyShift action_46
action_73 (21) = happyShift action_9
action_73 (23) = happyShift action_10
action_73 (42) = happyShift action_11
action_73 (9) = happyGoto action_76
action_73 (11) = happyGoto action_45
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (42) = happyShift action_25
action_74 (8) = happyGoto action_75
action_74 _ = happyFail (happyExpListPerState 74)

action_75 _ = happyReduce_6

action_76 _ = happyReduce_4

action_77 (28) = happyShift action_27
action_77 (29) = happyShift action_28
action_77 (30) = happyShift action_29
action_77 (31) = happyShift action_30
action_77 (32) = happyShift action_31
action_77 (33) = happyShift action_32
action_77 (34) = happyShift action_33
action_77 (35) = happyShift action_34
action_77 (36) = happyShift action_35
action_77 (37) = happyShift action_36
action_77 (38) = happyShift action_37
action_77 (39) = happyShift action_38
action_77 (40) = happyShift action_39
action_77 (41) = happyShift action_40
action_77 _ = happyReduce_9

action_78 _ = happyReduce_37

action_79 _ = happyReduce_16

action_80 _ = happyReduce_10

action_81 (28) = happyShift action_27
action_81 (29) = happyShift action_28
action_81 (30) = happyShift action_29
action_81 (31) = happyShift action_30
action_81 (32) = happyShift action_31
action_81 (33) = happyShift action_32
action_81 (34) = happyShift action_33
action_81 (35) = happyShift action_34
action_81 (36) = happyShift action_35
action_81 (37) = happyShift action_36
action_81 (38) = happyShift action_37
action_81 (39) = happyShift action_38
action_81 (40) = happyShift action_39
action_81 (41) = happyShift action_40
action_81 _ = happyReduce_40

action_82 _ = happyReduce_15

happyReduce_1 = happySpecReduce_2  4 happyReduction_1
happyReduction_1 (HappyAbsSyn10  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 (Program (reverse happy_var_1) (reverse happy_var_2)
	)
happyReduction_1 _ _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  5 happyReduction_2
happyReduction_2 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn5
		 (happy_var_2 : happy_var_1
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happySpecReduce_0  5 happyReduction_3
happyReduction_3  =  HappyAbsSyn5
		 ([]
	)

happyReduce_4 = happyReduce 6 6 happyReduction_4
happyReduction_4 ((HappyAbsSyn9  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Func happy_var_2 (reverse happy_var_4) happy_var_6
	) `HappyStk` happyRest

happyReduce_5 = happySpecReduce_1  7 happyReduction_5
happyReduction_5 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_5 _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  7 happyReduction_6
happyReduction_6 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_0  7 happyReduction_7
happyReduction_7  =  HappyAbsSyn7
		 ([]
	)

happyReduce_8 = happySpecReduce_1  8 happyReduction_8
happyReduction_8 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (Arg    happy_var_1
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  8 happyReduction_9
happyReduction_9 (HappyAbsSyn12  happy_var_3)
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (DefArg happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  9 happyReduction_10
happyReduction_10 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (reverse happy_var_2
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_1  9 happyReduction_11
happyReduction_11 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn9
		 ([happy_var_1]
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_2  10 happyReduction_12
happyReduction_12 (HappyAbsSyn11  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_2 : happy_var_1
	)
happyReduction_12 _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_0  10 happyReduction_13
happyReduction_13  =  HappyAbsSyn10
		 ([]
	)

happyReduce_14 = happyReduce 4 11 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn12  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_15 = happyReduce 5 11 happyReduction_15
happyReduction_15 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (CallSt happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_16 = happyReduce 5 11 happyReduction_16
happyReduction_16 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (If happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 4 11 happyReduction_17
happyReduction_17 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn12  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (While happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_1  12 happyReduction_18
happyReduction_18 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (Const happy_var_1
	)
happyReduction_18 _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_1  12 happyReduction_19
happyReduction_19 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (Const happy_var_1
	)
happyReduction_19 _  = notHappyAtAll 

happyReduce_20 = happySpecReduce_1  12 happyReduction_20
happyReduction_20 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (Const happy_var_1
	)
happyReduction_20 _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_1  12 happyReduction_21
happyReduction_21 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (Const happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_2  12 happyReduction_22
happyReduction_22 (HappyAbsSyn12  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn12
		 (Unary happy_var_1 happy_var_2
	)
happyReduction_22 _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_3  12 happyReduction_23
happyReduction_23 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_23 _ _ _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_3  12 happyReduction_24
happyReduction_24 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_24 _ _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  12 happyReduction_25
happyReduction_25 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_3  12 happyReduction_26
happyReduction_26 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_26 _ _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  12 happyReduction_27
happyReduction_27 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  12 happyReduction_28
happyReduction_28 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  12 happyReduction_29
happyReduction_29 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  12 happyReduction_30
happyReduction_30 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  12 happyReduction_31
happyReduction_31 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  12 happyReduction_32
happyReduction_32 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  12 happyReduction_33
happyReduction_33 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  12 happyReduction_34
happyReduction_34 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  12 happyReduction_35
happyReduction_35 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  12 happyReduction_36
happyReduction_36 (HappyAbsSyn12  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn12
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happyReduce 4 12 happyReduction_37
happyReduction_37 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 (Call happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_38 = happySpecReduce_3  12 happyReduction_38
happyReduction_38 _
	(HappyAbsSyn12  happy_var_2)
	_
	 =  HappyAbsSyn12
		 (happy_var_2
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_1  13 happyReduction_39
happyReduction_39 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_39 _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  13 happyReduction_40
happyReduction_40 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_3 : happy_var_1
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_0  13 happyReduction_41
happyReduction_41  =  HappyAbsSyn13
		 ([]
	)

happyNewToken action sts stk [] =
	action 44 44 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TLParen     _ _ _ -> cont 14;
	TRParen     _ _ _ -> cont 15;
	TLBrace     _ _ _ -> cont 16;
	TRBrace     _ _ _ -> cont 17;
	TSep        _ _ _ -> cont 18;
	TComma      _ _ _ -> cont 19;
	TDo         _ _ _ -> cont 20;
	TWhile      _ _ _ -> cont 21;
	TFun        _ _ _ -> cont 22;
	TIf         _ _ _ -> cont 23;
	TElse       _ _ _ -> cont 24;
	TTrue       _ _ _ -> cont 25;
	TFalse      _ _ _ -> cont 26;
	TAssign     _ _ _ -> cont 27;
	TPlus       _ _ _ -> cont 28;
	TMinus      _ _ _ -> cont 29;
	TMult       _ _ _ -> cont 30;
	TPower      _ _ _ -> cont 31;
	TDiv        _ _ _ -> cont 32;
	TMod        _ _ _ -> cont 33;
	TEQ         _ _ _ -> cont 34;
	TNEQ        _ _ _ -> cont 35;
	TGT         _ _ _ -> cont 36;
	TGE         _ _ _ -> cont 37;
	TLT         _ _ _ -> cont 38;
	TLE         _ _ _ -> cont 39;
	TAnd        _ _ _ -> cont 40;
	TOr         _ _ _ -> cont 41;
	TId  _      _ _ _ -> cont 42;
	TNum _      _ _ _ -> cont 43;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 44 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parse tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


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

  if expect == actual
    then putStrLn "Smoke tests were passed"
    else putStrLn $ "Tests failed\n\n" ++ actual
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4














































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc-8.2.2/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc549_0/ghc_2.h" #-}








































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.

{-# LINE 333 "templates/GenericTemplate.hs" #-}
{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
