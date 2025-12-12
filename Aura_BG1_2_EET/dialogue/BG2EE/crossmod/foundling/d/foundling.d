CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FOU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Foundling1","GLOBAL",0)~ THEN L#FOUB C0AuraFoundling1
~Those clothes you wear, gnome... that colour... what is it called again?~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Foundling1","GLOBAL",1)~
== BC0AURA2 ~It's pink, Foundling.~
== L#FOUB ~Yes, that's it. That colour does not exist in the Plane of Shadow.~
== BC0AURA2 ~It doesn't...?! No, I guess it wouldn't. What do you think? Doesn't it suit me?~
== L#FOUB ~It's painfully vivid. Are you trying to be noticed?~
== BC0AURA2 ~No, not really. I'm actually shy by nature. I just think pink's a pretty colour.~
== L#FOUB ~That seems imprudent. It seems more likely to make you noticed by dangerous predators.~
== BC0AURA2 ~That's, um... actually, I can't argue with that. But I can protect myself, Foundling. Besides, I have others here to keep me safe, right? That includes you.~
== L#FOUB ~I do not believe it is wise to put your life so securely in the hands of others.~
== BC0AURA2 ~But that's how trust works, Foundling. We can't be friends unless we can depend on each other. That goes for you, too! I'll do my best to keep you safe.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FOU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Foundling2","GLOBAL",0)~ THEN L#FOUB C0AuraFoundling2
~Why do you create these... things, Aura?~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Foundling2","GLOBAL",1)~
== BC0AURA2 ~What things? I'm sorry, Foundling, you'll have to be more specific. I make a lot of things, you know!~
== L#FOUB ~That is my point. Making objects of power to help yourself survive, that I understand. But many of your... inventions seem to exist only for their own sake.~
== BC0AURA2 ~For their own sake...? Foundling, that doesn't exist. Everything exists for a reason, even if it's just to make people happy.~
== L#FOUB ~Just that's enough? All that work, that planning, just for a laugh and a brief moment of joy?~
== BC0AURA2 ~I've always aspired to make the happiness that comes from my work lasting. But even if it's just a moment, that's already enough.~
== L#FOUB ~I find it strange that one with such a gifted mind can be satisfied with so little.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FOU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#FoundlingToB","GLOBAL",0)~ THEN L#FOU25B C0AuraFoundlingToB
~You've taken a lot of notes on what I've said about shadow magic, Aura. There isn't much left that I can tell you.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#FoundlingToB","GLOBAL",1)~
== BC0AUR25 ~Thank you, Foundling. I'll be sure to bring what I've recorded back to Lantan, so that we can understand more about your magic and the Plane of Shadow.~
== L#FOU25B ~Do you expect this to be useful? You can't use this magic regardless of how much you've written down, and I doubt any of your peers will do much better. It requires more than that.~
== BC0AUR25 ~Even so, there's still much a scholar can do with knowledge they can't... or won't use. What the knower can't use for themself can still be used to help others.~
== L#FOU25B ~You're going to spend the rest of your life trying to help others?~
== BC0AUR25 ~If I can, yes. Helping others makes me even happier than learning new things.~
== L#FOU25B ~There are more people who need help than you can manage in a lifetime. Many of whom may not deserve it. When do you stop?~
== BC0AUR25 ~Well, I'd like to say there's no stopping... but my mind and hands will only work for so long. When I've passed the torch, I guess. I'll feel I've earned my rest then.~
== L#FOU25B ~Hmm.~
== BC0AUR25 ~Why don't you consider trying the same thing one day?~
== L#FOU25B ~Me? Teaching others? I... don't think that's likely. How many like myself could possibly be in this plane? And who among those few might listen to me?~
== BC0AUR25 ~I can't say, but I've seen that not everyone who uses your type of magic is malicious, Foundling. There's still hope to find others like you. Just think about it.~
EXIT