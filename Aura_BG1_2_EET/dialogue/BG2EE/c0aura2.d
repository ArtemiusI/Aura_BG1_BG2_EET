CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",4)~ THEN C0AURA2 a0
~Don't worry, Muffy... I know this looks bad, but we'll get out of this... I'm sure...~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",5)~
== C0ATHF2 ~Drop the package, and you walk out alive, gnome.~
== C0AURA2 ~This? I—I'm not sure what you think this is, but it's not what you looking for, I promise you.~
== C0ATHF2 ~We'll be the judge of that. A little bird told us there's been a market for weapons made by your kind, weapons unlike anything the rest of the realm's ever seen. If that's true, then they'll fetch a rather high price in the right hands, wouldn't you say?~
== C0AURA2 ~'Weapons from my kind'? There must be some kind of mistake, I've never—~
== C0ATHF2 ~Quit your yapping, girl. Hand over the goods.~
== C0AURA2 ~*sigh* Of all the days to leave the automaton at home... I guess I'll have to...~
== C0ATHF3 ~Boss! Someone's comin' our way.~
DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut2")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",5)~ THEN C0ATHF2 a01
~This don't concern you, stranger. Move along if you know what's good for you.~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",6)~
== C0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~...<CHARNAME>?~
== C0ATHF2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Quiet, gnome.~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~You're threatening a precious friend of mine. Leave, before you regret it.~ EXTERN C0ATHF3 a01.1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~That gnome's far more dangerous than she looks. You don't want to mess with her, trust me.~ EXTERN C0ATHF3 a01.1
++ ~I'd like to, but I don't think I can ignore just someone being accosted in the streets.~ EXTERN C0ATHF3 a01.1
++ ~You'll leave her be if you know what's good for you.~ EXTERN C0ATHF3 a01.1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~By all means, go on ahead. I'll keep my distance.~ DO ~SetGlobal("C0AuraNoHelp","GLOBAL",1)~ EXTERN C0AURA2 a01.2
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~By all means, go on ahead. I'll keep my distance.~ DO ~SetGlobal("C0AuraNoHelp","GLOBAL",1)~ EXTERN C0AURA2 a01.3

CHAIN C0ATHF3 a01.1
~This ain't worth the trouble, boss. I think we should just get out of here, before things get ugly.~
== C0ATHF2 ~...Bah. It's your lucky day, gnome. Men, withdraw.~
DO ~SetGlobal("C0AuraBegin","GLOBAL",8)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4")~ EXIT

CHAIN C0AURA2 a01.2
~Pfft, seriously...?~
EXTERN C0AURA2 a01.3

CHAIN C0AURA2 a01.3
~Well, I really didn't have to do this, but I guess I'm on my own here, so...~
DO ~SetGlobal("C0AuraBegin","GLOBAL",7)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut3")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",7)~ THEN C0ATHF4 a02
~AAAGH! *cough* What... *hic* the blazes... *hhcckk!* is this?!~ [C0BLANK]
== C0ATHF1 ~My eyes! Agh! So itchy!~
== JANJ IF ~IsValidForPartyDialog("JAN")~ THEN ~Ahh... a choking powder formula. Simple, but effective. I've always favored a poison sumac oil spray myself. Gives quite the nasty rash, especially in the privates.~
== C0AURA2 ~Sorry... I didn't have a choice. You can wash it out with oil, but you'd better go and do it quickly before...~
== C0ATHF2 ~This is not over, gnome! *cough!*~
DO ~SetGlobal("C0AuraBegin","GLOBAL",8)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",8)~ THEN C0AURA2 a03
~And off they go... see, Muffy? I told you we'd get out of this.~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",9)~
END
IF ~Global("C0AuraKnowsBG1","GLOBAL",1)
Global("C0AuraNoHelp","GLOBAL",1)~ + a03.1
IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)
Global("C0AuraNoHelp","GLOBAL",1)~ + a03.2
IF ~Global("C0AuraKnowsBG1","GLOBAL",1)
!Global("C0AuraNoHelp","GLOBAL",1)~ + a03.3
IF ~Global("C0AuraKnowsBG1","GLOBAL",1)
!Global("C0AuraNoHelp","GLOBAL",1)~ + a03.3
IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)
!Global("C0AuraNoHelp","GLOBAL",1)~ + a03.4

CHAIN C0AURA2 a03.1
~But really, <CHARNAME>. "I'll keep my distance"? I thought we knew each other better than that.~
END
++ ~I'm sorry. But you handled it, didn't you?~ + a03.1.1
++ ~I knew you had something up your sleeve.~ + a03.1.1
++ ~You should be capable of taking care of yourself.~ + a03.1.2
++ ~That doesn't mean I'm responsible for your trouble.~ + a03.1.2

CHAIN C0AURA2 a03.1.1
~Sure, I guess... well, I can't really get mad. I'm just really happy to see you again.~
END
IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0AuraBeginRomance","GLOBAL",1)
StartCutSceneMode()
MoveToObject(Player1)
Wait(1)
FaceObject(Player1)
ActionOverride(Player1,FaceObject("C0Aura")
Wait(1)
StartDialogueNoSet(Player1)~ EXIT
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + a03.5

CHAIN C0AURA2 a03.1.2
~Wow, you're nastier than I remember you... oh, well. I'm still happy to see you.~
END
IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0AuraBeginRomance","GLOBAL",1)
StartCutSceneMode()
MoveToObject(Player1)
Wait(1)
FaceObject(Player1)
ActionOverride(Player1,FaceObject("C0Aura")
Wait(1)
StartDialogueNoSet(Player1)~ EXIT
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + a03.5
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + a03.5

CHAIN C0AURA2 a03.2
~Well, um... thanks for distracting them for a moment, I suppose... can't really expect more than that.~
= ~I'll be going now, so please excuse me.~
DO ~SetGlobal("C0AuraBegin","GLOBAL",-1)~ EXIT

CHAIN C0AURA2 a03.3
~Anyway... <CHARNAME>! It's so wonderful to see you again!~
END
IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ DO ~SetGlobal("C0AuraBeginRomance","GLOBAL",1)
StartCutSceneMode()
MoveToObject(Player1)
Wait(1)
FaceObject(Player1)
ActionOverride(Player1,FaceObject("C0Aura")
Wait(1)
StartDialogueNoSet(Player1)~ EXIT
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + a03.5

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",9)
Global("C0AuraBeginRomance","GLOBAL",1)~ THEN C0AURA2 a03.rom
~Haha... sorry, I just really, really needed to give you a hug. *sniffle* Ooh... I've missed this so much, you know?~
EXTERN C0AURA2 a03.5

CHAIN C0AURA2 a03.4
~Thank you for the help. I was worried about what I'd have to do if nobody intervened... I might've had to really hurt them.~
END
++ ~Are you alright? Those men seemed pretty intent on hurting you.~ + a03.6
++ ~You're Aura, the Lantanese artificer, I assume?~ + a03.7
++ ~Well, count yourself lucky today. It might not happen the next time.~ + a03.8

CHAIN C0AURA2 a03.5
~It feels like it's been forever... I had no idea when we'd meet again, but it's such a wonderful surprise that it did. We have lot to catch up on!~
END
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I've missed you too, Aura.~ + a03.rom2
++ ~Are you alright? Those men seemed pretty intent on hurting you.~ + a03.14
++ ~I didn't expect to find you here in Amn, either.~ + a03.15
++ ~What was it those thugs wanted from you, exactly?~ + a03.16

CHAIN C0AURA2 a03.rom2
~I'm always thinking about you, you know? I regret leaving you in the first place, but... well, it's done now. You're with me again, and that's enough.~
EXTERN C0AURA2 a03.17

CHAIN C0AURA2 a03.6
~Oh, I'm fine... just a bit shaken. Those people didn't get the chance to really do anything thanks to you... wait a minute...~
EXTERN C0AURA2 a03.9

CHAIN C0AURA2 a03.7
~Yes, that's me. I didn't know you knew who I was already. Although now that I think of it...~
EXTERN C0AURA2 a03.9

CHAIN C0AURA2 a03.8
~Fair point. I guess I shouldn't count on being lucky enough to be helped at the right time by someone... like...~
EXTERN C0AURA2 a03.9

CHAIN C0AURA2 a03.9
~*gasp* You... you're <CHARNAME>! I knew I recognized you!~
END
++ ~You know who I am?~ + a03.10

CHAIN C0AURA2 a03.10
~It's a lot to explain at once, but... I was in Baldur's Gate during, you know... the crisis. The first one, anyway. I saw your face!~
= ~Wow... I didn't think I'd meet you here of all places. There's so much I'd like to hear from you.~
END
++ ~I'd be happy to tell you about myself.~ + a03.11
++ ~Great, a loony fan.~ + a03.11

CHAIN C0AURA2 a03.11
~Oh, I'm so sorry... I know this isn't really the place. But if you're not busy with anything important... I'm heading back to my workshop in the Slums district. If you ever find the time, you wouldn't mind paying me a little visit, would you?~
END
++ ~Sure, I don't see why not.~ + a03.12
++ ~I doubt it's something worth my time.~ + a03.13

CHAIN C0AURA2 a03.12
~Great! I'll be sure to prepare some tea for you when you're there. I'll be going now. See you again soon!~
DO ~SetGlobal("C0AuraBegin","GLOBAL",10)
TriggerActivation("C0AuraHome",TRUE)
EscapeAreaMove("C0AU01",427,207,NNE)~ EXIT

CHAIN C0AURA2 a03.13
~Oh... I understand. You're a very busy person, I'm sure. Still, if you ever change your mind, I'll be waiting for you. Goodbye!~
DO ~SetGlobal("C0AuraBegin","GLOBAL",10)
TriggerActivation("C0AuraHome",TRUE)
EscapeAreaMove("C0AU01",427,207,NNE)~ EXIT

CHAIN C0AURA2 a03.14
~Me? I'm fine, <CHARNAME>, you know I'm tougher than I look... mostly. It's better than being stared down by bears, right? Anything's better than that.~
EXTERN C0AURA2 a03.17

CHAIN C0AURA2 a03.15
~Oh, I can tell you the whole story if you've got time. It's mostly a coincidence we ended up here together. But if I knew you'd be here, I would've tried to find you immediately.~
EXTERN C0AURA2 a03.17

CHAIN C0AURA2 a03.16
~I'm not sure. I mean... they wanted this package I'm carrying, but for what reason, I don't know. They seemed to know something about what I have.~
END
++ ~What's in it?~ + a03.18

CHAIN C0AURA2 a03.17
~Why don't we head back to my workshop together? We can talk about everything we've been up to there. I was on my way just now, so it's not far. Is that alright with you?~
END
++ ~Sure, I've got the time.~ + a03.19
++ ~I'm a bit busy right now.~ + a03.20

CHAIN C0AURA2 a03.18
~You know, I can tell you everything if we head back to my workshop together. I was on my way just now, so it's not far. Is that alright with you?~
END
++ ~Sure, I've got the time.~ + a03.19
++ ~I'm a bit busy right now.~ + a03.20

CHAIN C0AURA2 a03.19
~Great! Off we go then. I'll make sure to have some tea ready once we get there.~
DO ~SetGlobal("C0AuraBegin","GLOBAL",10)
TriggerActivation("C0AuraHome",TRUE)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut7")~ EXIT

CHAIN C0AURA2 a03.20
~Oh, all right. I hope you'll stop by soon though. I'm hoping to catch up with you as soon as I can. See you around!~
DO ~SetGlobal("C0AuraBegin","GLOBAL",10)
EscapeAreaMove("C0AU01",427,207,NNE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraKnowsBG1","GLOBAL",1)
Global("C0AuraBegin","GLOBAL",10)~ THEN C0AURA2 b1
~Well, here we are. Welcome to my workshop! Well, technically not mine, but it's where I've been working.~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",11)~
== C0APICO ~Welcome back, miss Aura! There's tea on the kettle if you want some.~
== JANJ IF ~InParty("JAN")~ THEN ~Oh, my... this place has seen some improvements since I was gone, hasn't it?~
== JAHEIRAJ IF ~InParty("JAHEIRA") Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~It seems like she has done well for herself.~
== C0AURA2 ~I haven't had a place of my own to work on for a long while, so I'm really grateful for the Jansens to offer me this room. It's worked wonders for me.~
END
++ ~It's quite nice.~ + b1.1
++ ~I see there's a few things from our past travels laying around.~ + b1.1

CHAIN C0AURA2 b1.1
~Make yourself at home, <CHARNAME>! I've got this wonderful lemon leaf tea that goes perfectly with the local pastries. It's going to be great.~
== JANJ IF ~InParty("JAN")~ THEN ~Tea, eh? Well then, don't mind if I make myself at home. Oh, silly me, this IS my home...~
END
IF ~!InParty("JAN")~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4a")~ EXIT
IF ~InParty("JAN")~ DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4b")~ EXIT

/*
CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",1)~ THEN C0AURA2 a1
~Oh, is there someone at the door?~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",3)~
== JANJ IF ~InParty("JAN")~ THEN ~Oh, my... this place has seen some improvements since I was gone, hasn't it?~
== JAHEIRAJ IF ~InParty("JAHEIRA") Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~It seems like she is doing well for herself.~
== C0AURA2 ~Hang on a minute, just need to get this drawn... there! Now, what's going on?~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",1)~ + ~Hey there, Aura. You're looking good.~ EXTERN C0AURA2 INTRO-DIALOG-1-1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~Hello, Aura. It's been a while.~ EXTERN C0AURA2 INTRO-DIALOG-1-1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~Never thought I'd see you again here, of all places.~ EXTERN C0AURA2 INTRO-DIALOG-1-1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I'm sorry to interrupt.~ EXTERN C0AURA2 INTRO-DIALOG-1-1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~You must be the artificer, then.~ EXTERN C0AURA2 INTRO-DIALOG-1-1

CHAIN C0AURA2 INTRO-DIALOG-1-1
~Huh...?~
DO ~ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut2")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",3) !Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN C0AURA2 INTRO-DIALOG-1-1a
~Um... good <DAYNIGHTALL>. To whom do I owe this pleasure?~ [C0BLANK]
END
++ ~My name is <CHARNAME>. I heard there was a Lantanese artificer here and wanted to meet your acquaintance.~ + INTRO-DIALOG-2
++ ~My name is <CHARNAME>. To be honest, I was just curious of what was making all the noise.~ + INTRO-DIALOG-2

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",3) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN C0AURA2 INTRO-DIALOG-1-1b
~<CHARNAME>?~ [C0BLANK]
END
IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ + INTRO-DIALOG-1-3
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)~ + INTRO-DIALOG-1-4

CHAIN C0AURA2 INTRO-DIALOG-1-3
~I... I—~
END
++ ~What's—~ DO ~SetGlobal("C0AuraBegin","GLOBAL",4)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut3")~ EXIT
++ ~You—~ DO ~SetGlobal("C0AuraBegin","GLOBAL",4)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut3")~ EXIT
++ ~Um—~ DO ~SetGlobal("C0AuraBegin","GLOBAL",4)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut3")~ EXIT

CHAIN C0AURA2 INTRO-DIALOG-1-4
~Wow, it really is you! After what I heard happened back at Baldur's Gate, I thought... anyways, it's great to see you again!~
= ~When did you get here? If I had known, I would've come looking for you, but I didn't think you'd be... I mean, I never expected to see you here of all places!~
END
++ ~It's a long story. Do you have time to listen?~ + INTRO-DIALOG-1-5
++ ~Shall I tell you of how I was attacked, captured and experimented on before I found myself in this city?~ + INTRO-DIALOG-1-6
++ ~Let me start from the beginning...~ + INTRO-DIALOG-1-5

CHAIN C0AURA2 INTRO-DIALOG-1-5
~W-wait, let me prepare ourselves some tea first... I can tell that we've got a lot to catch up on.~
== JANJ IF ~InParty("JAN")~ THEN ~Tea, eh? Well then, don't mind if I make myself at home. Oh, silly me, this IS my home...~
END
IF ~!InParty("JAN")~ DO ~SetGlobal("C0AuraBegin","GLOBAL",5)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4a")~ EXIT
IF ~InParty("JAN")~ DO ~SetGlobal("C0AuraBegin","GLOBAL",5)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4b")~ EXIT

CHAIN C0AURA2 INTRO-DIALOG-1-6
~You were— oh, my...~
EXTERN C0AURA2 INTRO-DIALOG-1-5

CHAIN IF WEIGHT #-1 ~Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraBegin","GLOBAL",4)~ THEN C0AURA2 INTRO-ROMANCE-1
~*hugs*~ [C0BLANK]
END
++ ~Oof!~ + INTRO-ROMANCE-2

CHAIN C0AURA2 INTRO-ROMANCE-2
~Oh... it really is you! I— I can't believe it... I missed you so, so much, <CHARNAME>! I... *sniffle*~
END
++ ~H-hey, you're hugging a bit too tightly...~ + INTRO-ROMANCE-3
++ ~I missed you too, Aura.~ + INTRO-ROMANCE-3
++ ~Wait, don't start crying on me now...~ + INTRO-ROMANCE-3

CHAIN C0AURA2 INTRO-ROMANCE-3
~*sniff* ...S-sorry, I— I got a little overwhelmed. I don't know why, I should be happy...~
EXTERN C0AURA2 INTRO-DIALOG-1-5

CHAIN C0AURA2 INTRO-DIALOG-2
~Oh, I see. Umm, why don't I prepare us some tea first? We can talk over there if you don't mind.~
== JANJ IF ~InParty("JAN")~ THEN ~Tea, eh? Well then, don't mind if I make myself at home. Oh, silly me, this IS my home...~
END
IF ~!InParty("JAN")~ DO ~SetGlobal("C0AuraBegin","GLOBAL",5)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4a")~ EXIT
IF ~InParty("JAN")~ DO ~SetGlobal("C0AuraBegin","GLOBAL",5)
ClearAllActions()
StartCutsceneMode()
StartCutscene("c0acut4b")~ EXIT
*/
CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",11) !Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN C0AURA2 a3
~I'm really sorry I couldn't clean up a little. I wasn't really prepared to have visitors lately.~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",12)~
== C0AURA2 IF ~InParty("JAN")~ THEN ~Oh, by the way, is this Pico's cousin? I haven't met him at all until just now. It's nice to meet you at last.~
== JANJ IF ~InParty("JAN")~ THEN ~Yes, very nice to meet you too. It's been a long time since I've ran into anyone from Lantan. How's the place doing now anyway? The people haven't blown themselves up yet, I hope. That would be a great loss. Not to mention it'd be a big mess to clean up.~
== C0AURA2 IF ~InParty("JAN")~ THEN ~Umm, I haven't been home in a long time, but if the letters I've gotten mean anything, then they haven't...~
== JANJ IF ~InParty("JAN")~ THEN ~Oh, good. In that case, I hope I'll hear from some of my old friends soon. Now then, don't mind me. I'll just partake of this excellent tea while you speak with <CHARNAME>. <PRO_HESHE> doesn't my wit and panache, of course, but <PRO_HESHE> is the leader, nonetheless. *sip* Ahh... it doesn't compare to our home-grown turnip leaf tea, but it comes a very close second.~
== C0AURA2 ~Anyways, it's nice to meet you, <CHARNAME>. I never thought I'd run into the famous hero of Baldur's Gate here of all places!~
END
++ ~How much do you know about me, exactly?~ + INTRO-DIALOG-2-1
++ ~It's very nice to meet you too, Aura.~ + INTRO-DIALOG-2-1
++ ~So, who are you, exactly?~ + INTRO-DIALOG-2-4

CHAIN C0AURA2 INTRO-DIALOG-2-1
~I was actually at Baldur's Gate myself too, not long ago. It's a shame we didn't cross paths there, but I heard all the stories about your heroism in stopping a war!~
= ~There aren't so many tales about you here in Amn, but I suppose that makes sense... it sounds like the people at the Gate are trying to keep quiet about everything, so I was lucky to have been there when it all happened.~
END
++ ~Come to think of it, I think we have met before, briefly... in Beregost?~ + INTRO-DIALOG-2-2
++ ~It's a miracle we haven't met before, then. I'm sure I would've remembered you.~ + INTRO-DIALOG-2-3

CHAIN C0AURA2 INTRO-DIALOG-2-2
~Really? Wait, I remember that now! You seem so different from when we met then. Heehee... I guess I haven't changed that much, comparatively.~
= ~Ooh, that's such a shame. If I had joined up with you at that time, we could've gotten to know each other so much better! Well, that's what fate is, I suppose...~
EXTERN C0AURA2 INTRO-DIALOG-2-4

CHAIN C0AURA2 INTRO-DIALOG-2-3
~That's nice of you to say. I can't imagine myself being important enough for someone like you to remember, but I'm glad I've met you now.~
EXTERN C0AURA2 INTRO-DIALOG-2-4

CHAIN C0AURA2 INTRO-DIALOG-2-4
~Okay, I should introduce myself properly. I'm Aurelia Glimmershine, but please, call me Aura. I'm a scholar and artificer from Lantan.~
END
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
CheckStatGT(Player1,11,INT)
!CheckStatGT(Player1,15,INT)
!Class(Player1,FIGHTER)
!Kit(Player1,FERALAN)~ + ~You're a scholar, but given that armor you're wearing, you must some experience with combat too, right?~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","GLOBAL",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,FIGHTER)
Kit(Player1,FERALAN)~ + ~You're a scholar, but I notice you're wearing armor, and I can tell you're skilled with a bow... am I wrong?~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBackgroundTalk","MYAREA",1)~ + ~What is a Lantanese scholar doing all the way here in Amn, anyway?~ + INTRO-DIALOG-2-6
+ ~!Global("C0AuraConstructTalk","MYAREA",1)~ + ~I noticed that rather impressive construct over there. Is that Lantanese work?~ DO ~SetGlobal("C0AuraConstructTalk","MYAREA",1)~ + INTRO-DIALOG-2-8
++ ~It's been nice talking with you, but I'm afraid I need to go.~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-5
~Oh?~
= ~Heehee... good eye. I'm not a fighter, but as a travelling scholar, sometimes you need the ability to protect yourself... though I guess I don't need to tell you that.~
= ~I'm really not that good, though. I certainly don't have the experience you do, and a lot of the time, I have to depend on the big guy over there.~
END
+ ~!Global("C0AuraConstructTalk","MYAREA",1)~ + ~Speaking of... that's quite an impressive construct you have. Is that Lantanese work?~ DO ~SetGlobal("C0AuraConstructTalk","MYAREA",1)~ + INTRO-DIALOG-2-8
+ ~!Global("C0AuraBackgroundTalk","MYAREA",1)~ + ~What is a Lantanese scholar doing all the way here in Amn, anyway?~ + INTRO-DIALOG-2-6
+ ~Global("C0AuraJoinTalk","MYAREA",1)~ + ~If you've got experience on the road, I could do with allies. Would you be interested in joining me?~ + INTRO-JOINME
++ ~It's been nice talking with you, but I'm afraid I need to go.~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-6
~Oh... that would be the question, wouldn't it? The truth is, I haven't been home for a very long time. I, um... left a few years ago, to travel the world so I could learn about and experience the rest of the world.~
= ~Lantan's not so far away, and it's a wonderful place, but it's so isolated. I've learned so much in the past few years I never would have managed to at home.~
= ~I haven't been in Amn for too long. It's not easy for a gnome to find a place here, though, but I was lucky that the Jansens were kind enough to offer shelter and a place to work. If not for that, I doubt I'd be here.~
END
++ ~You say you've been across the world? Where else have you been to?~ DO ~SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-7
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
CheckStatGT(Player1,11,INT)
!CheckStatGT(Player1,15,INT)
!Class(Player1,FIGHTER)
!Kit(Player1,FERALAN)~ + ~You're a scholar, but given that armor you're wearing, you must some experience with combat too, right?~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","GLOBAL",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,FIGHTER)
Kit(Player1,FERALAN)~ + ~You're a scholar, but I notice you're wearing armor, and I can tell you're skilled with a bow... am I wrong?~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraConstructTalk","MYAREA",1)~ + ~I noticed that rather impressive construct over there. Is that Lantanese work?~ DO ~SetGlobal("C0AuraConstructTalk","MYAREA",1)~ + INTRO-DIALOG-2-8
+ ~Global("C0AuraJoinTalk","MYAREA",1)~ + ~If you've got experience on the road, I could do with allies. Would you be interested in joining me?~ + INTRO-JOINME
++ ~It's been nice talking with you, but I'm afraid I need to go.~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-7
~Well, counting them all would take a while, but all sorts, really. The Dalelands, Aglarond, Chondath... not as many in the North, I've heard it's rough surviving up there... a few lands outside of Faerûn, too— Maztica and Kara-Tur... I actually lived in Kozakura for a few years, not long ago from now.~
DO ~SetGlobal("C0AuraBackgroundTalk","GLOBAL",1)~ 
= ~I wasn't alone for most of it, but I lost my entourage some time ago, long before I settled here... but that's a long story.~
END
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
CheckStatGT(Player1,11,INT)
!CheckStatGT(Player1,15,INT)
!Class(Player1,FIGHTER)
!Kit(Player1,FERALAN)~ + ~You're a scholar, but given that armor you're wearing, you must some experience with combat too, right?~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","GLOBAL",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,FIGHTER)
Kit(Player1,FERALAN)~ + ~You're a scholar, but I notice you're wearing armor, and I can tell you're skilled with a bow... am I wrong?~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraConstructTalk","MYAREA",1)~ + ~I noticed that rather impressive construct over there. Is that Lantanese work?~ DO ~SetGlobal("C0AuraConstructTalk","MYAREA",1)~ + INTRO-DIALOG-2-8
+ ~Global("C0AuraJoinTalk","MYAREA",1)~ + ~If you've got experience on the road, I could do with allies. Would you be interested in joining me?~ + INTRO-JOINME
++ ~It's been nice talking with you, but I'm afraid I need to go.~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-8
~Oh, yes, it is. It's an old Lantanese craft, built from metal and clockwork. The design is rather complex, but most inventors with enough experience can build them without much trouble.~
== JANJ IF ~InParty("JAN")~ THEN ~I must say, that massive fellow has caught my eye ever since we entered. I wonder if I could get two of those to manage our garden?~
== C0AURA2 ~It's not so different from a mage's golem in concept. We're not particularly fond of conflict, though, so mostly they're used for heavy construction work. I've modified mine to be battle-ready, though, given I have to get into some dangerous situations now and again.~
END
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
CheckStatGT(Player1,11,INT)
!CheckStatGT(Player1,15,INT)
!Class(Player1,FIGHTER)
!Kit(Player1,FERALAN)~ + ~You're a scholar, but given that armor you're wearing, you must some experience with combat too, right?~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","GLOBAL",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBattleTalk","GLOBAL",1)
OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,FIGHTER)
Kit(Player1,FERALAN)~ + ~You're a scholar, but I notice you're wearing armor, and I can tell you're skilled with a bow... am I wrong?~ DO ~SetGlobal("C0AuraBattleTalk","GLOBAL",1) SetGlobal("C0AuraJoinTalk","MYAREA",1)~ + INTRO-DIALOG-2-5
+ ~!Global("C0AuraBackgroundTalk","MYAREA",1)~ + ~What is a Lantanese scholar doing all the way here in Amn, anyway?~ + INTRO-DIALOG-2-6
+ ~Global("C0AuraJoinTalk","MYAREA",1)~ + ~If you've got experience on the road, I could do with allies. Would you be interested in joining me?~ + INTRO-JOINME
++ ~It's been nice talking with you, but I'm afraid I need to go.~ + INTRO-DIALOG-2-9

CHAIN C0AURA2 INTRO-DIALOG-2-9
~Oh, you're leaving already? Well...~
== C0AURA2 ~Actually... I've got a favor I'd like to ask you, <CHARNAME>. If it's not so much of a bother to you, would you consider allowing me to join you?~
== C0AURA2 IF ~!Class(Myself,MAGE_ALL) !Class(Myself,CLERIC_ALL)~ ~I know you're an experienced traveller, and I don't have the achievements to match you, but I feel like there's still more for me to learn, but I don't think my strength alone is enough to pass whatever trials are out there. I'm good with mechanics and alchemy, and I can handle a bow. I'm sure I won't drag you down!~
== C0AURA2 IF ~Class(Myself,MAGE_ALL)~ ~I know you're an experienced traveller, and I don't have the achievements to match you, but I feel like there's still more for me to learn, but I don't think my strength alone is enough to pass whatever trials are out there. I'm good with mechanics and alchemy, and I can handle a bow. Besides my skills in rune magic, I know a bit of standard magic as well. I'm sure I won't drag you down!~
== C0AURA2 IF ~Class(Myself,CLERIC_ALL)~ ~I know you're an experienced traveller, and I don't have the achievements to match you, but I feel like there's still more for me to learn, but I don't think my strength alone is enough to pass whatever trials are out there. I'm good with mechanics and alchemy, and I can handle a bow. I know a bit of divine magic as well, thanks to my training in Kozakura. I'm sure I won't drag you down!~
END
++ ~I certainly wouldn't mind having more companions.~ + INTRO-JOINME
+ ~NumInPartyGT(1)~ + ~I'm afraid I have all the company I need right now.~ + INTRO-JOINME-NO
+ ~!NumInPartyGT(1)~ + ~I'm afraid I'd rather work alone.~ + INTRO-JOINME-NO
++ ~Not a chance.~ + INTRO-JOINME-NO

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",11) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN C0AURA2 a4
~Umm... I'm sorry I couldn't set up something a bit nicer. If I had more time to prepare, I could've done a lot more to welcome you. I hope you don't mind.~ [C0BLANK]
DO ~SetGlobal("C0AuraBegin","GLOBAL",12)~
END
++ ~It's fine. I appreciate the effort.~ + INTRO-DIALOG-3-1
++ ~So... where should I start?~ + INTRO-DIALOG-3-1
++ ~I didn't come for tea, Aura.~ + INTRO-DIALOG-3-2

CHAIN C0AURA2 INTRO-DIALOG-3-1
~I saw what happened at the Promenade. Well... I heard about it first, then I went to check out the aftermath... I was horrified. I thought it might have been a smokepowder accident, with just how terrible the damage was.~
== C0AURA2 IF ~InParty("JAN")~ THEN ~I didn't realize you'd already met Pico's cousin, either. I hadn't even seen him myself until just now. It's nice to meet you at last.~
== JANJ IF ~InParty("JAN")~ THEN ~Yes, very nice to meet you too. It's been a long time since I've ran into anyone from Lantan. How's the place doing now anyway? The people haven't blown themselves up yet, I hope. That would be a great loss. Not to mention it'd be a big mess to clean up.~
== C0AURA2 IF ~InParty("JAN")~ THEN ~Umm, I haven't been home in a long time, but if the letters I've gotten mean anything, then they haven't...~
== JANJ IF ~InParty("JAN")~ THEN ~Oh, good. In that case, I hope I'll hear from some of my old friends soon. Now then, don't mind me. I'll just partake of this excellent tea while you speak with <CHARNAME>. <PRO_HESHE> doesn't my wit and panache, of course, but <PRO_HESHE> is the leader, nonetheless. *sip* Ahh... it doesn't compare to our home-grown turnip leaf tea, but it comes a very close second.~
== C0AURA2 IF ~InParty("JAN")~ THEN ~Anyways... what was I talking about? Oh, right. The stuff that happened at the Promenade.~
== C0AURA2 ~This is mostly a guess... but I don't suppose you had anything to do with that?~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I was there when it happened. The Cowled Wizards took who was responsible... and Imoen as well.~ + INTRO-DIALOG-3-3
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I was there when it happened. The Cowled Wizards took who was responsible... and my friend as well.~ + INTRO-DIALOG-3-4
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~Things like that only ever happen to me, don't they?~ + INTRO-DIALOG-3-5
++ ~I had nothing to do with it. It was all the work of the mage that captured me.~ + INTRO-DIALOG-3-6
++ ~You're not entirely wrong to say I was involved, I suppose.~ + INTRO-DIALOG-3-7
++ ~I'd rather not talk about that. What else have you heard?~ + INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-2
~I know. I was just getting to what you probably wanted to discuss.~
EXTERN C0AURA2 INTRO-DIALOG-3-1

CHAIN C0AURA2 INTRO-DIALOG-3-3
~W-what? Imoen was— oh, that's awful!~
EXTERN C0AURA2 INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-4
~The Cowled Wizards took—? Oh, I'm sorry.~
EXTERN C0AURA2 INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-5
~Heehee... I didn't mean it that way, <CHARNAME>, I'm sorry. But I'm not wrong to assume you were involved in a way, right?~
EXTERN C0AURA2 INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-6
~I heard the mage who blew up the Promenade had power beyond imagination. If what I saw was just the after-effects, I shudder to think what it would have been like to see it first-hand.~
EXTERN C0AURA2 INTRO-DIALOG-3-7

CHAIN C0AURA2 INTRO-DIALOG-3-7
~I'm sorry I can't be of much more help. Besides the rumors, I really don't know much of what's going on out there. I'm cooped up in this little workshop most days, and when I go out it's usually to the same few places. Even the few things I know, I mostly heard by accident.~
= ~Anyways... I guess there's a reason you came by and waited for me, right? What can I do for you, <CHARNAME>?~
END
++ ~Let's start with you. How have you been? It feels like it's been forever since we travelled together.~ + INTRO-DIALOG-3-8
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me again?~ + INTRO-JOINME-ROMANCE
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) !Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me again?~ + INTRO-JOINME-BG1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me?~ + INTRO-JOINME
++ ~Nothing for the moment. I'm sorry to bother you.~ + INTRO-GOODBYE

CHAIN C0AURA2 INTRO-DIALOG-3-8
~I know, right? I thought the days went by so quickly when we were venturing up and down the Sword Coast, but after we parted, it suddenly felt like the days were a lot longer.~
== C0AURA2 IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ THEN ~I really did miss you, you know. I couldn't stop wondering if I'd ever see you again...~
== C0AURA2 ~Well, as they say in old Lantanna: 'pasientia cul es sathienae'— um, that is, sometimes patience is all you need, right?~
END
++ ~How exactly did you end up living with the Jansens anyway?~ + INTRO-DIALOG-3-9
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me again?~ + INTRO-JOINME-ROMANCE
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) !Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me again?~ + INTRO-JOINME-BG1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me?~ + INTRO-JOINME
++ ~Nothing for the moment. I'm sorry to bother you.~ + INTRO-GOODBYE

CHAIN C0AURA2 INTRO-DIALOG-3-9
~Well, to be honest... it was a stroke of luck, really. After we were forced to part ways, I decided to make my way down south back to Lantan.~
= ~I made it all the way here to Athkatla. They're not fond of gnomes here, but I figured it'd be the likeliest place to charter a boat back home... but there weren't any that would travel towards there at the time.~
= ~While I was exploring the city, I met Kylie when she was peddling in the Bridge District. She was being harassed by a couple of thugs who didn't like what she was selling, so I had to step in and scare them off with my automaton.~
= ~Afterwards, I talked with Kylie and found out about her family's business, and how they're not doing so well recently. When I told them I was from Lantan, they offered me their workshop to stay in, and they've been treating me like family since. I've even had the chance to write home for the first time in a while. I'm very grateful to them.~
END
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me again?~ + INTRO-JOINME-ROMANCE
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) !Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me again?~ + INTRO-JOINME-BG1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me?~ + INTRO-JOINME
++ ~Nothing for the moment. I'm sorry to bother you.~ + INTRO-GOODBYE
/*
CHAIN C0AURA2 INTRO-DIALOG-3-10
~On my way south, I met a pair of travellers carrying the symbol of Gond. They recognized that I was from Lantan and told me they were Wonderseekers— priests of Gond who travel Toril looking for technology that has been lost or fallen into wrong hands and claim them in the name of the church.~
= ~They were very friendly to me once I told them who I was, but I could tell they were hiding something from me for some reason. Eventually I managed to persuade them, and then... they found a copy of Grand Artificer Elias Magnussen's academic journals, and were bringing it back to the High Hall of Wonders back at Baldur's Gate to be archived.~
END
++ ~Who?~ + INTRO-DIALOG-3-11

CHAIN C0AURA2 INTRO-DIALOG-3-11
~Oh, Magnussen was one of the greatest scholars Lantan has ever known. He held the most esteemed title of Grand Artificer, until he was denounced and exiled about sixty years ago for controversial studies.~
= ~Come to think of it, that was not long before I was born... but he was a truly brilliant scientist. His theories were still being taught at the academies when I was a student, although his name was never mentioned.~
END
++ ~If he was denounced, how come you know the theories were his?~ + INTRO-DIALOG-3-12
++ ~What were these 'controversial studies', exactly?~ + INTRO-DIALOG-3-13
++ ~What has this to do with why you're here in Amn?~ + INTRO-DIALOG-3-15

CHAIN C0AURA2 INTRO-DIALOG-3-12
~My father, Kairos, told me the history of Master Magnussen a long time ago. He had just become a member of the Ayrorch council when Master Magnussen was exiled, so he knew a lot of the details.~
EXTERN C0AURA2 INTRO-DIALOG-3-14

CHAIN C0AURA2 INTRO-DIALOG-3-13
~I'm not sure. The one who told me about Master Magnussen was my father. He had just become a member of the Ayrorch council when Master Magnussen was exiled, so he knew a lot of the details.~
EXTERN C0AURA2 INTRO-DIALOG-3-14

CHAIN C0AURA2 INTRO-DIALOG-3-14
~Apparently the Ayrorch was in an impasse during the trial. Half of the council was in favor of exile, the other against it. I don't know what tipped the scales, but I think whatever Master Magnussen was being judged for had something to do with it.~
= ~I know my father was against it. He respected Master Magnussen and believed he still had much to offer for Lantan's future. That's why he felt it was okay to tell me as much as he did, but whatever Master Magnussen's practices were... even he wouldn't tell me that.~
EXTERN C0AURA2 INTRO-DIALOG-3-15

CHAIN C0AURA2 INTRO-DIALOG-3-15
~All of Master Magnussen's written works ended up banned in Lantan, and whatever was allowed to be republished had his name completely removed from them. The fact that one of his journals was discovered, and here in Amn of all places, was a huge surprise to me, so I came to see if I could find anything else of his in the city.~
= ~I've found absolutely nothing since I arrived, though. Not so much as a scrap of paper with his name on it. Maybe it was a fluke that one of his books turned up at all, but either way, I was lucky that the Jansens were kind enough to take me in. Athkatla isn't an friendly place for gnomes.~
END
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~If you're still interested in looking, then why don't you join me, Aura? I'll be exploring Athkatla, and I'd like the company.~ + INTRO-JOINME-ROMANCE
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) !Global("C0AuraRomanceActive","GLOBAL",1)~ + ~If you're still interested in looking, then why don't you join me, Aura? I'll be exploring Athkatla, and I'd like the company.~ + INTRO-JOINME-BG1
++ ~I see. I wish I could help, but I really need to go now.~ + INTRO-GOODBYE
*/
CHAIN C0AURA2 INTRO-JOINME-ROMANCE
~Yes, absolutely yes! I was just about to offer anyway. I've missed travelling with you so much, <CHARNAME>.~
EXTERN C0AURA2 INTRO-JOINME-1

CHAIN C0AURA2 INTRO-JOINME-BG1
~Oh, I'd love to travel with you again! It's nice being able to work here, but I think a trip outside to put my work to practical use might be exactly what I need.~
EXTERN C0AURA2 INTRO-JOINME-1

CHAIN C0AURA2 INTRO-JOINME
~You'd really ask for my help? I'd be happy to! My latest creations could use some field testing anyway, and I'd appreciate the company.~
EXTERN C0AURA2 INTRO-JOINME-1

CHAIN C0AURA2 INTRO-JOINME-1
~I've got my portable toolkit, my alchemical skills and my Sunshooter. I might not be the best fighter, but I'm sure I'll still be an asset to you!~
END
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%) Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I should tell you first about our mission. Imoen was taken by the Cowled Wizards during that incident at Waukeen's Promenade, and I aim to rescue her. There will be considerable danger involved.~ + INTRO-JOINME-2
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%) !Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I should tell you first about our mission. An old friend of mine, Imoen, was taken by the Cowled Wizards during that incident at Waukeen's Promenade, and I aim to rescue her. There will be considerable danger involved.~ + INTRO-JOINME-3
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + ~Alright. You should know, however, that I am hunting a powerful wizard by the name of Irenicus. He was the one who captured and tortured me, and I plan to find him. It'll be dangerous.~ + INTRO-JOINME-4
++ ~Alright, let's go.~ DO ~SetGlobal("C0AuraQuest1","GLOBAL",1) JoinParty()~ + INTRO-JOINME-5

CHAIN C0AURA2 INTRO-JOINME-2
~Imoen's my friend as well, so I'm not afraid of danger if it means saving her. I know the Cowled Wizards are powerful, but that just means you'll need all the assistance you can get. I'll do my best to help you, <CHARNAME>.~
EXTERN C0AURA2 INTRO-JOINME-5

CHAIN C0AURA2 INTRO-JOINME-3
~If she's that important to you, then I'm not afraid of danger if it means saving her. I know the Cowled Wizards are powerful, but that just means you'll need all the assistance you can get. I'll do my best to help you, <CHARNAME>.~
EXTERN C0AURA2 INTRO-JOINME-5

CHAIN C0AURA2 INTRO-JOINME-4
~That's the one who caused all that destruction in the Promenade, right? If you're going against someone so dangerous and powerful, then you'll need all the assistance you can get. I'll do my best to help you, <CHARNAME>.~
EXTERN C0AURA2 INTRO-JOINME-5

CHAIN C0AURA2 INTRO-JOINME-5
~Oh, but before we go... I've got a few design schematics that I left on my desk over there. If you can gather all the things that are on them, I can create some wondrous items that'll help us out a lot.~
= ~And my automaton over there could be helpful too, if you're interested in bringing it along. I'd just need a second to activate it and it'll be good to go.~
= ~Yep, I think that's all. Alright, I can trust Pico to take care of the workshop while I'm out. Let's go!~
DO ~EquipRanged() JoinParty()~ EXIT

CHAIN C0AURA2 INTRO-GOODBYE
~Oh, no trouble at all.~
= IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~It was nice to see you again, <CHARNAME>. I hope you can come by and say hello once in a while. I'll be here most of the time.~
= IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~It was nice to meet you, <CHARNAME>. You can always come by and say hello if you want. I'll be here most of the time.~
EXIT

CHAIN C0AURA2 INTRO-JOINME-NO
~Oh... that's a shame.~
= IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~It was nice to see you again, <CHARNAME>. I hope you can come by and say hello once in a while. I'll be here most of the time.~
= IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~It was nice to meet you, <CHARNAME>. You can always come by and say hello if you want. I'll be here most of the time.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBegin","GLOBAL",12)~ THEN C0AURA2 a1
~Hello again, <CHARNAME>, it's nice to see you alive and well. Is there something I can do for you?~ [C0BLANK]
END
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me again?~ + INTRO-JOINME-ROMANCE
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) !Global("C0AuraRomanceActive","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me again?~ + INTRO-JOINME-BG1
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I'm in need of allies right now, Aura. Would you be interested in joining me?~ + INTRO-JOINME
++ ~Nothing for the moment. I'm sorry to bother you.~ + INTRO-GOODBYE

