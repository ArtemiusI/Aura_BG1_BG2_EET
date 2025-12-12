CHAIN
IF ~InParty("L#DVA")
Range("L#DVA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#DVA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Dvaradime","GLOBAL",0)~ THEN L#DVAB banter1
~That be a curious bow ye carry, Aura. Built it yerself, did ye?~
DO ~SetGlobal("C0AuraL#Dvaradime","GLOBAL",1)~
== BC0AURA2 ~Not by myself, no. I got a lot of guidance from my uncle Dedalus. But the original schematic was mine.~
== L#DVAB ~May I try handlin' it fer a spell?~
== BC0AURA2 ~Well...~
== L#DVAB ~If it be too precious to ye, I understand.~
== BC0AURA2 ~No, no... I'm not against it. It's just that it's not like a standard bow. It might be tricky to use.~
== L#DVAB ~Ye never know. An' even if so, I can mayhap still learn a thing or two.~
== BC0AURA2 ~Alright, then.~
== L#DVAB ~Ah. Mithral, eh? My speciality is more leather than metals, but I can still tell a good alloy easily enough. That would make up fer the problem o' weight o'er a typical bow. But the important question be how it shoots, eh?~
== L#DVAB ~...Hmm.~ [SWI_02]
== L#DVAB ~That be harder than I expected. The wheels be makin' up fer the rigidity of the limbs, aye? I see it needs a certain technique to it.~
== BC0AURA2 ~Still, that was really impessive! Most people couldn't shoot an arrow that well off a first try.~
== L#DVAB ~Thank ye, lass, but I see the tool be made fer the hand of its creator an' none other, an' so I'll hand it back to ye. I be curious, though. Does ye think one day, such a design might become widespread throughout the Realms?~
== BC0AURA2 ~That's... I don't think that's up to me.~
== L#DVAB ~Nay, I disagree. The knowledge be in yer mind, an' its example in yer hands. I think that choice be yers to make, an' none other.~
== BC0AURA2 ~Maybe. I don't have the answer right now, though. There's always knowledge that will harm more than it helps. I can't bring myself to be the one responsible for making that kind of mistake.~
== L#DVAB ~Fair enough, Aura. For what it be worth, I trust ye to make the right decision when the time comes.~
EXIT

CHAIN
IF ~InParty("L#DVA")
Range("L#DVA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#DVA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
GlobalGT("L#DvaradimeQuest","GLOBAL",34)
Global("C0AuraL#Dvaradime","GLOBAL",1)~ THEN L#DVAB banter2
~Ye be a strong lass with a gentle heart, Aura. It be a good match for yer wealth of knowledge. I reckon yer parents must be right proud o' ye.~
DO ~SetGlobal("C0AuraL#Dvaradime","GLOBAL",2)~
== BC0AURA2 ~That's kind of you to say, Dvaradime, but you haven't met my sisters yet. They're the strong ones. I just followed from their examples.~
== L#DVAB ~Well, that be how we mortals be, lass. No one e'er truly gets strong on their own, an' those that believe it simply don't appreciate enough those who helped make 'em who they are.~
== BC0AURA2 ~Haha. I think my papa said the same thing when I shared the same doubts with him. Er, sorry. I didn't mean to imply you were old.~
== L#DVAB ~Nae, no offense taken.~
== BC0AURA2 ~What about you, Dvaradime? You're one of the strongest and cleverest dwarves I've ever met.~
== L#DVAB ~I've plenty of people I owe who I am to like anyone else. I have me clan, me friends, an'... I had Borcx.~
== BC0AURA2 ~Your... I'm sorry, Dvaradime, I didn't mean for this talk to lead to this. We can stop if...~
== L#DVAB ~Nae, no need for that. Borcx be an irreplacable part of me, and though he may be gone, nothing'll change that. It be more of a dishonor to his memory to not talk about the good things he's done. I'll tell you all about him when we have the time, if ye care for it.~
== BC0AURA2 ~I would, absolutely.~
EXIT

CHAIN
IF ~InParty("L#DVA")
Range("L#DVA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#DVA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#DvaradimeToB","GLOBAL",0)~ THEN L#DVA25B bantertob
~Ye've only gotten more imaginative with yer crafts over time, Aura. It be hard to imagine it not all be the work o' magic.~
DO ~SetGlobal("C0AuraL#DvaradimeToB","GLOBAL",1)~
== BC0AUR25 ~Hehe, it's strange, but I feel like the pressure's been pushing me into working harder and thinking more. I'd never have managed to achieve this much otherwise.~
== L#DVA25B ~Is that so? Aye... perhaps ye have a point. We've accomplished much, an' we're stronger for it. That be a good thing.~
== BC0AUR25 ~I don't suppose you have some regrets, do you, Dvaradime?~
== L#DVA25B ~Me? Nay... losin' Borcx be the worst, an' that card be played by fate long afore <CHARNAME> an' ye met me. I feel in my heart that he'd be pleased to see me as I am now.~
== BC0AUR25 ~I'm sure that if you believe it, that's exactly how he would feel. I doubt anyone knows his character more closely than you.~
== L#DVA25B ~Mmm, I hope. I've been tryin' to live a life he'd be proud of. That's the least I can do.~
EXIT