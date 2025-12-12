CHAIN
IF ~InParty("l#2eddrd")
Range("l#2eddrd",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDEddard","GLOBAL",0)~ THEN L#2EDB banter1
~I think our family occasionally trades Lantanese goods with foreign merchants back in Baldur's Gate. This might be the first time I've met someone from Lantan, though.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDEddard","GLOBAL",1)~
== BC0AURA2 ~Really? That really raises the pressure, knowing I'm the first impression of our people someone related to a Grand Duke.~
== L#2EDB ~Don't worry, Aura. I'd say that if more of your people were remotely like you, then it reflects well on your homeland.~
== BC0AURA2 ~Hehe, that's good to know. Not many adventurers come from my homeland, so those that do have to be careful of how they present themselves.~
== L#2EDB ~I'm a noble. I know how it is. Although for me, it's an active effort, and it's tiring. You're just being yourself.~
== BC0AURA2 ~Well, Eddard, we're not at a royal ball, so you can try to do the same, can't you?~
== L#2EDB ~I can, and I much prefer it that way. I'm glad we can talk as friends, rather than having to carefully measure every word.~
== BC0AURA2 ~Let's not stand around and talk for too long, though, <CHARNAME>'s giving us that look.~
== L#2EDB ~You're right, <PRO_HESHE> is. Come on.~
EXIT

CHAIN
IF ~InParty("l#2eddrd")
Range("l#2eddrd",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDEddard","GLOBAL",1)~ THEN BC0AURA2 banter2
~How's the tincture I gave to you doing for your sleep, Eddard? I hope it's making a difference.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDEddard","GLOBAL",2)~
== L#2EDB ~It took some time for my body to get used to it, but I think it's been helping a lot, Aura, much better than the remedy I was using before. Thank you.~
== BC0AURA2 ~I'm glad. It seems like you've been having anxiety dreams lately. This one's something I learned to make while I was in Kozakura... it's never failed for me before, but I wasn't sure if it'd have the same effect for everyone.~
== L#2EDB ~You must've gone a long way to have travelled to the east. Is that how you've managed to learn so much?~
== BC0AURA2 ~Well, that, and the fact that I just wanted to travel. My grandmother Minerva left home years ago to see the world. I wanted to understand what sights kept her away all these decades... and maybe I could find her myself as well.~
== L#2EDB ~Hang on, your grandmother's name is Minerva? I remember... there was a book about her, wasn't there? Something about devils in the north. I just realized the two of you were related.~
== BC0AURA2 ~That's right. She wrote it, although we probably read it under different titles, since she never bothered to name it herself.~
== L#2EDB ~I read about the adventures about the white lich-dragon and the haunted castle... wait, we're not going to end up being the subjects for another book like it, are we?~
== BC0AURA2 ~Hehe, who knows? I *am* writing down every incident we've been through, just in case...~
== L#2EDB ~You don't even sound remotely concerned about the possibility...~
EXIT

CHAIN
IF ~InParty("l#2eddrd")
Range("l#2eddrd",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("l#2eddrd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDEddardToB","GLOBAL",0)~ THEN L#2ED25B bantertob
~I'd imagine you've gathered enough knowledge to help Lantan prosper for the next several generations at this point, Aura.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDEddardToB","GLOBAL",1)~
== BC0AUR25 ~Hopefully that's the case. I just want to make sure whatever changes I make will be for the better, not the worse.~
== L#2ED25B ~There's no way you'd ever try to make things worse. I've seen the way you are—even a demon might not be able to handle your positive energy.~
== BC0AUR25 ~I dunno... those demons we've been exorcising like pulling weeds lately would probably beg to differ. But back to the point... one day, I'll be gone, and only the things I made will be left. I sometimes wonder whether they'll always be there to fulfill my intent, or if others will forget why they were made to begin with.~
== L#2ED25B ~That's something we'll all have to bear with. We can't be around to set things right forever. But others can.~
== BC0AUR25 ~I've been thinking the same way... I think teaching might be my calling one day, after I've made everything I've needed to.~
== L#2ED25B ~We'll just have to make it to that day. Right now, we've got each other's backs though, so I like our chances. Here's to making the realms a better place.~
EXIT
