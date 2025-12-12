CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",8)~ THEN C0AURA2P quest3-8
~Hey there, <CHARNAME>! Don't worry, I won't forget to find you. I'll only spend a bit of time here to catch up.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2Quest3","GLOBAL",39)~ THEN C0AURA2P quest3-39-fight
~I'll back you up with my arrows, <CHARNAME>!~
DO ~ApplySpellRES("c0aqef24",Myself)
ChangeEnemyAlly(Myself,ALLY)~ EXIT

APPEND C0AURA2P

IF WEIGHT #-1 ~Global("C0AuraKilledInnocents","GLOBAL",1)~ angry
SAY ~Wh-- what have you done? WHAT HAVE YOU DONE?!~
IF ~~ DO ~SetGlobal("C0AuraKilledInnocents","GLOBAL",2)
    ChangeAIScript("",DEFAULT)
    LeaveParty()
    Enemy()~ EXIT
END

IF WEIGHT #-1 ~Global("C0AuraKnowsBG1","GLOBAL",1) HappinessLT(Myself,-299)~ unhappy1
SAY ~You've... you've changed, <CHARNAME>. I-- I'm sorry, but... I can't bear this anymore. I'm leaving.~
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)
!Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~EscapeArea()~ EXIT
IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3) EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~!Global("C0AuraKnowsBG1","GLOBAL",1) HappinessLT(Myself,-299)~ unhappy2
SAY ~I-- I'm sorry, but... I can't bear this anymore. I'm leaving.~
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)
!Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~EscapeArea()~ EXIT
IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3) EscapeArea()~ EXIT
END

IF ~!Global("C0AuraRomanceActive","GLOBAL",1)
!Global("C0AuraRomanceActive","GLOBAL",2)
Global("KickedOut","LOCALS",0)~ a1
SAY ~Are you sure you want me to go, <CHARNAME>? I'm still happy to stay in your company.~
++ ~Never mind. Stay in the group.~ + a1.1
+ ~!Global("chapter","GLOBAL",%bg2_chapter_4%)
!Global("chapter","GLOBAL",%bg2_chapter_5%)
!Global("chapter","GLOBAL",%bg2_chapter_7%)~ + ~I'd rather we part ways for the moment.~ + a1.2a
+ ~OR(3)
Global("chapter","GLOBAL",%bg2_chapter_4%)
Global("chapter","GLOBAL",%bg2_chapter_5%)
Global("chapter","GLOBAL",%bg2_chapter_7%)~ + ~I'd rather we part ways for the moment.~ + a1.2b
END

IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)
Global("KickedOut","LOCALS",0)~ a1
SAY ~Aww... I really don't want to leave you, <CHARNAME>, but... I'm sure you know best. Are you sure you don't need me anymore?~
++ ~Never mind. Stay in the group.~ + a1.1
+ ~!Global("chapter","GLOBAL",%bg2_chapter_4%)
!Global("chapter","GLOBAL",%bg2_chapter_5%)
!Global("chapter","GLOBAL",%bg2_chapter_7%)~ + ~I'd rather we part ways for the moment.~ + a1.2a
+ ~OR(3)
Global("chapter","GLOBAL",%bg2_chapter_4%)
Global("chapter","GLOBAL",%bg2_chapter_5%)
Global("chapter","GLOBAL",%bg2_chapter_7%)~ + ~I'd rather we part ways for the moment.~ + a1.2b
END

IF ~~ a1.1
SAY ~Okay. Let's continue as we were, then.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ a1.2a
SAY ~If you say so. I'll make my way back to the workshop. If you need my help in any way, look for me there.~
++ ~Very well. See you there.~ + a1.3
+ ~!AreaCheck("c0au01")~ + ~Remain here for now. I'll come back for you.~ + a1.4
++ ~Actually, I've changed my mind. Stay.~ + a1.1
END

IF ~~ a1.2b
SAY ~Well, this... is kinda unfortunate, but if I must, I'll try and find a way to escape this place. I'm not sure how long it'll be before we meet again, if at all. Are you sure you want me to go?~
++ ~I am sure. Good luck, Aura.~ + a1.3
++ ~Actually, I've changed my mind. Stay.~ + a1.1
END

IF ~~ a1.3
SAY ~Alright. See you around, <CHARNAME>.~
IF ~!AreaCheck("c0au01")~ DO ~SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("C0AU01",433,196,NW)
ActionOverride("c0auin3",EscapeAreaMove("C0AU01",214,370,S))~ EXIT
IF ~AreaCheck("c0au01")~ DO ~SetGlobal("KickedOut","LOCALS",1)
ActionOverride("c0auin3",MoveToPoint([214.370])~ EXIT
END
IF ~~ a1.4
SAY ~Ugh, if you insist. Come back soon, okay?~
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",1)~ EXIT
END

IF ~AreaCheck("C0AU01")
Global("KickedOut","LOCALS",1)~ a2
SAY ~Heya! It's always good to see you, <CHARNAME>. What do you need?~
++ ~I'd like for you to join me again.~ + a2.1
++ ~Nothing for now.~ + a2.2
++ ~Just checking in.~ + a2.2
END

IF ~~ a2.1
SAY ~Sure thing. I'm all set to go!~
IF ~~ DO ~SetGlobal("KickedOut","LOCALS",0)
JoinParty()~ EXIT
END

IF ~~ a2.2
SAY ~Oh. Well, if you're ever in need of anything, I'll be here!~
IF ~~ EXIT
END

IF ~!AreaCheck("C0AU01")
Global("KickedOut","LOCALS",1)~ a3
SAY ~There you are! I was wondering when I'd see you again. So, what'cha need?~
++ ~I'd like for you to join me again.~ + a2.1
++ ~Nothing for now.~ + a3.1
++ ~Just checking in.~ + a3.1
END

IF ~~ a3.1
SAY ~Okay, fine... I guess I'll just keep waiting here.~
IF ~~ EXIT
END

END