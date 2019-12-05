BEGIN 7C#Y#TOB
IF ~Global("7C#Yoshi_ToB","GLOBAL",1)
NumberOfTimesTalkedTo(0)
!AreaCheck("AR0603")
AreaCheck("AR4500")~ BEGIN 7C#Yoshi_join_tob
SAY @0
IF ~~ REPLY @1 DO ~SetGlobal("7C#Yoshi_ToB","GLOBAL",2)
ActionOverride(%yoshi%,JoinParty())~ EXIT
IF ~NumInPartyGT(5)~ REPLY @2 DO ~SetGlobal("7C#Yoshi_ToB","GLOBAL",2)
ActionOverride(%yoshi%,MoveToPointNoInterrupt([2231.1468]))
Face(6)~ EXIT
IF ~~ REPLY @3 DO ~SetGlobal("7C#Yoshi_ToB","GLOBAL",2)
ActionOverride(%yoshi%,MoveToPointNoInterrupt([2231.1468]))
Face(6)~ EXIT
END