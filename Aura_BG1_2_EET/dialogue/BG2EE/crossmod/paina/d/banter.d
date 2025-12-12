CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("C0PaiNa",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("c0aurapaina1","GLOBAL",0)~ THEN BC0PAINA C0AURAPAINA1
~Hmm... yes, I think that would settle things, little gnome. I challenge you to a contest of skill.~
DO ~SetGlobal("c0aurapaina1","GLOBAL",1)~
== BC0AURA2 ~What?~
== BC0PAINA ~My concocted poisons against your explosive weaponry. We shall see which is more potent on the battlefield. Whoever slays the most foes within the week will be victorious.~
== BC0AURA2 ~I– um, don't think that's a healthy standard for competition...~
== BC0PAINA ~Afraid to lose, hmm?~
== BC0AURA2 ~*sigh* Couldn't we just have a friendly baking contest or something instead?~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("C0PaiNa",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("c0aurapaina1","GLOBAL",1)~ THEN BC0AURA2 C0AURAPAINA2
~Have you heard of watchspiders, Pai'Na?~
DO ~SetGlobal("c0aurapaina1","GLOBAL",2)~
== BC0PAINA ~Magical spiderkin. The drow keep them as playthings, the wretches.~
== BC0AURA2 ~We keep them in Lantan too. They guard our treasuries and other areas of importance. We value them greatly!~
== BC0PAINA ~You would do best to treat them with the respect they deserve. I would condemn you for taking advantage of them at all, but I can accept that your kin may understand their value.~
== BC0AURA2 ~I wish I could show you the two at my home. My mother named them Eye and Spy. They're very friendly, as scary as they can look to some people.~
== BC0PAINA ~That's... good, I suppose. What is your point, exactly?~
== BC0AURA2 ~I just wanted you to be assured I'm not afraid or dismissive of arachnids. We can get along!~
== BC0PAINA ~It will take more than that. At least this is an acceptable start.~
EXIT