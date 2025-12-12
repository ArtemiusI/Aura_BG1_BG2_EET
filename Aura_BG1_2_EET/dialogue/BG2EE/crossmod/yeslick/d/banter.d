CHAIN
IF ~InParty("lk#yeslk")
Range("lk#yeslk",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraLK#Yeslick","GLOBAL",0)~ THEN BLK#YES banter1
~Ye ever think o' takin' on smithin', Aura? I think it be not far apart from the art o' artifice, only with a touch o' heavier liftin'.~ [C0BLANK]
DO ~SetGlobal("C0AuraLK#Yeslick","GLOBAL",1)~
== BC0AURA2 ~I've thought about it, actually. The gold dwarves of the Great Rift once came to Lantan to exchange knowledge, and I watched their works. It was inspiring.~
== BLK#YES ~So what changed yer mind then, lass? Ye seem the sort to commit to any way o' life that draws yer interest.~
== BC0AURA2 ~Well, I thought I should leave that craft to the masters. Besides, look at these arms, Yeslick. I'd never be able to swing a hammer for the hours it'd take. I'd fall flat on the ground within minutes.~
== BLK#YES ~Heh, that may be true. Though I could show ye a few classic dwaven trainin' exercises to bolster yer stamina an' train yer muscles, if ye're willin'.~
== BC0AURA2 ~Er... are these exercises the 'bringing your body to its limits' sort that makes the trainee wish they were dead halfway through?~
== BLK#YES ~Nay! Well, perhaps a couple o' the young'uns might've felt that way... mayhaps as many as half?~
== BC0AURA2 ~No, no thank you! I achieved top marks in every class at the academy except physical training! I'll do anything not to have to go back to those days!~
== BLK#YES ~Ah, just jokin' with ye, lass.~
EXIT

CHAIN
IF ~InParty("lk#yeslk")
Range("lk#yeslk",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraLK#Yeslick","GLOBAL",1)~ THEN BLK#YES banter2
~Does ye count yerself among the clergy o' Gond, Aura? I don't think I've e'er seen ye pray, nor carry any symbols o' the faith.~
DO ~SetGlobal("C0AuraLK#Yeslick","GLOBAL",2)~
== BC0AURA2 ~That's... complicated to explain, Yeslick. I'm not a devotee, if that's the easiest way to explain it.~
== BLK#YES ~Nay? I believed all Lantanna believed the teachings o' the Wonderbringer. Yer ancestors believed they owed all their knowledge to His teachings.~
== BC0AURA2 ~It's true, but... I've had trouble committing to the faith, ever since the Time of Troubles.~
== BLK#YES ~'Tis because o' the secret o' smokepowder he granted to yer people, is it not? I've handled one such tool that was made to wield its power... those 'firearms', as I recall. A truly terrifying weapon o' destruction, indeed.~
== BC0AURA2 ~Yes... I was still very young during that time, and I never met the Wonderbringer's avatar, nor did I really understand the meaning of what Him being among my people meant. But I still remember how Lantan changed from His presence.~
== BLK#YES ~And, well... I can guess at yer point o' view, lass. The presence of a god among mortals can bring awe, but also dread.~
== BC0AURA2 ~I was inspired. But I eventually became afraid. We were given knowledge of a great power... but things went wrong more than once. People were hurt. And I wondered if what we were given was truly a good thing.~
== BLK#YES ~I understand, lass. But think o' in another way. Gond gave yer people the knowledge believin' ye be worthy of it. Knowledge o' the new can ne'er come without faults. But the Lantanna have wielded it with greater restraint an' wisdom than most, that I also believe. More than any society o' humans, an'—may me kin forgive me for sayin' this—even dwarves.~
== BLK#YES ~The good gods do not demand yer fealty, but I hope ye might consider that yer people's patron god have yer best interests in mind, regardless o' the mistakes.~
== BC0AURA2 ~I... I think you have a good point, Yeslick. Thank you, I'll... think about it.~
EXIT

CHAIN
IF ~InParty("lk#yeslk")
Range("lk#yeslk",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("lk#yeslk",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraLK#YeslickToB","GLOBAL",0)~ THEN BC0AURA2 bantertob
~Yeslick?~
DO ~SetGlobal("C0AuraLK#YeslickToB","GLOBAL",1)~
== BLK#YE25 ~Aye, lass. Somethin' ye need? Ye're not hurt anywhere, are ye? I've said it before, ye mustn't hold back if ye need to call for help.~
== BC0AURA2 ~Oh, no. I'm fine, really. I was going to ask about you... after we're through with our quest to help <CHARNAME>, you're going to part ways, aren't you?~
== BLK#YE25 ~If Clangeddin's blessings be with me, an' this old dwarf lives to see this to the end... aye, 'twould be time for me to see to me own duties next.~
== BC0AURA2 ~Do you plan to start and rebuild your clanhold?~
== BLK#YE25 ~That be the start of it, aye. An' with what power an' wealth I have now, I'll be takin' steps to ensure no tragedy like the last befalls us again.~
== BC0AURA2 ~I wish the best for you, Yeslick. And if there's anything I... or any builder of Lantan could do to help, we'll be ready to respond to your call. I'm sure I have enough influence at home to offer you whatever is needed.~
== BLK#YE25 ~That be kind, Aura, but a dwarf's honor demands he make up for his own mistakes by his own hand. I failed me clan once, an' so I must be the one to restore 'em.~
== BC0AURA2 ~Didn't you just say one should ask for help when needed?~
== BLK#YE25 ~I... did say that, aye. Turnin' me own lectures against me, eh? Heh.~
== BC0AURA2 ~Well, I've grown a lot from your wisdom. It'd make me happy if I can help you if I can. Think of it as an act of friendship rather than charity.~
== BLK#YE25 ~Hnh, ye have a point. So be it... odds are that I'll be countin' on ye in the future, Aura. A fine lady this journey's made of ye.~
EXIT