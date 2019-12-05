APPEND YOSHJ

IF ~Global("7C#Yoshi_Brynnlaw","GLOBAL",2)
Global("7C#Yoshi","GLOBAL",1)
GlobalTimerExpired("7C#Yoshi_Brynnlaw","GLOBAL")~ THEN BEGIN "7C#1"
SAY @0
IF ~~ THEN REPLY @1 GOTO "7C#8"
IF ~~ THEN REPLY @2 GOTO "7C#5"
IF ~~ THEN REPLY @3 GOTO "7C#5"
END

IF ~~ THEN BEGIN "7C#5"
SAY @4
IF ~~ THEN REPLY @5 GOTO "7C#8"
IF ~~ THEN REPLY @6 GOTO "7C#9"
END

IF ~~ THEN BEGIN "7C#8"
SAY @7
IF ~~ THEN REPLY @8 GOTO "7C#25"
IF ~~ THEN REPLY @9 GOTO "7C#25"
IF ~~ THEN REPLY @10 GOTO "7C#17"
IF ~!Class(Player1,MAGE_ALL)~ THEN REPLY @11 GOTO "7C#18"
END

IF ~~ BEGIN "7C#9"
SAY @12
IF ~~ THEN DO ~LeaveParty() SetGlobal("7C#Yoshi","GLOBAL",1) EscapeAreaMove("ar1602",840,130,12) SetDialog("YOSHIP") NoAction()~ EXIT
END

IF ~~ THEN BEGIN "7C#17"
SAY @13
IF ~~ THEN REPLY @14 GOTO "7C#25"
IF ~~ THEN REPLY @15 GOTO "7C#25"
END

IF ~~ THEN BEGIN "7C#18"
SAY @16
IF ~~ THEN REPLY @17 GOTO "7C#25"
IF ~~ THEN REPLY @18 GOTO "7C#23"
END

IF ~~ THEN BEGIN "7C#23"
SAY @19
IF ~~ THEN DO ~LeaveParty() SetGlobal("7C#Yoshi","GLOBAL",1) EscapeAreaMove("ar1602",840,130,12) SetLeavePartyDialogFile() NoAction()~ EXIT
END

IF ~~ THEN BEGIN "7C#25"
SAY @20
++ @21 + "7C#27"
END

IF ~~ THEN BEGIN "7C#27"
SAY @22
++ @23 + "7C#31"
++ @24 + "7C#32"
+ ~!Class(Player1,MAGE_ALL)~ + @25 + "7C#32"
END

IF ~~ THEN BEGIN "7C#32"
SAY @26
IF ~~ THEN GOTO "7C#31"
END

IF ~~ THEN BEGIN "7C#31"
SAY @27
++ @28 + "7C#35"
++ @29 + "7C#36"
END

IF ~~ THEN BEGIN "7C#35"
SAY @30
++ @31 + "7C#42"
++ @32/* DO ~IncrementGlobal("7C#Yoshi","GLOBAL",1)~*/ + "7C#44"
END

IF ~~ THEN BEGIN "7C#36"
SAY @33
++ @34 + "7C#44"
++ @35 + "7C#43"
END

IF ~~ THEN BEGIN "7C#42"
SAY @36
IF ~~ THEN DO ~~ GOTO "7C#44"
END

IF ~~ THEN BEGIN "7C#43"
SAY @37
++ @38 + "7C#44"
++ @39 + "7C#49"
END

IF ~~ THEN BEGIN "7C#44"
SAY @40
++ @41 + "7C#48"
END

IF ~~ THEN BEGIN "7C#48"
SAY @42
+ ~!Class(Player1,THIEF_ALL)~ + @43 + "7C#53"
++ @44 + "7C#56"
++ @45 + "7C#57"
END

IF ~~ THEN BEGIN "7C#49"
SAY @46
IF ~~ THEN DO ~EscapeAreaMove("ar1602",840,130,12) LeaveParty() SetGlobal("7C#Yoshi","GLOBAL",1) SetLeavePartyDialogFile() NoAction()~ EXIT
END

IF ~~ THEN BEGIN "7C#53"
SAY @47
++ @48 + "7C#56"
++ @49 + "7C#57"
END

IF ~~ THEN BEGIN "7C#56"
SAY @50
++ @51 + "7C#62"
END

IF ~~ THEN BEGIN "7C#57"
SAY @52
++ @53 DO ~EscapeAreaMove("ar1602",840,130,12) LeaveParty() SetGlobal("7C#Yoshi","GLOBAL",1) SetLeavePartyDialogFile() NoAction()~ EXIT
++ @54 + "7C#63" //Good insult?
++ @55 + "7C#64"
END

IF ~~ THEN BEGIN "7C#62"
SAY @56
IF ~~ THEN DO ~LeaveParty() SetGlobal("7C#Yoshi","GLOBAL",1) EscapeAreaMove("ar1602",840,130,12) 
SetGlobal("ButtPluggingCumBubble","GLOBAL",1) SetLeavePartyDialogFile() NoAction()~ EXIT
END

IF ~~ THEN BEGIN "7C#63"
SAY @57
IF ~~ THEN DO ~LeaveParty() SetGlobal("7C#Yoshi","GLOBAL",1)
EscapeAreaMove("ar1602",840,130,12) SetLeavePartyDialogueFile() NoAction()~ EXIT
END

IF ~~ THEN BEGIN "7C#64"
SAY @58
IF ~~ THEN DO ~LeaveParty() SetGlobal("7C#Yoshi","GLOBAL",1) Enemy() Attack(Player1)~ EXIT
END
END

/*
APPEND FATESP
IF ~~ THEN BEGIN "7C#11"
SAY @59
IF ~~ THEN DO ~ CreateVisualEffect("SPPORTAL",[1999.1218])
        Wait(2)
        CreateCreature("Yoshi15",[1999.1218],0) //Yoshi
        SetGlobal("YoshimoSpawnPlane","GLOBAL",1)
	SetGlobal("7C#Yoshi_ToB","GLOBAL",1)~ EXIT
END
END

ALTER_TRANS FATESP
BEGIN 6 END
BEGIN 15 END
BEGIN "EPILOGUE" ~GOTO 7C#11~
END
*/

ALTER_TRANS PPINN01 // file name
BEGIN 10 END // state number
BEGIN 0 END // transition number
BEGIN // list of changes
  "EPILOGUE" ~EXTERN YOSHJ 7C#1~
END

ADD_STATE_TRIGGER "YOSHP" "0" ~!Global("7C#Yoshi","GLOBAL",1)~
ADD_STATE_TRIGGER "YOSHP" "4" ~!Global("7C#Yoshi","GLOBAL",1)~