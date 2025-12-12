CHAIN
IF ~InParty("L#XZE")
Range("L#XZE",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#XZE",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Xzele","GLOBAL",0)~ THEN L#XZEB banter1
~You make a lot of fascinating creations, Aura. Even I didn't how easily and quickly a concept on paper could be made real.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Xzele","GLOBAL",1)~
== BC0AURA2 ~Thank you, Xzelë.~
== L#XZEB ~Have you ever wished you could continue to make things forever?~
== BC0AURA2 ~Well, of course... just, likely not in the way that you mean.~
== L#XZEB ~What if you had a chance to live on after your body has died, to continue your work?~
== BC0AURA2 ~I can't. In fact, it's actually forbidden. The Lantanna do not allow our people to take advantage of necromancy, even in the way you're thinking of.~
== L#XZEB ~Fascinating... I'd have imagined the chance to have an eternity to seek knowledge would be what many would want.~
== BC0AURA2 ~We also believe in not fighting the natural order. That goes for more than necromancy—our laws also forbid creating artificial life or transferring our spirits into constructs. We expect to learn what we can in our lives, then move on when the time comes.~
== L#XZEB ~I can't speak for your people when you're the first Lantanna I've ever known. But I can't imagine all would agree.~
== BC0AURA2 ~It's... controversial. Not all Lantanna are willing to let go. I can understand the arguments to the contrary, even if I believe it's better to accept our mortality.~
== BC0AURA2 ~And to answer your first question, Xzelë, outside of the regard of laws... no, I've never wanted it, myself. I believe in making the most of the time I have, and passing what I know on to the next person.~
== BC0AURA2 ~For a scholar, living forever sounds like a dream at first... but it's not always a good thing.~
== L#XZEB ~I understand. Your fate is your own to control, and I respect that you have your standards. Some of us, however... were dealt a crueler hand by fate. All we could do is make the best of what we became, and find some hope and beauty in our existence.~
== BC0AURA2 ~I... see. That's a form of bravery in itself, I can't deny that. Maybe there's still a lot I've yet to learn about life, and how to truly live it.~
== L#XZEB ~You will have time. I assure you—as long as I am here, fate will not steal a second of the time you deserve.~
EXIT

CHAIN
IF ~InParty("L#XZE")
Range("L#XZE",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#XZE",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Xzele","GLOBAL",1)~ THEN BC0AURA2 banter2
~Xzelë, I... I think we got off on the wrong foot last time. I'm sorry.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Xzele","GLOBAL",2)~
== L#XZEB ~You believe so? I did not feel as though we were particularly hostile.~
== BC0AURA2 ~No, but I made my whole speech about how I disagreed with the unlife, and here you are... I must've sounded horribly condescending. I don't want to act like you made a wrong choice.~
== L#XZEB ~But... do you believe I did?~
== BC0AURA2 ~That's a whole different matter. I can disagree, but I don't want to decry the humanity you have by criticizing you. No Lantanna would approve of debating in such a manner.~
== L#XZEB ~I'm glad. Most would not be afraid to say what a mistake my existence is... in my face, if they aren't already drawing weapons.~
== BC0AURA2 ~I don't believe in that. If you believe there is something worth continuing for... I wouldn't want it, but I can't decide the same for you. If I did that, I'd never understand you.~
== L#XZEB ~Even death would never dull that kindness you have, Aura. If you were to embrace unlife, whether by choice or chance... I think all of our brothers and sisters would embrace your warmth.~
== BC0AURA2 ~...Thank you.~
EXIT

CHAIN
IF ~InParty("L#XZE")
Range("L#XZE",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#XZE",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#XzeleToB","GLOBAL",0)~ THEN BC0AUR25 bantertob
~I'm glad we met, Xzelë.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#XzeleToB","GLOBAL",1)~
== L#XZE25B ~I am too, of course. Would it ruin the mood if I asked why you said this?~
== BC0AUR25 ~I just felt that I owe you something. I wouldn't have learned so much of this side of undeath, and of the Evening Glory, if I hadn't listened to your words. Even if I'll walk a different path, I still value the understanding.~
== L#XZE25B ~That is all I needed. I do not demand others follow my example, if they can find peace otherwise. But I hope that one day, the unlife won't be considered synonymous with evil, or something to be feared.~
== BC0AUR25 ~Maybe... it might be a slow process. Perhaps even you'll be gone before that day comes. But at least I won't be so impulsive as to say it's impossible... not anymore.~
== L#XZE25B ~If I have changed even one person's mind, and guided their thoughts and inspired them... that would have given some meaning to this cold path in the end.~
EXIT