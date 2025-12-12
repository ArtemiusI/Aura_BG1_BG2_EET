CHAIN
IF ~InParty("L#FALD")
Range("L#FALD",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FALD",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Faldorn","GLOBAL",0)~ THEN L#FALB banter1
~Does it comfort you to surround yourself with companions of cold, unliving metal, Aura? They only serve to encourage weakness.~
DO ~SetGlobal("C0AuraL#Faldorn","GLOBAL",1)~
== BC0AURA2 ~My creations are my strength, Faldorn. I know you won't see it my way, but it's not so different to your connection with nature.~
== L#FALB ~Such foolishness. The grinding of metal has surely deafened you to the Mother's call.~
== BC0AURA2 ~*sigh* I don't know what I can say to you, Faldorn. You won't believe me, but I do respect the natural order, as do all Lantanna. I believe we were given the gift of knowledge to create things, and using nature's gifts to advance us is the greatest respect to her.~
== L#FALB ~A foolish notion, and one many will happily discard to use for self-interest. But it is... relatively admirable that you might consider such things. Others refuse to even give that much.~
== BC0AURA2 ~Great. Can we at least agree to disagree, if nothing else?~
== L#FALB ~I have agreed to nothing. Not yet. I will continue to observe, to see if you hold the Mother's gifts with as much respect as you claim.~
EXIT

CHAIN
IF ~InParty("L#FALD")
Range("L#FALD",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FALD",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Faldorn","GLOBAL",1)~ THEN L#FALB banter2
~You have no fury, Aura. It will be your doom. Should you be separated from the pack by circumstance, you will not live long.~
DO ~SetGlobal("C0AuraL#Faldorn","GLOBAL",2)~
== BC0AURA2 ~I don't need fury to survive. I believe we've evolved past that, since we were blessed as people with sapience.~
== L#FALB ~We cannot simply discard that which has allowed us to survive! As fury allows the predators of the wild to catch their prey, it is no different for we 'people'. Do not consider yourself above the beasts that have thrived without the help of civilization.~
== BC0AURA2 ~But we have a right to choose the way we wish to live. That is what makes it different from surviving.~
== L#FALB ~I quickly lose hope in righting your ways. For all you believe yourself to be enlightened, you are utterly ignorant in the ways that matter.~
EXIT

CHAIN
IF ~InParty("L#FALD")
Range("L#FALD",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#FALD",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#FaldornToB","GLOBAL",1)~ THEN L#FAL25B bantertob
~When we are through with this trial of <CHARNAME>'s fate, you will return home, yes, Aura?~
DO ~SetGlobal("C0AuraL#FaldornToB","GLOBAL",2)~
== BC0AURA2 ~Of course, Faldorn. After I see a travel a few more places first... but it won't be long until I see Lantan again.~
== L#FAL25B ~You must bring my lessons to your builders, so that their future creations will accomodate the mother's children, instead of harming it.~
== BC0AURA2 ~I can do that, Faldorn, but I can't imagine they're unaware of your kinds of lessons already. Lantan's lived in harmony with nature since our creation.~
== L#FAL25B ~Hmph. I can only believe in such a thing when I see it. Tell them regardless. Perhaps some good will come of our cooperation so far.~
== BC0AURA2 ~Alright, but I really do wish we could just cooperate as friends instead. It's easier to get the message across that way.~
EXIT
