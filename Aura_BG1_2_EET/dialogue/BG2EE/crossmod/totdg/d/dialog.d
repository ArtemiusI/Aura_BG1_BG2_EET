BEGIN C0DGGIRL

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)~ THEN C0DGGIRL AURA-DG-GIRL
~*tug*... *tug tug*~ [C0BLANK]
== C0AURA2J ~Hmm? Oh, hey there! Now where did you come from, little one?~
== C0DGGIRL ~I'm sorry... you just have such a nice Colour... so bright, so long... it makes me happy to see it... I just wanted to touch... just a little...~
== C0AURA2J ~My Colour... you mean, my hair?~
== C0DGGIRL ~*nods*~
== C0AURA2J ~Well... I'm glad you like it, sweetie. But is there really something special about it to you?~
== C0DGGIRL ~The way it flows between Colours... from Pink Colour to Silver Colour... I have never seen anything like it before... it's so pretty...~
== C0AURA2J ~Hmm...~
== C0AURA2J ~... *snip*~
== C0AURA2J ~Here... take it. I don't know if it has any power, but if it means anything to you, then take it. Call it a gift!~
== C0DGGIRL ~Oh... I couldn't... it's not good to take Colours without giving back... oh... I have this Gold Colour... only one... I want you to have it...~
== C0AURA2J ~*giggle* If you insist. Thank you. I'll keep it close to me.~
DO ~GiveItemCreate("C0DGCoin","C0Aura",1,0,0)~
== C0DGGIRL ~Thank you... I will treasure it... I'm going to show my friends. Goodbye... hm-hm-hm... *sings*~
== C0AURA2J ~Aww, she's so adorable...~
DO ~ActionOverride("C0DGGIRl",EscapeArea())~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraTOTDGCoin","GLOBAL",1)~ THEN C0AURA2J totdg
~We're back... I know this sounds ridiculous, <CHARNAME>, but somehow the world seems so different, even though it should be familiar.~ [C0BLANK]
DO ~SetGlobal("C0AuraTOTDGCoin","GLOBAL",2)~
== C0AURA2J ~That was... I almost don't want to just call it an adventure. That doesn't do it any amount of justice... we did just experience that together, didn't we? It wasn't just some sort of abstract dream?~
END
  ++ ~I believe we did.~ EXTERN C0AURA2J totdg-1
  ++ ~Have you ever heard of a dream being shared by multiple people?~ EXTERN C0AURA2J totdg-2
  ++ ~Your guess is as good as mine. But I think it was real.~ EXTERN C0AURA2J totdg-3

CHAIN C0AURA2J totdg-1
~I'm glad it wasn't a dream... I never expected to be pulled in a world unlike anything that logic could explain... a place where the denizens express everything in vibrant, living Colours...~
== C0AURA2J ~And the coin that sweet little girl traded to me has vanished too. I thought I had lost it... but I couldn't have. I kept it securely in a safe place, so I'd have some proof that what happened wasn't just in my head. But the moment we woke up here, I looked for it, and it wasn't there.~
== C0AURA2J ~Thinking more about it, though, I don't think I need it. But it's such a pity... I would've liked to keep a memento of our experience. *sigh*~
END
 + ~PartyHasItem("DGIambe2")~ + ~The amber-coloured flower I was given is still here, though.~ EXTERN C0AURA2J totdg-4
 ++ ~I'm surprised you're so melancholic. I thought you'd be relieved we're safely back where we belong.~ EXTERN C0AURA2J totdg-5
 ++ ~Never mind that. Now that we're back, it's back to our old problems.~ EXTERN C0AURA2J totdg-6

CHAIN C0AURA2J totdg-2
~Well, on any other day, I'd say the very idea is ludicrous, but after what we just went through, I'm not sure I could ever call anything impossible again.~
EXTERN C0AURA2J totdg-1

CHAIN C0AURA2J totdg-3
~So, trust in faith rather than evidence, then? I guess that's the best I can do.~
EXTERN C0AURA2J totdg-1

CHAIN C0AURA2J totdg-4
~Oh, so it is. It's... beautiful. And everlasting. Keep it with you, <CHARNAME>. I don't think we'll ever find another like it.~
EXTERN C0AURA2J totdg-5

CHAIN C0AURA2J totdg-5
~I'm not going to pretend I wasn't terrified when we were sent down there... for a while, I was facing the very real fear that we might be trapped down there forever, never to see our own world again... but you know what, <CHARNAME>?~
= ~After a while, I somehow stopped thinking about what should have been important. I got lost in seeing the beauty, hearing the voices of the strange folk, and I think I began to see the Colours the way they did. And when we had finally found our way back, I was surprised that I wasn't as ecstatic about it as I thought I'd be anymore.~
= ~I might've told you already, but before I began training as an artificer, there was a time I really wanted to be a painter. And some young, daydreaming painters dream of a day they could enter the worlds they draw on their canvas... well, this wasn't my painting, but I still felt like that dream came true.~
= ~It's a silly thought, isn't it? Now that I've said it, I feel a little embarrassed.~
END
  ++ ~Maybe it's a bit silly. But there's nothing wrong with that.~ EXTERN C0AURA2J totdg-7
  ++ ~I don't blame you. It was like a fantasy, one where we could escape from our troubles, if only for a while.~ EXTERN C0AURA2J totdg-8
  ++ ~It sounds like you're still daydreaming. Get your head on straight, we're back in reality again.~ EXTERN C0AURA2J totdg-6

CHAIN C0AURA2J totdg-6
~Right. Back to the real world, then... although I wonder if I'll ever look at it quite the same way anymore.~
EXIT

CHAIN C0AURA2J totdg-7
~Would you want to ever go back there one day, <CHARNAME>? If there was a chance?~
END
  ++ ~I would.~ EXTERN C0AURA2J totdg-9
  ++ ~Maybe.~ EXTERN C0AURA2J totdg-9
  ++ ~I don't think so.~ EXTERN C0AURA2J totdg-10

CHAIN C0AURA2J totdg-8
~That's exactly how I feel.~
EXTERN C0AURA2J totdg-7

CHAIN C0AURA2J totdg-9
~It might be impossible, but if it ever happens... I hope I'll be able to go with you. The world of Colours was so vast, I don't think we did more than scratch the surface of what it truly was.~
= ~That's the scholar in me speaking, anyway. The honest truth is, even though it may be impossible, I just hope I'll be able to be part of another beautiful story like that.~
= ~And... maybe I'll be able to see that little girl's smile again.~
EXIT

CHAIN C0AURA2J totdg-10
~Hmm. Maybe it would be for the best. A journey like that only comes once in a lifetime.~
EXTERN C0AURA2J totdg-6
