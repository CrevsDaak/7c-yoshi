APPEND YOSHJ

IF ~Global("7C#SpellHold","GLOBAL",1)
!Global("7C#Mages","GLOBAL",1)
GlobalTimerExpired("7C#YoshiTrigger","GLOBAL")~ THEN BEGIN "7C#Q1"
SAY @0
++ @1 DO ~SetGlobal("7C#Yoshi","GLOBAL",2)~ + "7C#Q7"
++ @2 DO ~SetGlobal("7C#Yoshi","GLOBAL",2)~ +"7C#Q4"
++ @3 DO ~SetGlobal("7C#Yoshi","GLOBAL",2)~ + "7C#Q5"
END

IF ~~ THEN BEGIN "7C#Q4"
SAY @4
++ @5 + "7C#Q7"
++ @6 + "7C#Q7"
END

IF ~~ THEN BEGIN "7C#Q5"
SAY @7
IF ~~ THEN GOTO "7C#Q7"
END

IF ~~ THEN BEGIN "7C#Q7"
SAY @8
= @9
++ @10 + "7C#Q9"
END

IF ~~ THEN BEGIN "7C#Q9"
SAY @11
= @12
++ @13 + "7C#Q15"
++ @14 + "7C#Q12"
END

IF ~~ THEN BEGIN "7C#Q12"
SAY @15
++ @16 + "7C#Q36"
++ @17 + "7C#Q19"
END

IF ~~ THEN BEGIN "7C#Q15"
SAY @18
++ @19 + "7C#Q17"
END

IF ~~ THEN BEGIN "7C#Q17"
SAY @20
++ @21 + "7C#Q19"
END

IF ~~ THEN BEGIN "7C#Q19"
SAY @22
++ @23 + "7C#Q22"
++ @24 + "7C#Q22"
++ @25 + "7C#Q21"
END

IF ~~ THEN BEGIN "7C#Q21"
SAY @26
++ @27 + "7C#Q22"
++ @28 + "7C#Q36"
END

IF ~~ THEN BEGIN "7C#Q22"
SAY @29
= @30
++ @31 + "7C#Q23"
END

IF ~~ THEN BEGIN "7C#Q23"
SAY @32
= @33
++ @34 + "7C#Q24"
++ @35 + "7C#Q24a"
END

IF ~~ THEN BEGIN "7C#Q24"
SAY @36
++ @37 + "7C#Q26"
END

IF ~~ THEN BEGIN "7C#Q24a"
SAY @38
++ @37 + "7C#Q26"
END

IF ~~ THEN BEGIN "7C#Q26"
SAY @39
= @40
++ @41 + "7C#Q28"
+ ~Class(Player1,MAGE_ALL)~ + @42 + "7C#Q28"
END

IF ~~ THEN BEGIN "7C#Q28"
SAY @43
= @44
= @45
= @46
= /*whew, long monologue, eh?*/ @47
= @48
++ @49 + "7C#Q31"
++ @50 + "7C#Q33"
END

IF ~~ THEN BEGIN "7C#Q31"
SAY @51
++ @52 + "7C#Q33"
END

IF ~~ THEN BEGIN "7C#Q33" //Monologue v2 :P
SAY @53
= @54
= @55
= @56
= @57
= @58
= @59
= @60
++ @61 + "7C#Q36"
++ @62 + "7C#Q35"
END //Finally

IF ~~ THEN BEGIN "7C#Q36"
SAY @63
++ @64 + "7C#Q39"
++ @65 + "7C#Q40"
END

IF ~~ THEN BEGIN "7C#Q35"
SAY @66
= @67
= @68
++ @69 + "7C#Q42"
END

IF ~~ THEN BEGIN "7C#Q39"
SAY @70
= @71
IF ~~ THEN DO ~GiveItemCreate("7C#KAT01",Player1,0,0,0) 
GivePartyAllEquipment() 
DestroyItem("NPSW02") 
DestroySelf() 
LeaveParty()~ EXIT
END

IF ~~ THEN BEGIN "7C#Q40"
SAY @72
= @73
IF ~~ THEN DO ~GivePartyAllEquipment() 
LeaveParty() 
DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN "7C#Q42"
SAY @74
= @75
++ @76 + "7C#Q36"
++ @77 + "7C#Q44"
END

IF ~~ THEN BEGIN "7C#Q44"
SAY @78
++ @79 EXIT
++ @80 + "7C#Q47"
END

IF ~~ THEN BEGIN "7C#Q47" //LAST ONE!
SAY @81
++ @82 EXIT
++ @83 EXIT
++ @84 EXIT
END
END