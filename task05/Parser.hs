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

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
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
	| HappyAbsSyn14 t14

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,332) ([0,0,0,0,0,0,0,8192,0,0,0,0,0,0,0,0,0,22,512,0,0,2048,4096,0,0,16384,24576,32770,1,0,0,0,4,38,24,0,0,32,64,608,384,256,512,0,1024,9728,6144,0,0,0,0,1409,65023,0,32769,9,6,0,0,0,0,0,0,64,608,384,256,0,0,0,0,0,0,512,0,0,64,32255,0,64,63484,1,4,8,0,0,0,32,8320,0,0,0,0,0,0,2048,0,4096,38912,24576,0,0,0,0,0,0,0,4,38,24,16,152,96,64,608,384,256,2432,1536,1024,9728,6144,4096,38912,24576,16384,24576,32770,1,32769,9,6,4,38,24,16,152,96,64,608,384,256,2432,1536,1024,9728,6144,4096,38912,24576,0,1409,32768,0,16,0,0,0,960,0,32,32704,31,0,16,0,0,0,0,0,0,0,0,49152,8063,32768,32,0,0,64,0,0,4,38,24,24704,1,32,33024,5,128,0,0,0,1024,9728,6144,0,0,0,0,0,15871,0,0,30716,0,0,1008,0,0,4032,0,0,16128,0,0,64512,0,0,61440,467,0,49152,1871,0,0,8,0,0,32,0,0,128,0,0,512,0,0,0,0,0,61440,0,2048,2,0,4096,38912,24576,0,1409,33280,0,0,0,2,0,0,0,0,0,0,64,608,384,0,64512,503,0,0,0,0,49160,8063,0,0,0,0,0,0,0,0,57328,7,0,0,0,64,608,384,16384,64512,503,0,0,0,0,49154,8063,0,64,0,0,5636,0,2,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parse","Program","Defs","Func","Args","Arg","Block","Stmts","Bindings","Stmt","Expr","VArgs","'('","')'","'{'","'}'","'['","']'","';'","','","do","while","for","fun","if","in","else","true","false","'='","'+'","'-'","'*'","'**'","'/'","'%'","'=='","'!='","'>'","'=>'","'>='","'<'","'<='","'&&'","'||'","id","num","%eof"]
        bit_start = st * 50
        bit_end = (st + 1) * 50
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..49]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (4) = happyGoto action_3
action_0 (5) = happyGoto action_2
action_0 _ = happyReduce_3

action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 (26) = happyShift action_6
action_2 (6) = happyGoto action_4
action_2 (10) = happyGoto action_5
action_2 _ = happyReduce_14

action_3 (50) = happyAccept
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 (24) = happyShift action_10
action_5 (25) = happyShift action_11
action_5 (27) = happyShift action_12
action_5 (48) = happyShift action_13
action_5 (11) = happyGoto action_8
action_5 (12) = happyGoto action_9
action_5 _ = happyReduce_1

action_6 (48) = happyShift action_7
action_6 _ = happyFail (happyExpListPerState 6)

action_7 (15) = happyShift action_27
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (15) = happyShift action_17
action_8 (30) = happyShift action_18
action_8 (31) = happyShift action_19
action_8 (34) = happyShift action_20
action_8 (48) = happyShift action_26
action_8 (49) = happyShift action_22
action_8 (13) = happyGoto action_25
action_8 _ = happyFail (happyExpListPerState 8)

action_9 _ = happyReduce_13

action_10 (15) = happyShift action_17
action_10 (30) = happyShift action_18
action_10 (31) = happyShift action_19
action_10 (34) = happyShift action_20
action_10 (48) = happyShift action_21
action_10 (49) = happyShift action_22
action_10 (13) = happyGoto action_24
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (48) = happyShift action_23
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (15) = happyShift action_17
action_12 (30) = happyShift action_18
action_12 (31) = happyShift action_19
action_12 (34) = happyShift action_20
action_12 (48) = happyShift action_21
action_12 (49) = happyShift action_22
action_12 (13) = happyGoto action_16
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (15) = happyShift action_14
action_13 (32) = happyShift action_15
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (15) = happyShift action_17
action_14 (30) = happyShift action_18
action_14 (31) = happyShift action_19
action_14 (34) = happyShift action_20
action_14 (48) = happyShift action_21
action_14 (49) = happyShift action_22
action_14 (13) = happyGoto action_55
action_14 (14) = happyGoto action_56
action_14 _ = happyReduce_45

action_15 _ = happyReduce_15

action_16 (17) = happyShift action_54
action_16 (24) = happyShift action_10
action_16 (25) = happyShift action_11
action_16 (27) = happyShift action_12
action_16 (33) = happyShift action_34
action_16 (34) = happyShift action_35
action_16 (35) = happyShift action_36
action_16 (36) = happyShift action_37
action_16 (37) = happyShift action_38
action_16 (38) = happyShift action_39
action_16 (39) = happyShift action_40
action_16 (40) = happyShift action_41
action_16 (41) = happyShift action_42
action_16 (43) = happyShift action_43
action_16 (44) = happyShift action_44
action_16 (45) = happyShift action_45
action_16 (46) = happyShift action_46
action_16 (47) = happyShift action_47
action_16 (48) = happyShift action_13
action_16 (9) = happyGoto action_52
action_16 (11) = happyGoto action_8
action_16 (12) = happyGoto action_53
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (15) = happyShift action_17
action_17 (30) = happyShift action_18
action_17 (31) = happyShift action_19
action_17 (34) = happyShift action_20
action_17 (48) = happyShift action_21
action_17 (49) = happyShift action_22
action_17 (13) = happyGoto action_51
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_22

action_19 _ = happyReduce_23

action_20 (15) = happyShift action_17
action_20 (30) = happyShift action_18
action_20 (31) = happyShift action_19
action_20 (34) = happyShift action_20
action_20 (48) = happyShift action_21
action_20 (49) = happyShift action_22
action_20 (13) = happyGoto action_50
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (15) = happyShift action_31
action_21 _ = happyReduce_24

action_22 _ = happyReduce_25

action_23 (28) = happyShift action_49
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (23) = happyShift action_48
action_24 (33) = happyShift action_34
action_24 (34) = happyShift action_35
action_24 (35) = happyShift action_36
action_24 (36) = happyShift action_37
action_24 (37) = happyShift action_38
action_24 (38) = happyShift action_39
action_24 (39) = happyShift action_40
action_24 (40) = happyShift action_41
action_24 (41) = happyShift action_42
action_24 (43) = happyShift action_43
action_24 (44) = happyShift action_44
action_24 (45) = happyShift action_45
action_24 (46) = happyShift action_46
action_24 (47) = happyShift action_47
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (21) = happyShift action_33
action_25 (33) = happyShift action_34
action_25 (34) = happyShift action_35
action_25 (35) = happyShift action_36
action_25 (36) = happyShift action_37
action_25 (37) = happyShift action_38
action_25 (38) = happyShift action_39
action_25 (39) = happyShift action_40
action_25 (40) = happyShift action_41
action_25 (41) = happyShift action_42
action_25 (43) = happyShift action_43
action_25 (44) = happyShift action_44
action_25 (45) = happyShift action_45
action_25 (46) = happyShift action_46
action_25 (47) = happyShift action_47
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (15) = happyShift action_31
action_26 (32) = happyShift action_32
action_26 _ = happyReduce_24

action_27 (48) = happyShift action_30
action_27 (7) = happyGoto action_28
action_27 (8) = happyGoto action_29
action_27 _ = happyReduce_8

action_28 (16) = happyShift action_80
action_28 (22) = happyShift action_81
action_28 _ = happyFail (happyExpListPerState 28)

action_29 _ = happyReduce_6

action_30 (32) = happyShift action_79
action_30 _ = happyReduce_9

action_31 (15) = happyShift action_17
action_31 (30) = happyShift action_18
action_31 (31) = happyShift action_19
action_31 (34) = happyShift action_20
action_31 (48) = happyShift action_21
action_31 (49) = happyShift action_22
action_31 (13) = happyGoto action_55
action_31 (14) = happyGoto action_78
action_31 _ = happyReduce_45

action_32 _ = happyReduce_16

action_33 _ = happyReduce_17

action_34 (15) = happyShift action_17
action_34 (30) = happyShift action_18
action_34 (31) = happyShift action_19
action_34 (34) = happyShift action_20
action_34 (48) = happyShift action_21
action_34 (49) = happyShift action_22
action_34 (13) = happyGoto action_77
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (15) = happyShift action_17
action_35 (30) = happyShift action_18
action_35 (31) = happyShift action_19
action_35 (34) = happyShift action_20
action_35 (48) = happyShift action_21
action_35 (49) = happyShift action_22
action_35 (13) = happyGoto action_76
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (15) = happyShift action_17
action_36 (30) = happyShift action_18
action_36 (31) = happyShift action_19
action_36 (34) = happyShift action_20
action_36 (48) = happyShift action_21
action_36 (49) = happyShift action_22
action_36 (13) = happyGoto action_75
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (15) = happyShift action_17
action_37 (30) = happyShift action_18
action_37 (31) = happyShift action_19
action_37 (34) = happyShift action_20
action_37 (48) = happyShift action_21
action_37 (49) = happyShift action_22
action_37 (13) = happyGoto action_74
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (15) = happyShift action_17
action_38 (30) = happyShift action_18
action_38 (31) = happyShift action_19
action_38 (34) = happyShift action_20
action_38 (48) = happyShift action_21
action_38 (49) = happyShift action_22
action_38 (13) = happyGoto action_73
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (15) = happyShift action_17
action_39 (30) = happyShift action_18
action_39 (31) = happyShift action_19
action_39 (34) = happyShift action_20
action_39 (48) = happyShift action_21
action_39 (49) = happyShift action_22
action_39 (13) = happyGoto action_72
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (15) = happyShift action_17
action_40 (30) = happyShift action_18
action_40 (31) = happyShift action_19
action_40 (34) = happyShift action_20
action_40 (48) = happyShift action_21
action_40 (49) = happyShift action_22
action_40 (13) = happyGoto action_71
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (15) = happyShift action_17
action_41 (30) = happyShift action_18
action_41 (31) = happyShift action_19
action_41 (34) = happyShift action_20
action_41 (48) = happyShift action_21
action_41 (49) = happyShift action_22
action_41 (13) = happyGoto action_70
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (15) = happyShift action_17
action_42 (30) = happyShift action_18
action_42 (31) = happyShift action_19
action_42 (34) = happyShift action_20
action_42 (48) = happyShift action_21
action_42 (49) = happyShift action_22
action_42 (13) = happyGoto action_69
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (15) = happyShift action_17
action_43 (30) = happyShift action_18
action_43 (31) = happyShift action_19
action_43 (34) = happyShift action_20
action_43 (48) = happyShift action_21
action_43 (49) = happyShift action_22
action_43 (13) = happyGoto action_68
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (15) = happyShift action_17
action_44 (30) = happyShift action_18
action_44 (31) = happyShift action_19
action_44 (34) = happyShift action_20
action_44 (48) = happyShift action_21
action_44 (49) = happyShift action_22
action_44 (13) = happyGoto action_67
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (15) = happyShift action_17
action_45 (30) = happyShift action_18
action_45 (31) = happyShift action_19
action_45 (34) = happyShift action_20
action_45 (48) = happyShift action_21
action_45 (49) = happyShift action_22
action_45 (13) = happyGoto action_66
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (15) = happyShift action_17
action_46 (30) = happyShift action_18
action_46 (31) = happyShift action_19
action_46 (34) = happyShift action_20
action_46 (48) = happyShift action_21
action_46 (49) = happyShift action_22
action_46 (13) = happyGoto action_65
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (15) = happyShift action_17
action_47 (30) = happyShift action_18
action_47 (31) = happyShift action_19
action_47 (34) = happyShift action_20
action_47 (48) = happyShift action_21
action_47 (49) = happyShift action_22
action_47 (13) = happyGoto action_64
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (17) = happyShift action_54
action_48 (24) = happyShift action_10
action_48 (25) = happyShift action_11
action_48 (27) = happyShift action_12
action_48 (48) = happyShift action_13
action_48 (9) = happyGoto action_63
action_48 (11) = happyGoto action_8
action_48 (12) = happyGoto action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (19) = happyShift action_62
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (35) = happyShift action_36
action_50 (36) = happyShift action_37
action_50 (37) = happyShift action_38
action_50 (38) = happyShift action_39
action_50 _ = happyReduce_26

action_51 (16) = happyShift action_61
action_51 (33) = happyShift action_34
action_51 (34) = happyShift action_35
action_51 (35) = happyShift action_36
action_51 (36) = happyShift action_37
action_51 (37) = happyShift action_38
action_51 (38) = happyShift action_39
action_51 (39) = happyShift action_40
action_51 (40) = happyShift action_41
action_51 (41) = happyShift action_42
action_51 (43) = happyShift action_43
action_51 (44) = happyShift action_44
action_51 (45) = happyShift action_45
action_51 (46) = happyShift action_46
action_51 (47) = happyShift action_47
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (29) = happyShift action_60
action_52 _ = happyFail (happyExpListPerState 52)

action_53 _ = happyReduce_12

action_54 (10) = happyGoto action_59
action_54 _ = happyReduce_14

action_55 (33) = happyShift action_34
action_55 (34) = happyShift action_35
action_55 (35) = happyShift action_36
action_55 (36) = happyShift action_37
action_55 (37) = happyShift action_38
action_55 (38) = happyShift action_39
action_55 (39) = happyShift action_40
action_55 (40) = happyShift action_41
action_55 (41) = happyShift action_42
action_55 (43) = happyShift action_43
action_55 (44) = happyShift action_44
action_55 (45) = happyShift action_45
action_55 (46) = happyShift action_46
action_55 (47) = happyShift action_47
action_55 _ = happyReduce_43

action_56 (16) = happyShift action_57
action_56 (22) = happyShift action_58
action_56 _ = happyFail (happyExpListPerState 56)

action_57 (21) = happyShift action_91
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (15) = happyShift action_17
action_58 (30) = happyShift action_18
action_58 (31) = happyShift action_19
action_58 (34) = happyShift action_20
action_58 (48) = happyShift action_21
action_58 (49) = happyShift action_22
action_58 (13) = happyGoto action_90
action_58 _ = happyFail (happyExpListPerState 58)

action_59 (18) = happyShift action_89
action_59 (24) = happyShift action_10
action_59 (25) = happyShift action_11
action_59 (27) = happyShift action_12
action_59 (48) = happyShift action_13
action_59 (11) = happyGoto action_8
action_59 (12) = happyGoto action_9
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (17) = happyShift action_54
action_60 (24) = happyShift action_10
action_60 (25) = happyShift action_11
action_60 (27) = happyShift action_12
action_60 (48) = happyShift action_13
action_60 (9) = happyGoto action_88
action_60 (11) = happyGoto action_8
action_60 (12) = happyGoto action_53
action_60 _ = happyFail (happyExpListPerState 60)

action_61 _ = happyReduce_42

action_62 (15) = happyShift action_17
action_62 (30) = happyShift action_18
action_62 (31) = happyShift action_19
action_62 (34) = happyShift action_20
action_62 (48) = happyShift action_21
action_62 (49) = happyShift action_22
action_62 (13) = happyGoto action_87
action_62 _ = happyFail (happyExpListPerState 62)

action_63 _ = happyReduce_20

action_64 (33) = happyShift action_34
action_64 (34) = happyShift action_35
action_64 (35) = happyShift action_36
action_64 (36) = happyShift action_37
action_64 (37) = happyShift action_38
action_64 (38) = happyShift action_39
action_64 (39) = happyShift action_40
action_64 (40) = happyShift action_41
action_64 (41) = happyShift action_42
action_64 (43) = happyShift action_43
action_64 (44) = happyShift action_44
action_64 (45) = happyShift action_45
action_64 (46) = happyShift action_46
action_64 (47) = happyFail []
action_64 _ = happyReduce_34

action_65 (33) = happyShift action_34
action_65 (34) = happyShift action_35
action_65 (35) = happyShift action_36
action_65 (36) = happyShift action_37
action_65 (37) = happyShift action_38
action_65 (38) = happyShift action_39
action_65 (39) = happyShift action_40
action_65 (40) = happyShift action_41
action_65 (41) = happyShift action_42
action_65 (43) = happyShift action_43
action_65 (44) = happyShift action_44
action_65 (45) = happyShift action_45
action_65 (46) = happyFail []
action_65 _ = happyReduce_33

action_66 (33) = happyShift action_34
action_66 (34) = happyShift action_35
action_66 (35) = happyShift action_36
action_66 (36) = happyShift action_37
action_66 (37) = happyShift action_38
action_66 (38) = happyShift action_39
action_66 (41) = happyFail []
action_66 (43) = happyFail []
action_66 (44) = happyFail []
action_66 (45) = happyFail []
action_66 _ = happyReduce_38

action_67 (33) = happyShift action_34
action_67 (34) = happyShift action_35
action_67 (35) = happyShift action_36
action_67 (36) = happyShift action_37
action_67 (37) = happyShift action_38
action_67 (38) = happyShift action_39
action_67 (41) = happyFail []
action_67 (43) = happyFail []
action_67 (44) = happyFail []
action_67 (45) = happyFail []
action_67 _ = happyReduce_40

action_68 (33) = happyShift action_34
action_68 (34) = happyShift action_35
action_68 (35) = happyShift action_36
action_68 (36) = happyShift action_37
action_68 (37) = happyShift action_38
action_68 (38) = happyShift action_39
action_68 (41) = happyFail []
action_68 (43) = happyFail []
action_68 (44) = happyFail []
action_68 (45) = happyFail []
action_68 _ = happyReduce_37

action_69 (33) = happyShift action_34
action_69 (34) = happyShift action_35
action_69 (35) = happyShift action_36
action_69 (36) = happyShift action_37
action_69 (37) = happyShift action_38
action_69 (38) = happyShift action_39
action_69 (41) = happyFail []
action_69 (43) = happyFail []
action_69 (44) = happyFail []
action_69 (45) = happyFail []
action_69 _ = happyReduce_39

action_70 (33) = happyShift action_34
action_70 (34) = happyShift action_35
action_70 (35) = happyShift action_36
action_70 (36) = happyShift action_37
action_70 (37) = happyShift action_38
action_70 (38) = happyShift action_39
action_70 (39) = happyFail []
action_70 (40) = happyFail []
action_70 (41) = happyShift action_42
action_70 (43) = happyShift action_43
action_70 (44) = happyShift action_44
action_70 (45) = happyShift action_45
action_70 _ = happyReduce_36

action_71 (33) = happyShift action_34
action_71 (34) = happyShift action_35
action_71 (35) = happyShift action_36
action_71 (36) = happyShift action_37
action_71 (37) = happyShift action_38
action_71 (38) = happyShift action_39
action_71 (39) = happyFail []
action_71 (40) = happyFail []
action_71 (41) = happyShift action_42
action_71 (43) = happyShift action_43
action_71 (44) = happyShift action_44
action_71 (45) = happyShift action_45
action_71 _ = happyReduce_35

action_72 (36) = happyShift action_37
action_72 _ = happyReduce_31

action_73 (36) = happyShift action_37
action_73 _ = happyReduce_30

action_74 (36) = happyShift action_37
action_74 _ = happyReduce_32

action_75 (36) = happyShift action_37
action_75 _ = happyReduce_29

action_76 _ = happyReduce_28

action_77 (35) = happyShift action_36
action_77 (36) = happyShift action_37
action_77 (37) = happyShift action_38
action_77 (38) = happyShift action_39
action_77 _ = happyReduce_27

action_78 (16) = happyShift action_86
action_78 (22) = happyShift action_58
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (15) = happyShift action_17
action_79 (30) = happyShift action_18
action_79 (31) = happyShift action_19
action_79 (34) = happyShift action_20
action_79 (48) = happyShift action_21
action_79 (49) = happyShift action_22
action_79 (13) = happyGoto action_85
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (17) = happyShift action_54
action_80 (24) = happyShift action_10
action_80 (25) = happyShift action_11
action_80 (27) = happyShift action_12
action_80 (42) = happyShift action_84
action_80 (48) = happyShift action_13
action_80 (9) = happyGoto action_83
action_80 (11) = happyGoto action_8
action_80 (12) = happyGoto action_53
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (48) = happyShift action_30
action_81 (8) = happyGoto action_82
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_7

action_83 _ = happyReduce_4

action_84 (15) = happyShift action_17
action_84 (30) = happyShift action_18
action_84 (31) = happyShift action_19
action_84 (34) = happyShift action_20
action_84 (48) = happyShift action_21
action_84 (49) = happyShift action_22
action_84 (13) = happyGoto action_93
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (33) = happyShift action_34
action_85 (34) = happyShift action_35
action_85 (35) = happyShift action_36
action_85 (36) = happyShift action_37
action_85 (37) = happyShift action_38
action_85 (38) = happyShift action_39
action_85 (39) = happyShift action_40
action_85 (40) = happyShift action_41
action_85 (41) = happyShift action_42
action_85 (43) = happyShift action_43
action_85 (44) = happyShift action_44
action_85 (45) = happyShift action_45
action_85 (46) = happyShift action_46
action_85 (47) = happyShift action_47
action_85 _ = happyReduce_10

action_86 _ = happyReduce_41

action_87 (22) = happyShift action_92
action_87 (33) = happyShift action_34
action_87 (34) = happyShift action_35
action_87 (35) = happyShift action_36
action_87 (36) = happyShift action_37
action_87 (37) = happyShift action_38
action_87 (38) = happyShift action_39
action_87 (39) = happyShift action_40
action_87 (40) = happyShift action_41
action_87 (41) = happyShift action_42
action_87 (43) = happyShift action_43
action_87 (44) = happyShift action_44
action_87 (45) = happyShift action_45
action_87 (46) = happyShift action_46
action_87 (47) = happyShift action_47
action_87 _ = happyFail (happyExpListPerState 87)

action_88 _ = happyReduce_19

action_89 _ = happyReduce_11

action_90 (33) = happyShift action_34
action_90 (34) = happyShift action_35
action_90 (35) = happyShift action_36
action_90 (36) = happyShift action_37
action_90 (37) = happyShift action_38
action_90 (38) = happyShift action_39
action_90 (39) = happyShift action_40
action_90 (40) = happyShift action_41
action_90 (41) = happyShift action_42
action_90 (43) = happyShift action_43
action_90 (44) = happyShift action_44
action_90 (45) = happyShift action_45
action_90 (46) = happyShift action_46
action_90 (47) = happyShift action_47
action_90 _ = happyReduce_44

action_91 _ = happyReduce_18

action_92 (15) = happyShift action_17
action_92 (30) = happyShift action_18
action_92 (31) = happyShift action_19
action_92 (34) = happyShift action_20
action_92 (48) = happyShift action_21
action_92 (49) = happyShift action_22
action_92 (13) = happyGoto action_95
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (21) = happyShift action_94
action_93 (33) = happyShift action_34
action_93 (34) = happyShift action_35
action_93 (35) = happyShift action_36
action_93 (36) = happyShift action_37
action_93 (37) = happyShift action_38
action_93 (38) = happyShift action_39
action_93 (39) = happyShift action_40
action_93 (40) = happyShift action_41
action_93 (41) = happyShift action_42
action_93 (43) = happyShift action_43
action_93 (44) = happyShift action_44
action_93 (45) = happyShift action_45
action_93 (46) = happyShift action_46
action_93 (47) = happyShift action_47
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_5

action_95 (20) = happyShift action_96
action_95 (33) = happyShift action_34
action_95 (34) = happyShift action_35
action_95 (35) = happyShift action_36
action_95 (36) = happyShift action_37
action_95 (37) = happyShift action_38
action_95 (38) = happyShift action_39
action_95 (39) = happyShift action_40
action_95 (40) = happyShift action_41
action_95 (41) = happyShift action_42
action_95 (43) = happyShift action_43
action_95 (44) = happyShift action_44
action_95 (45) = happyShift action_45
action_95 (46) = happyShift action_46
action_95 (47) = happyShift action_47
action_95 _ = happyFail (happyExpListPerState 95)

action_96 (23) = happyShift action_97
action_96 _ = happyFail (happyExpListPerState 96)

action_97 (17) = happyShift action_54
action_97 (24) = happyShift action_10
action_97 (25) = happyShift action_11
action_97 (27) = happyShift action_12
action_97 (48) = happyShift action_13
action_97 (9) = happyGoto action_98
action_97 (11) = happyGoto action_8
action_97 (12) = happyGoto action_53
action_97 _ = happyFail (happyExpListPerState 97)

action_98 _ = happyReduce_21

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

happyReduce_5 = happyReduce 8 6 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (Func happy_var_2 (reverse happy_var_4) [CallSt (TId "return" 0 0 0) [happy_var_7]]
	) `HappyStk` happyRest

happyReduce_6 = happySpecReduce_1  7 happyReduction_6
happyReduction_6 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_6 _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  7 happyReduction_7
happyReduction_7 (HappyAbsSyn8  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_3 : happy_var_1
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_0  7 happyReduction_8
happyReduction_8  =  HappyAbsSyn7
		 ([]
	)

happyReduce_9 = happySpecReduce_1  8 happyReduction_9
happyReduction_9 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (Arg    happy_var_1
	)
happyReduction_9 _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  8 happyReduction_10
happyReduction_10 (HappyAbsSyn13  happy_var_3)
	_
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn8
		 (DefArg happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  9 happyReduction_11
happyReduction_11 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (reverse happy_var_2
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_1  9 happyReduction_12
happyReduction_12 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn9
		 (reverse happy_var_1
	)
happyReduction_12 _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_2  10 happyReduction_13
happyReduction_13 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_2 ++ happy_var_1
	)
happyReduction_13 _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_0  10 happyReduction_14
happyReduction_14  =  HappyAbsSyn10
		 ([]
	)

happyReduce_15 = happySpecReduce_2  11 happyReduction_15
happyReduction_15 _
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn11
		 ([happy_var_1]
	)
happyReduction_15 _ _  = notHappyAtAll 

happyReduce_16 = happySpecReduce_3  11 happyReduction_16
happyReduction_16 _
	(HappyTerminal happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (happy_var_2 : happy_var_1
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happySpecReduce_3  12 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn13  happy_var_2)
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (reverse $ assign happy_var_1 happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 5 12 happyReduction_18
happyReduction_18 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 ([CallSt happy_var_1 (reverse happy_var_3)]
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 5 12 happyReduction_19
happyReduction_19 ((HappyAbsSyn9  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn9  happy_var_3) `HappyStk`
	(HappyAbsSyn13  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 ([If happy_var_2 happy_var_3 happy_var_5]
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 4 12 happyReduction_20
happyReduction_20 ((HappyAbsSyn9  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 ([While happy_var_2 happy_var_4]
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 10 12 happyReduction_21
happyReduction_21 ((HappyAbsSyn9  happy_var_10) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn12
		 ([ While (Binary (TLE 0 0 0) (Const happy_var_2) (Const $ endRange happy_var_2)) happy_var_10,
            Assign (endRange happy_var_2) happy_var_5, Assign happy_var_2 happy_var_5 ]
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  13 happyReduction_22
happyReduction_22 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn13
		 (Const happy_var_1
	)
happyReduction_22 _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  13 happyReduction_23
happyReduction_23 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn13
		 (Const happy_var_1
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_1  13 happyReduction_24
happyReduction_24 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn13
		 (Const happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  13 happyReduction_25
happyReduction_25 (HappyTerminal happy_var_1)
	 =  HappyAbsSyn13
		 (Const happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_2  13 happyReduction_26
happyReduction_26 (HappyAbsSyn13  happy_var_2)
	(HappyTerminal happy_var_1)
	 =  HappyAbsSyn13
		 (Unary happy_var_1 happy_var_2
	)
happyReduction_26 _ _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_3  13 happyReduction_27
happyReduction_27 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_27 _ _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_3  13 happyReduction_28
happyReduction_28 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_28 _ _ _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_3  13 happyReduction_29
happyReduction_29 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_29 _ _ _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  13 happyReduction_30
happyReduction_30 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  13 happyReduction_31
happyReduction_31 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  13 happyReduction_32
happyReduction_32 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  13 happyReduction_33
happyReduction_33 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  13 happyReduction_34
happyReduction_34 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  13 happyReduction_35
happyReduction_35 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  13 happyReduction_36
happyReduction_36 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  13 happyReduction_37
happyReduction_37 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  13 happyReduction_38
happyReduction_38 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  13 happyReduction_39
happyReduction_39 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  13 happyReduction_40
happyReduction_40 (HappyAbsSyn13  happy_var_3)
	(HappyTerminal happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (Binary happy_var_2 happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happyReduce 4 13 happyReduction_41
happyReduction_41 (_ `HappyStk`
	(HappyAbsSyn14  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn13
		 (Call happy_var_1 (reverse happy_var_3)
	) `HappyStk` happyRest

happyReduce_42 = happySpecReduce_3  13 happyReduction_42
happyReduction_42 _
	(HappyAbsSyn13  happy_var_2)
	_
	 =  HappyAbsSyn13
		 (happy_var_2
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_1  14 happyReduction_43
happyReduction_43 (HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn14
		 ([happy_var_1]
	)
happyReduction_43 _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_3  14 happyReduction_44
happyReduction_44 (HappyAbsSyn13  happy_var_3)
	_
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn14
		 (happy_var_3 : happy_var_1
	)
happyReduction_44 _ _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_0  14 happyReduction_45
happyReduction_45  =  HappyAbsSyn14
		 ([]
	)

happyNewToken action sts stk [] =
	action 50 50 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TLParen     _ _ _ -> cont 15;
	TRParen     _ _ _ -> cont 16;
	TLBrace     _ _ _ -> cont 17;
	TRBrace     _ _ _ -> cont 18;
	TLBracket   _ _ _ -> cont 19;
	TRBracket   _ _ _ -> cont 20;
	TSep        _ _ _ -> cont 21;
	TComma      _ _ _ -> cont 22;
	TDo         _ _ _ -> cont 23;
	TWhile      _ _ _ -> cont 24;
	TFor        _ _ _ -> cont 25;
	TFun        _ _ _ -> cont 26;
	TIf         _ _ _ -> cont 27;
	TIn         _ _ _ -> cont 28;
	TElse       _ _ _ -> cont 29;
	TTrue       _ _ _ -> cont 30;
	TFalse      _ _ _ -> cont 31;
	TAssign     _ _ _ -> cont 32;
	TPlus       _ _ _ -> cont 33;
	TMinus      _ _ _ -> cont 34;
	TMult       _ _ _ -> cont 35;
	TPower      _ _ _ -> cont 36;
	TDiv        _ _ _ -> cont 37;
	TMod        _ _ _ -> cont 38;
	TEQ         _ _ _ -> cont 39;
	TNEQ        _ _ _ -> cont 40;
	TGT         _ _ _ -> cont 41;
	TArr        _ _ _ -> cont 42;
	TGE         _ _ _ -> cont 43;
	TLT         _ _ _ -> cont 44;
	TLE         _ _ _ -> cont 45;
	TAnd        _ _ _ -> cont 46;
	TOr         _ _ _ -> cont 47;
	TId  _      _ _ _ -> cont 48;
	TNum _      _ _ _ -> cont 49;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 50 tk tks = happyError' (tks, explist)
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


endRange (TId str _ _ _) = TId ("e$" ++ str) 0 0 0

assign binds expr = zipWith Assign binds (expr : map Const binds)

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
