I_C_T YRXVAM 7 C0AuraYoshimoRomance
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~NO! Why... WHY?! Damn... damn you... MONSTER!~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomanceTalk","GLOBAL",2)~ THEN BC0AURA2 YROM-1
~Yoshimo... he really cares about you, doesn't he?~ [C0BLANK]
END
  ++ ~Are you jealous?~ + YROM-1-1
  ++ ~I care about him, too.~ + YROM-1-2
  ++ ~Almost as much as you do, I think.~ + YROM-1-3

CHAIN BC0AURA2 YROM-1-1
~...~
= ~Yes. Of course I am. How could I not be?~
EXTERN BC0AURA2 YROM-1-4

CHAIN BC0AURA2 YROM-1-2
~I know.~
EXTERN BC0AURA2 YROM-1-4

CHAIN BC0AURA2 YROM-1-3
~No... more. I care about you as someone who admires you. So does he... but also, he's able to be more like himself around you. I can tell.~
EXTERN BC0AURA2 YROM-1-4

CHAIN BC0AURA2 YROM-1-4
~I'm envious, but... I'm not upset. You deserve to be loved, and you should be loved. You're an incredible person, <CHARNAME>... it's only right that others care about you.~
= ~And... I hope you have those you care about just as much.~
END
  ++ ~Of course I do. You... and him. You're both precious to me.~ + YROM-1-5
  ++ ~Please don't think too much of it. I don't want you to see Yoshimo as an obstacle between us.~ + YROM-1-5
  ++ ~If you want me to make a decision, just come out and say it.~ + YROM-1-6

CHAIN BC0AURA2 YROM-1-5
~*shakes head* You don't have to explain, <CHARNAME>. I understand... and I'm happy as things are. Truly.~
EXTERN BC0AURA2 YROM-1-6

CHAIN BC0AURA2 YROM-1-6
~You don't have to decide, <CHARNAME>... and as strange as it is, I don't want you to, either. Yoshimo's my friend. One way or another, making a decision will hurt... so even though it's cowardly, I'd rather be patient, and wait, and enjoy what we have while it stays the same way.~
= ~Still... if I asked you to take my hand for a while as we're walk... would you say yes?~
END
  ++ ~Of course.~ + YROM-1-7
  ++ ~I'm sorry. I can't do that. Not now.~ + YROM-1-8

CHAIN BC0AURA2 YROM-1-7
~Thank you.~
EXIT

CHAIN BC0AURA2 YROM-1-8
~I understand. It's alright... like I said, I'm happy with the way things are... even if I know it won't last.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraBG2YRRomanceTalk","GLOBAL",4)~ THEN BC0AURA2 YROM-2
~Yoshimo?~ [C0BLANK]
== BYOSHIM ~Yes, my friend?~
== BC0AURA2 ~Thank you for being here for <CHARNAME>.~
== BYOSHIM ~Why... that is hardly deserving of gratitude. I am as blessed by her presence as you.~
== BC0AURA2 ~Would you be happy to stay with her forever?~
== BYOSHIM ~I... forever is a difficult thing to aspire for any, my dear. I am content to enjoy the moments while they remain.~
== BC0AURA2 ~That makes the two of us.~
== BYOSHIM ~You... are not resentful, I hope? She deserves someone who may always remain by her side, to bring her happiness... for as long as she needs it. Someone like yourself.~
== BC0AURA2 ~I'd never resent you. How we spend each moment is more important than how long it lasts. That's why... I hope we'll both be here, so long as we're alive, to give <CHARNAME> the love she deserves.~
== BYOSHIM ~Yes... I—I truly wish that as well.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomanceTalk","GLOBAL",6)~ THEN YOSHJ YROM-3
~Our gentle friend, little Aura... she is quite fond of you, <CHARNAME>. I can tell.~ [C0BLANK]
END
  ++ ~I know. Are you worried it'll become a problem for us?~ + YROM-3-1
  ++ ~You sound a little jealous, Yoshimo.~ + YROM-3-2

CHAIN YOSHJ YROM-3-1
~I... have my fears, <CHARNAME>, but none involve her. We are all entitled to our feelings, after all... each of us, no matter what logic dictates.~
EXTERN YOSHJ YROM-3-3

CHAIN YOSHJ YROM-3-2
~Nay, it—~
EXTERN YOSHJ YROM-3-3

CHAIN YOSHJ YROM-3-3
~It is a good thing. Contrary to what you may believe, I... am happy to see you together. You deserve someone who may bring you joy, my friend. In this life, and the next.~
= ~Perhaps... it is something I cannot give you. I may be the unworthy one.~
END
  ++ ~What are you talking about, Yoshimo?~ + YROM-3-4
  ++ ~I care about you greatly, Yoshimo. There's no reason to feel unworthy.~ + YROM-3-4

CHAIN YOSHJ YROM-3-4
~We... both live unusual lives, <CHARNAME>. Fate has its way of playing with we mortals, and you and I could be considered among its most favored playthings indeed.~
= ~I cannot deny, the fortune that brought you into my life has given me much happiness, yet... it may have been better had it not happened. One day, I may no longer be here, and I will have committed the sin of cursing you with pain for my loss.~
= ~You deserve better. Someone who seeks peace, and will ensure your life is long, fruitful, and free of loss... someone like her.~
END
  ++ ~But I want to give you the same thing, Yoshimo.~ + YROM-3-5
  ++ ~You're acting strange, Yoshimo. Where's the cheerful rogue without a care in the world?~ + YROM-3-6
  ++ ~Maybe you're right. But you're still here, and still important to me.~ + YROM-3-7

CHAIN YOSHJ YROM-3-5
~I... wish that could be the case, <CHARNAME>. Truly, I wish it.~
EXTERN YOSHJ YROM-3-7

CHAIN YOSHJ YROM-3-6
~I am merely being practical, my friend. Perhaps... the most practical I have ever been.~
EXTERN YOSHJ YROM-3-7

CHAIN YOSHJ YROM-3-7
~...Ahh, I am a fool in far too many ways. You may be the wiser one, <CHARNAME>, to not be held captive by your fears. It... is another thing I admire of you.~
= ~Let us forget I ever spoke of this, then. What will come will come... yes, and what we cannot avoid, we shall have to face no matter what.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalk","GLOBAL",2)~ THEN BC0AURA2 YROM-4
~<CHARNAME>, you... you've been crying, haven't you? I can see it in your eyes... is it nightmares again?~ [C0BLANK]
END
  ++ ~Yes... but not the same ones. This time... it was of Yoshimo.~ + YROM-4-1
  ++ ~I dreamt of killing Yoshimo again. And again... and no matter how much I wanted to, I couldn't stop myself.~ + YROM-4-2
  ++ ~Leave me alone.~ + YROM-4-0

CHAIN BC0AURA2 YROM-4-0
~Alright. But if you ever need someone to talk to... you know I'm here.~
EXIT

CHAIN BC0AURA2 YROM-4-1
~...~
= ~I can see it. You want to see him again, but not... not like this. Would you like to talk about it?~
END
  ++ ~I cut him down. Then it happened again. And I couldn't control my body... I couldn't even scream or cry.~ + YROM-4-2
  ++ ~Don't ask me to talk about Yoshimo right now, Aura. I'm still not ready yet.~ + YROM-4-0
  ++ ~No.~ + YROM-4-0

CHAIN BC0AURA2 YROM-4-2
~This all never should have happened...~
= ~I wish I could tell you it'll all be alright, <CHARNAME>, but I can't. Because I—I miss him too, despite everything.~
= ~What about you, <CHARNAME>? Or... do you hate him for what he did?~
END
  ++ ~I don't hate him. I hate this cruel fate, that made him fall in love with someone he was forced to betray.~ + YROM-4-3
  ++ ~Yes. I miss him, and I also hate him.~ + YROM-4-3
  ++ ~Of course I do. How could I not? I... I did love him. I still do, even now.~ + YROM-4-4
  ++ ~No. After what he did... I don't want to think about him anymore.~ + YROM-4-5
  ++ ~Don't make me say it, Aura. Please, just don't.~ + YROM-4-0

CHAIN BC0AURA2 YROM-4-3
~I understand, <CHARNAME>. You must be angry. You have the right to be angry with Yoshimo, with Irenicus, with fate, with the blood that brought you into all of this suffering. I... I'm angry too, seeing what it has all done to you.~
EXTERN BC0AURA2 YROM-4-6

CHAIN BC0AURA2 YROM-4-4
~It must be so difficult... it's inevitable that we have to say goodbye to the ones we love one day, but to lose them like you did... it's evil, <CHARNAME>. It makes me hate every bit of fate's cruel tricks that have been played on you.~
EXTERN BC0AURA2 YROM-4-6

CHAIN BC0AURA2 YROM-4-5
~It would be easier, wouldn't it? But... can you? Is it really so easy? Can you even live with yourself to truly do that, <CHARNAME>? I can't say for you... but if it's possible, then you're brave... and cruel. To him, and to yourself.~
EXTERN BC0AURA2 YROM-4-6

CHAIN BC0AURA2 YROM-4-6
~No matter how easy it might be to forget, I... I still want to remember. No matter how much it hurts. Knowing Yoshimo brought memories into my life that I still want to hold to my heart... and I know it must be even more for you.~
= ~You don't have to forget, <CHARNAME>. But you don't have to hold on to all this pain, either. Bit by bit, it'll change. You'll understand that not every bit of joy was a lie. I'm sure of it.~
END
  ++ ~It's not that easy, Aura. Not when I know he's still suffering.~ + YROM-4-7
  ++ ~You're right. I still want to remember the best parts of him. ~ + YROM-4-8
  ++ ~Please, just leave me along. You can't hope to understand.~ + YROM-4-9

CHAIN BC0AURA2 YROM-4-7
~There will be hope one day. For you, and for him. You have to be strong. And if it's too much, remember that I'm here as well.~
EXTERN BC0AURA2 YROM-4-10

CHAIN BC0AURA2 YROM-4-8
~That's right. And if you need some help... remember that I'm here for you too. The precious memories of the Yoshimo we cared about... they'll live with us both.~
EXTERN BC0AURA2 YROM-4-10

CHAIN BC0AURA2 YROM-4-9
~No, but I'll still try... because I can't stand seeing you hurting. I know, if Yoshimo could see you now, he wouldn't either.~
EXTERN BC0AURA2 YROM-4-10

CHAIN BC0AURA2 YROM-4-10
~Because... your happiness is the most important thing. For Yoshimo... and for me.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalk","GLOBAL",4)~ THEN BC0AURA2 YROM-5
~I know it seems like the worst time to say it, but our journey seem to just get more thrilling, doesn't it? If it weren't marred by the cruelty and tragedy we've faced, we might've had a chance to enjoy it, like we deserve to.~ [C0BLANK]
= ~I... I think Yoshimo would have enjoyed this adventure.~
END
  ++ ~I'm sure. The danger and thrill is the sort of thing he lived for.~ + YROM-5-1
  ++ ~Not just this one. If Irenicus hadn't had him in his clutches all this time... he would've had a chance to enjoy everything we went through together.~ + YROM-5-2
  ++ ~He did always tell me stories of his past journeys, almost as wild as this one.~ + YROM-5-1
  ++ ~Don't, Aura. Just don't.~ + YROM-5-0

CHAIN BC0AURA2 YROM-5-0
~I'm sorry. I shouldn't have brought it up. It's heartless of me...~
EXIT

CHAIN BC0AURA2 YROM-5-1
~That is the type of person he was, wasn't he...? The person we both knew.~
EXTERN BC0AURA2 YROM-5-2

CHAIN BC0AURA2 YROM-5-2
~It struck me, after thinking it over, just how much it must have torn him up. To be part of something he truly loved... knowing he could never love it as much as he wanted to.~
= ~I'm sorry, <CHARNAME>. I shouldn't be talking about him, not until I know you're ready. I just... miss him so much.~
END
  ++ ~As do I.~ + YROM-5-3
  ++ ~You don't have to be sorry. We should try to remember all the good things we shared.~ + YROM-5-4
  ++ ~How do you think I feel?~ + YROM-5-4
  ++ ~Please stop. I don't want to talk about this.~ + YROM-5-0

CHAIN BC0AURA2 YROM-5-3
~Do you think he was happy, <CHARNAME>? Even if he knew how torturous it would have been, for his body and soul, to be happy at your side?~
= ~I... want to believe he must have been. If only because it means all the time you spent together wasn't completely meaningless.~
END
  ++ ~I hope he was happy too. Even if it made what he had to do more difficult.~ + YROM-5-5
  ++ ~He must have been. People can't stop themselves from having emotions, no matter how much they try.~ + YROM-5-5
  ++ ~You're more forgiving than I am. I don't think he has a right to feel happiness.~ + YROM-5-6

CHAIN BC0AURA2 YROM-5-4
~I—I want to, as well. I just don't know how to handle it... when even the happy memories hurt.~
EXTERN BC0AURA2 YROM-5-3

CHAIN BC0AURA2 YROM-5-5
~It's strange, isn't it? There should never have been anything wrong with what you two shared. Yoshimo truly cared about you, <CHARNAME>. I believe that.~
EXTERN BC0AURA2 YROM-5-7

CHAIN BC0AURA2 YROM-5-6
~No... maybe he doesn't. But it's never so easy, is it?~
EXTERN BC0AURA2 YROM-5-7

CHAIN BC0AURA2 YROM-5-7
~I just hope... wherever he is now, he has something to cling onto... and maybe one day, if fate decides to be kind for once... he'll find peace.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalk","GLOBAL",6)~ THEN BC0AURA2 YROM-6
~Do you have a moment, <CHARNAME>?~ [C0BLANK]
END
  ++ ~For you, Aura? Always.~ + YROM-6-1
  ++ ~What is it?~ + YROM-6-1
  ++ ~Not now. I don't have time for you.~ + YROM-6-0

CHAIN BC0AURA2 YROM-6-0
~Oh. I... I see. I'm sorry... I didn't know I was such a bother for you, <CHARNAME. Maybe... I should leave you alone for a while.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 YROM-6-1
~I—I've been wanting to say this for a long time now. And I thought I'd have more time to wait... to wait until it was fair for me to say it. But I... I don't know if that time will ever come.~
= ~...I'm sorry. I have to tell you. Maybe this is wrong, and you'll hate me for telling you this right now... after everything.~
= ~I love you, <CHARNAME>.~
END
  ++ ~You... you do? You've felt that way, all this time?~ + YROM-6-2
  ++ ~I know.~ + YROM-6-2
  ++ ~You shouldn't be saying this, Aura. Not when you know what I've lost.~ + YROM-6-2

CHAIN BC0AURA2 YROM-6-2
~I know it's not fair to you, when you're still mourning Yoshimo. But I—I have to be selfish.~
= ~If the worst happens as we come to the end of this journey, I don't want to suffer like he did... taking my true feelings to the grave, leaving you with nothing but a broken heart.~
= ~Since what happened at Spellhold, I've watched you carry this pain on the inside, and if I didn't know you well enough, I might not even know just how much you're suffering. I don't want to stay this way, <CHARNAME>.~
= ~No matter how you feel about me... I know I can't ever replace Yoshimo in your heart. But I want to stay and give you someone to lean on, and let you express how you really feeel. Because I care about you too much to let things keep going on as they are.~
= ~If... if you want to scream at me, or tell me how self-centered I am... I'm ready to hear it. I won't blame you. After all... you know what I feel now.~
END
  ++ ~You don't have to be ashamed of your feelings, Aura. I love you, just as much as I love Yoshimo.~ + YROM-6-3
  ++ ~I can't do that to you, Aura. You mean just as much to me.~ + YROM-6-3
  ++ ~I'm sorry, Aura. I appreciate that you can be honest to me like this... but Yoshimo will always be first in my heart. Even now.~ + YROM-6-4
  ++ ~How dare you? You say this to me now, knowing full well it'll just hurt me more? I don't want to hear another word from you.~ + YROM-6-5

CHAIN BC0AURA2 YROM-6-3
~To hear you say that... I'm—I'm happy, <CHARNAME>. And I feel like such a wretch for it.~
EXTERN BC0AURA2 YROM-6-6

CHAIN BC0AURA2 YROM-6-4
~I understand, <CHARNAME>. It took a long time for me to build up the courage to say this... and even more to accept what answer you have to give.~
= ~My feelings won't change. But yours are what's important to me. So... I'll continue supporting you in whatever form you want. Only as a friend... if that's what you want.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 YROM-6-5
~I'm—~
= ~I'm so sorry, <CHARNAME>...~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 YROM-6-6
~It's so cruel, isn't it? When Yoshimo was still with us... I felt happy, envious, and apprehensive all at the same time. I believed we'd have all the time we needed, each and every one of us, to sort our feelings out and have proper closure. Then... we lost that chance.~
= ~Yoshimo and I never said it plainly, but it was like we had agreed without saying the words... that we'd do everything in our power to make you happy, and we'd never argue or hate each other for it. I... didn't want it to end, so I was content with it.~
= ~I thought things would... turn out the way they did.~
END
  ++ ~Neither did I. But we have to move forwards... I think Yoshimo would want that for the both of us.~ + YROM-6-7
  ++ ~He's truly a selfish person, isn't he? Just dying the way he did without thought for how he'd hurt me... or you.~ + YROM-6-7
  ++ ~You don't have to keep letting the memory of Yoshimo get in the way of how you feel towards me, Aura. He would never want that.~ + YROM-6-7

CHAIN BC0AURA2 YROM-6-7
~Yes... he's truly a strange, gentle, and selfish person... all at once, isn't he? But who am I to judge, when I could say the same for myself? Hehe...~
= ~If you're able to accept me, <CHARNAME>... I'll be here with you always. To give you whatever you need, whether it's to heal, or cry, or try to find a sparkle of joy in all of this darkness.~
= ~I promise.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",2)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalkAmulet","GLOBAL",1)~ THEN BC0AURA2 YROM-7
~It's a beautiful amulet.~ [C0BLANK]
END
  ++ ~Yes. It is.~ + YROM-7-1
  ++ ~Just like yours.~ + YROM-7-2
  ++ ~I still wish its owner was with us.~ + YROM-7-3
  ++ ~Never mind the amulet. Let's move on.~ + YROM-7-0

CHAIN BC0AURA2 YROM-7-0
~Yes... you're right.~
EXTERN BC0AURA2 YROM-7-4

CHAIN BC0AURA2 YROM-7-1
~It's all so familiar. Before I left Kozakura, Reika-san left me with this magatama. And now... Yoshimo's gone, and left you with this. It seems like we're bound for the same sorrows, <CHARNAME>...~
EXTERN BC0AURA2 YROM-7-4

CHAIN BC0AURA2 YROM-7-2
~Yes... just like mine.~
EXTERN BC0AURA2 YROM-7-1

CHAIN BC0AURA2 YROM-7-3
~At least... a part of him still found you in the end. I know it's not much, but...~
EXTERN BC0AURA2 YROM-7-1

CHAIN BC0AURA2 YROM-7-4
~I—I won't look at the letter, <CHARNAME>. That's your own right, not mine. I hope it gives you a little bit of closure.~
EXIT

I_C_T YRXYUN 1 C0AuraYoshimoRomanceHell
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Yoshimo... how could you be...?~
== YRXYUN ~Little Aura... so you followed <CHARNAME> all the way to this hell, my dear friend. I expected no less... and I am grateful to you for it.~
== YRXYUN IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~And I sense you have given her what I could not... someone who could truly be at their side, when needed most. Thank you.~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~I'm so sorry, Yoshimo. You should have been with us... with her. I—~
== YRXYUN IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ ~No. You need not explain, little Aura. I have little time left, and must give my final words to <CHARNAME>, if she will listen.~
== YRXYUN IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ ~But I have one last request.~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Anything.~
== YRXYUN IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ ~Stay with her. Until the very end.~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~I will. I promise.~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2YRRomancePostTalkHell","GLOBAL",1)~ THEN BC0AURA2 YROM-8
~...~ [C0BLANK]
END
  ++ ~It's alright. We did what we had to.~ + YROM-8-1
  ++ ~Damn Irenicus. He'll pay for that, even beyond death.~ + YROM-8-2

CHAIN BC0AURA2 YROM-8-1
~I wanted to see him again, <CHARNAME>... but when I did, I realized how afraid it would make me. Seeing him in torment, turned against you again... with a sword that should have protected you.~
= ~This must end, <CHARNAME>. It *will* end. I've made a promise. I will make sure I see this through with you, <CHARNAME>... for those who couldn't.~
= ~"Yasuraka-ni-nemurinasai"... Yoshimo.~
EXIT

CHAIN BC0AURA2 YROM-8-2
~Yes, this cruelty... it must be punished. Nothing could be so unforgivable.~
EXTERN BC0AURA2 YROM-8-1

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBYRDreamTalk","GLOBAL",1)~ THEN BC0AUR25 YROM-TOB-1
~You look wistful, <CHARNAME>... like you're longing for something. Did you... dream of Yoshimo again?~ [C0BLANK]
DO ~SetGlobal("C0AuraToBYRDreamTalk","GLOBAL",2)~
END
  ++ ~I did, yes.~ + YROM-TOB-1-1
  ++ ~More than just Yoshimo. Gorion was there too. And Khalid, even Skie... and Tamoko.~ + YROM-TOB-1-2
  ++ ~Leave me alone. I'm in no mood to talk about it.~ + YROM-TOB-1-0

CHAIN BC0AUR25 YROM-TOB-1-0
~...alright.~
EXIT

CHAIN BC0AUR25 YROM-TOB-1-1
~I thought so.~
= ~...Was it only him? I... heard you say a few things while you were sleeping.~
END
  ++ ~There was also many old faces. Khalid, Skie... and Tamoko as well.~ + YROM-TOB-1-2
  ++ ~Mind your own business.~ + YROM-TOB-1-0

CHAIN BC0AUR25 YROM-TOB-1-2
~Ah... I see.~
= ~I'm glad you were able to see them. Even if it was only a dream, it sounds like... you were all at peace for once.~
END
  ++ ~We were. I think... I was happy.~ + YROM-TOB-1-3
  ++ ~It doesn't matter. It was all a dream, and my memories of it are cloudy anyway.~ + YROM-TOB-1-4
  ++ ~Perhaps, but it was just a fantasy. Reality is not so kind, so let's get on with it.~ + YROM-TOB-1-0

CHAIN BC0AUR25 YROM-TOB-1-3
~That's all that matters, <CHARNAME>. No matter how, it's a good thing... you don't have to doubt that.~
EXTERN BC0AUR25 YROM-TOB-1-5

CHAIN BC0AUR25 YROM-TOB-1-4
~Maybe... but if it brought you some comfort, then it's still a precious gift, isn't it?~
EXTERN BC0AUR25 YROM-TOB-1-5

CHAIN BC0AUR25 YROM-TOB-1-5
~I know we can't make it a reality, not to the letter... but we still have to try out best. We'll make what we can with what we have.~
== BC0AUR25 ~You can do it, <CHARNAME>. I believe in you. And I'll... be right there with you.~
EXIT