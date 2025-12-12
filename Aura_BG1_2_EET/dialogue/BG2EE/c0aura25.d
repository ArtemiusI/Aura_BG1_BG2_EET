
APPEND C0AURA25

IF ~Global("C0AuraSummoned","GLOBAL",1)~ AURA-TOB-JOIN
SAY ~W-w-whoa! I didn't do that... wait... no, I didn't. That was- oh. Heya, <CHARNAME>.~
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~Hi, Aura.~ DO ~SetGlobal("C0AuraSummoned","GLOBAL",2)~ + AURA-TOB-JOIN-ROM
+ ~!Global("C0AuraRomanceActive","GLOBAL",2)~ + ~Hi, Aura.~ DO ~SetGlobal("C0AuraSummoned","GLOBAL",2)~ + AURA-TOB-JOIN-1
++ ~You don't sound too surprised to see me.~ DO ~SetGlobal("C0AuraSummoned","GLOBAL",2)~ + AURA-TOB-JOIN-2
++ ~Calm down. I summoned you here.~ DO ~SetGlobal("C0AuraSummoned","GLOBAL",2)~ + AURA-TOB-JOIN-3
END

IF ~~ AURA-TOB-JOIN-ROM
SAY ~It wasn't nice of you to leave me behind, you know. Do you have any idea how worried I was? It was like... never mind. Don't do it again.~
IF ~~ + AURA-TOB-JOIN-4
END

IF ~~ AURA-TOB-JOIN-1
SAY ~We have quite a bit to catch up on, huh?~
IF ~~ + AURA-TOB-JOIN-4
END

IF ~~ AURA-TOB-JOIN-2
SAY ~Well, you know... when you're in my line of work, you've got to be prepared for the unexpected. That, and nowadays I'm not sure anything can surprise me anymore.~
IF ~~ + AURA-TOB-JOIN-4
END

IF ~~ AURA-TOB-JOIN-3
SAY ~Figured. I guess it's part of the Bhaalspawn power thing, huh?~
IF ~~ + AURA-TOB-JOIN-4
END

IF ~~ AURA-TOB-JOIN-4
SAY ~Anyway, what's up? Do you need a helping hand? I've heard things are getting pretty hectic for you.~
++ ~What exactly have you heard?~ + AURA-TOB-JOIN-5
+ ~!Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I need your help, Aura. Will you join me?~ + AURA-TOB-JOIN-6
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I need your help, Aura. Will you join me?~ + AURA-TOB-JOIN-ROM-2
++ ~Just wait here. I'll call for you when you're needed.~ + AURA-TOB-JOIN-7
END

IF ~~ AURA-TOB-JOIN-5
SAY ~Oh, you know... something about a war between the Bhaalspawn, prophecies coming true, end of the world as we know it... at least, according to some people.~
= ~It's all a bit much for me to take in sometimes. I'm just a simple inventor from Lantan, after all. That said, if you need my help... well, I'd happily help to put all this chaos to an end.~
+ ~!Global("C0AuraRomanceActive","GLOBAL",2)~ + ~Then join me and we'll end it together.~ + AURA-TOB-JOIN-6
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~Then join me and we'll end it together.~ + AURA-TOB-JOIN-ROM-2
++ ~Wait here for the moment. I'll come back when I need you.~ + AURA-TOB-JOIN-7
END

IF ~~ AURA-TOB-JOIN-6
SAY ~Of course! I'm not sure how much a little gnome like me can do against whatever we're up against, but I'll give you every bit of help I can offer!~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ AURA-TOB-JOIN-ROM-2
SAY ~You don't even need to ask. I'd rather be nowhere else, <CHARNAME>. Let's go!~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ AURA-TOB-JOIN-7
SAY ~You want me to wait here in this creepy place? Weeeell... okay... I guess I'll just sit here and tinker about until you come by to pick me up. I can work anywhere.~
IF ~~ DO ~MoveToPointNoInterrupt([2307.1171]) Face(0)~ EXIT
END

IF ~Global("C0AuraSummoned","GLOBAL",2)~ AURA-TOB-JOIN-ME
SAY ~Ooh, you're back! Does that mean it's time to pack up and go?~
++ ~It is.~ + AURA-TOB-JOIN-ME-1
++ ~Not yet.~ + AURA-TOB-JOIN-ME-2
END 

IF ~~ AURA-TOB-JOIN-ME-1
SAY ~Alright! I'll be right behind you.~
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ AURA-TOB-JOIN-ME-2
SAY ~Aww, okay.~
IF ~~ EXIT
END

END

APPEND C0AUR25P

IF ~!Global("C0AuraRomanceActive","GLOBAL",2) Global("KickedOut","LOCALS",0)~ AURA-TOB-KICKED
SAY ~Hey, you sure you don't need me anymore? I'm still eager to help in any way I can.~
++ ~My mistake. Please, don't leave.~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~Just wait here for a while.~ DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([2307.1171]) Face(0)~ + AURA-TOB-KICKED-1
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~I'll send you back to the pocket plane... wait for me there.~ DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr","c0auin3")
Wait(2)
MoveBetweenAreas("AR4500",[2307.1171],0)
ActionOverride("C0AUIN3",MoveBetweenAreas("AR4500",[2327.1151],0))~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Just wait here for a while.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ + AURA-TOB-KICKED-1
END

IF ~Global("C0AuraRomanceActive","GLOBAL",2) Global("KickedOut","LOCALS",0)~ AURA-TOB-KICKED
SAY ~Ah... you know I'd never leave you unless you decided it was right, <CHARNAME>, so I'll wait for you until you come back for me... you will, won't you?~
++ ~I misspoke. I'd rather have you be nowhere else.~ DO ~JoinParty()~ EXIT
+ ~AreaCheck("AR4500")~ + ~Of course I will. Just wait for me here.~ DO ~SetGlobal("KickedOut","LOCALS",1) MoveToPointNoInterrupt([2307.1171]) Face(0)~ + AURA-TOB-KICKED-1
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~I'll send you back to the pocket plane... wait for me there.~ DO ~SetGlobal("KickedOut","LOCALS",1)
CreateVisualEffectObject("spdimndr",Myself)
CreateVisualEffectObject("spdimndr","c0auin3")
Wait(2)
MoveBetweenAreas("AR4500",[2307.1171],0)
ActionOverride("C0AUIN3",MoveBetweenAreas("AR4500",[2327.1151],0))~ EXIT
+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + ~Of course I will. Just wait for me here.~ DO ~SetGlobal("KickedOut","LOCALS",1)~ + AURA-TOB-KICKED-1
END

IF ~~ AURA-TOB-KICKED-1
SAY ~Alright... I don't like the idea of sitting around, but if you're sure... I'll still be be here when you get back.~
IF ~~ EXIT
END

IF ~Global("KickedOut","LOCALS",1)~ AURA-TOB-REJOIN
SAY ~How's it going? I don't suppose you need a hand? Or maybe a gadget?~ [AURAf]
++ ~I could do with some of both, I think. Join me, Aura.~ DO ~JoinParty()~ EXIT
++ ~Wait just a little longer.~ + AURA-TOB-REJOIN-1
END 

IF ~~ AURA-TOB-REJOIN-1
SAY ~Aww, okay...~
IF ~~ EXIT
END

END