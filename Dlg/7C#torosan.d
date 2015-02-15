BEGIN "7C#Toro"
APPEND "7C#Toro"
IF ~True()~ THEN BEGIN 1
SAY @0
++ @1 + 2
++ @2 + 2
++ @3 + 3
END

IF ~~ THEN BEGIN 2
SAY @4
++ @5 EXTERN YOSHJ "7C#Toro"
++ @6 + 4
END

IF ~~ THEN BEGIN 3
SAY @7
++ @8 + 2
++ @9 + 5
++ @10 + 6
+ ~Class(Player1,MAGE_ALL)~ + @11 + 13
END

IF ~~ THEN BEGIN 4
SAY @12
++ @13 EXTERN YOSHJ "7C#T1"
++ @14 + 2
++ @15 + 2
END

IF ~~ THEN BEGIN 5
SAY @16
IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 6
SAY @17
++ @18 + 7
++ @19 + 6.1
+ ~InParty("Jan")
!StateCheck("Jan",CD_STATE_NOTVALID)~ + @20 EXTERN JANJ "7C#1"
END

IF ~~ THEN BEGIN 6.1
SAY @21
+ ~InParty("Jan")~ + @22 + 2
++ @23 + 6.2
END

IF ~~ THEN BEGIN 6.2
SAY @24
IF ~~ THEN GOTO 2
END
END

APPEND YOSHJ
IF ~~ THEN BEGIN "7C#Toro"
SAY @25
IF ~~ THEN EXTERN "7C#Toro" 7
END

IF ~~ THEN BEGIN "7C#T1"
SAY @26
++ @27 + "7C#t2"
++ @28 EXTERN "7C#Toro" 7.1
END

IF ~~ THEN BEGIN "7C#t2"
SAY @29
IF ~~ THEN EXTERN "7C#Toro" 11
END

IF ~~ THEN BEGIN "7C#t3"
SAY @30
IF ~~ THEN EXTERN "7C#Toro" 11
END

IF ~~ THEN BEGIN "7C#t4"
SAY @31
++ @32 EXIT
END

END
APPEND "7C#Toro"
IF ~~ THEN BEGIN 7
SAY @33
= @34
= @35
++ @36 EXTERN YOSHJ "7C#T1"
++ @37 + 8
++ @38 + 9
++ @39 + 10
END

IF ~~ THEN BEGIN 7.1
SAY @40
IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 8
SAY @41
= @42
++ @43 + 10
++ @44 + 12
END

IF ~~ THEN BEGIN 9
SAY @45
= @46
IF ~~  THEN EXTERN YOSHJ "7C#t3"
END

IF ~~ THEN BEGIN 10
SAY @47
IF ~~ THEN DO ~ActionOverride(%yoshi%,LeaveParty())
ActionOverride(%yoshi%,DestroySelf())~ EXIT
END

IF ~~ THEN BEGIN 11
SAY @49
++ @43 + 10
++ @44 + 12
END

IF ~~ THEN BEGIN 12
SAY @50
IF ~~ THEN DO ~Enemy()
ActionOverride("7C#Demor",Enemy())~
EXIT
END

IF ~~ THEN BEGIN 13
SAY @51 //LULZ! All typos are meant!
++ @52 + 14
+ ~CheckStatGT(Player1,14,INT)~ + @53 + 15
END

IF ~~ THEN BEGIN 14
SAY @54
++ @55 + 16 //a bit obvious, for those who don't get it
END

IF ~~ THEN BEGIN 15
SAY @56
++ @57 + 16
++ @58 + 17
+ ~CheckStatGT(Player1,18,INT)~ + @59 + 18
END

IF ~~ THEN BEGIN 16
SAY @60
++ @61 + 2
++ @62 + 2
END

IF ~~ THEN BEGIN 17
SAY @63
++ @64 + 18
++ @65 + 16
++ @66 + 2
END

IF ~~ THEN BEGIN 19
SAY @67
++ @64 + 18
++ @65 + 16
++ @66 + 2
END

IF ~~ THEN BEGIN 18
SAY @68
= @69
++ @70 DO ~GiveItemCreate("7C#kat2",Player1,1,0,0)
EscapeAreaDestroy(4)
ActionOverride("7C#Demor",EscapeAreaDestroy(4))~ EXTERN YOSHJ ~7C#t4~
++ @71 + 16
END

END

APPEND JANJ
IF ~!StateCheck("Jan",CD_STATE_NOTVALID)~ THEN BEGIN "7C#1"
SAY @72
= @73
IF ~~ THEN EXTERN "7C#Toro" 6.1
END
END