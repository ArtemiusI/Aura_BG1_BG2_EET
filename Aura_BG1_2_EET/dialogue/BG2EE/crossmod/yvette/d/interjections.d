CHAIN IF WEIGHT #-1 ~Global("C0AuraYxDrawing","GLOBAL",1)~ THEN C0AURA2J AURA-YVETTE-DRAWING
~Were you talking with the lady in the drawing again, <CHARNAME>?~ [C0BLANK]
DO ~SetGlobal("C0AuraYxDrawing","GLOBAL",2)~
END
++ ~That's right.~ + AURA-YVETTE-DRAWING-1
++ ~Mind your own business.~ + AURA-YVETTE-DRAWING-0

CHAIN C0AURA2J AURA-YVETTE-DRAWING-0
~Oh, right. I shouldn't poke my nose into someone else's relationship, huh?~
EXIT

CHAIN C0AURA2J AURA-YVETTE-DRAWING-1
~Ooh, I'm actually a little jealous... I've never seen a sentient portrait before.~
= ~Do you think she really was once a living person?~
END
++ ~I think so. She's too... real, for it all to be explained away by magic.~ + AURA-YVETTE-DRAWING-2
++ ~I'm not sure. Does it really matter?~ + AURA-YVETTE-DRAWING-2

CHAIN C0AURA2J AURA-YVETTE-DRAWING-2
~I guess you're right. Either way, she seems like she's plenty alive now.~
= ~I wonder... do you think she'd talk to me too, <CHARNAME>?~
END
++ ~She might. I think's she's too tired at the moment, though.~ EXIT
++ ~You stay out of this.~ + AURA-YVETTE-DRAWING-0

CHAIN
IF ~InParty("YxYve")
Range("YxYve",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYxYvette","GLOBAL",0)~ THEN YXYVEB banter1
~Your fashion style is so enchanting, Aura. I'd go as far to call you one of the most delightful gnome ladies I've ever met.~ [C0BLANK]
DO ~SetGlobal("C0AuraYxYvette","GLOBAL",1)~
== BC0AURA2 ~Hehe, you think so? I always try to stay trendy, but I'm often worried that other people think me vain instead.~
== YXYVEB ~I think it's valuable to have a look that defines you. Besides, nobody could ever call you vain when you work so hard.~
== BC0AURA2 ~Aw, you're giving me too much praise, Yvette. I'm just doing my best for the group. There's plenty of things I have to depend on others for—including you, of course.~
== YXYVEB ~Now you've turned this around on me! I was the one complimenting you, you know. But it's good to feel appreciated.~
EXIT

CHAIN
IF ~InParty("YxYve")
Range("YxYve",15)
InParty("C0Aura")
Range("C0Aura",15)
PartyHasItem("YXY3")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYxYvette","GLOBAL",1)~ THEN BC0AURA2 banter2
~Where did you get your bow from, Yvette?~ [C0BLANK]
DO ~SetGlobal("C0AuraYxYvette","GLOBAL",2)~
== YXYVEB ~This? I... don't remember, actually. As far as I know, I've always had it. Do you think it's special?~
== BC0AURA2 ~May I take a look?~
== YXYVEB ~Of course.~
== BC0AURA2 ~It's beautifully designed... I'm not quite sure of the type of wood, but it's most likely willow or ash... it's not that different from any other from a glance, but it has a powerful enchantment... I wonder if...~
== YXYVEB ~Hmm? It looks like you had a sudden thought, Aura. I've started to recognize that change in your expression when it happens.~
== BC0AURA2 ~Ahaha, is that so? Well, I was just thinking that I could make some adjustments to its design. The magic in it is strong, but it could be even better if the receptacle is enhanced.~
== YXYVEB ~You can do that? I don't entirely understand what you mean, but I think you're saying you could make it stronger?~
== BC0AURA2 ~Maybe... probably! I promise you I won't accidentally break it, if that's what you're worried about.~
== YXYVEB ~Oh, no, I wouldn't accuse you of doing that. How long would it take? I don't mind handing it off for a while, but it might feel strange to not have it around for too long.~
== BC0AURA2 ~It'll only take a day. I won't go too far in tinkering with it, so it'll still feel like the same thing once you get it back. Just look forward to the surprise!~
DO ~TakePartyItem("YXY3")
DestroyItem("YXY3")
SetGlobalTimer("C0AuraYxYvetteBow","GLOBAL",ONE_DAY)~ EXIT

CHAIN
IF ~InParty("YxYve")
Range("YxYve",15)
InParty("C0Aura")
Range("C0Aura",15)
GlobalTimerExpired("C0AuraYxYvetteBow","GLOBAL")
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYxYvette","GLOBAL",1)~ THEN BC0AURA2 banter2
~Yvette! Ta-da!~ [C0BLANK]
DO ~SetGlobal("C0AuraYxYvette","GLOBAL",2)~
== YXYVEB ~This is... my bow, isn't it? I'm surprised that even with these changes, I can still recognize it.~
== BC0AURA2 ~I tried to make it retain as much of its original look as I could, but it's much improved now. If it feels too different in your hands now though, I can still work a little more on it...~
== YXYVEB ~No, I'm very grateful, Aura. I think you've made it more beautiful, in a different way. The only worry now is that I might break these new parts and not know how to fix them.~
== BC0AURA2 ~Not to worry! I have some simplified instructions written down for you, along with a small repair kit and replacement parts just in case, all in this cute little pouch!~
== YXYVEB ~This is... is it designed to look like a hedgehog? That's very adorable.~
== BC0AURA2 ~I bought it from a market not too long ago for that reason! Except, I never really needed it for anything. Just think of it as an additional gift, if you like it!~
== YXYVEB ~Of course I like it! I'll have to think of what to give you in return...~
DO ~GiveItemCreate("C0YXY3","YxYVE",1,0,0)~ EXIT

CHAIN
IF ~InParty("YxYve")
Range("YxYve",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("YxYve",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYxYvetteToB","GLOBAL",0)~ THEN YXYV25B bantertob
~Aura, do you have a moment?~ [C0BLANK]
DO ~SetGlobal("C0AuraYxYvetteToB","GLOBAL",1)~
== BC0AURA2 ~Hang on, I'll just scribble this last thing down... okay! I'm all ears, Yvette.~
== YXYV25B ~I was just wondering if you wanted anything from me. After all I've gotten from you, I feel like I owe you some kind of token in return.~
== BC0AURA2 ~Oh... you don't have to give me anything just because you feel obligated to. Our friendship doesn't need that.~
== YXYV25B ~Maybe not, but I'd be happy if a close friend would accept anything I could give you.~
== BC0AURA2 ~Well... what if you let me draw a sketch of you in my journal as a memento? And... I'd be even happier if you wrote something nice under it afterwards.~
== YXYV25B ~So a drawing of me, just like the way all this started? I like it. I'll have to think of the best words to leave for you once you're done.~
EXIT