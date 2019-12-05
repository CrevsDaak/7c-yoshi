APPEND "YOSHP"
IF ~!InPartyAllowDead("IMOEN2")
Global("7C#Yoshi_Brynnlaw","GLOBAL",2)
Global("7C#SpellHold","GLOBAL",1)
Global("7C#Yoshi","GLOBAL",1)~ THEN BEGIN ~7C#Brynn1~
SAY @0
++ @1 EXIT
+ ~Global("7C#SpellHold","GLOBAL",1)~ + @2 + "7C#Brynn2"
END

IF ~InPartyAllowDead("IMOEN2")
Global("7C#Yoshi","GLOBAL",1)~ THEN BEGIN ~7C#Brynn1.1~
SAY @3
++ @4 GOTO ~7C#Brynn2.i~
++ @5 + "7C#Brynn1.2"
END

IF ~~ THEN BEGIN ~7C#Brynn1.2~
SAY @6
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN "7C#Brynn2"
SAY @7
++ @8 DO ~SetDialogue("YOSHIMO")~ + "7C#Brynn3"
++ @10 DO ~SetDialogue("YOSHIMO")~ EXIT
END

IF ~~ THEN BEGIN "7C#Brynn2.i"
SAY @11
++ @8 + "7C#Brynn3"
++ @10 DO ~JoinParty()
SetDialogue("YOSHJ")~ EXIT
END

IF ~~ THEN BEGIN "7C#Brynn3"
SAY @12
++ @13 + "7C#Brynn4"
++ @14 DO ~JoinParty()
SetDialogue("YOSHJ")~ EXIT
END

IF ~~ THEN BEGIN "7C#Brynn4"
SAY @15
+ ~Class(Player1,MAGE_ALL)~ + @16 + "7C#Brynn5"
IF ~!Class(Player1,MAGE_ALL)~ THEN DO ~SetDialogue("YOSHJ") 
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN "7C#Brynn5"
SAY @17
++ @18 DO ~JoinParty()
SetGlobal("7C#YoshiLeftPreSpell","GLOBAL",1)
SetGlobal("7C#BlatantStarWarsRef","GLOBAL",1)
SetDialogue("YOSHJ")~ EXIT
END
END