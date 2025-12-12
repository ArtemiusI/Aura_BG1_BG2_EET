CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL0Will1","GLOBAL",0)~ THEN L0WILLB C0AuraWill1
~Please don't squint so hard when you're looking at me, Aura. Frankly, it makes me a bit uncomfortable.~ [C0BLANK]
DO ~SetGlobal("C0AuraL0Will1","GLOBAL",1)~
== BC0AURA2 ~Oh! I'm sorry, that is a little rude, isn't it? I've just never had a companion I could see through before.~
== L0WILLB ~Fair enough. I guess I've just been like this for long enough that I've forgotten how unusual this is.~
== BC0AURA2 ~Teehee. You're not unusual at all, Will. Once I get over the fact that you don't cast a shadow, or need to breathe and eat, there's nothing that strange about you. You don't think you're too different from yourself when you were still living, do you?~
== L0WILLB ~No, not that much. I have fewer things to worry about, certainly, but I still remember and love the same things I did in life. That's enough.~
== BC0AURA2 ~Did I mention I'm normally dead terrified of ghosts? Not you, though. I don't see you as being scary.~
== L0WILLB ~Thank you.~
EXIT

CHAIN
IF ~InParty("L0Will")
Range("L0Will",15)
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL0Will1","GLOBAL",1)~ THEN BC0AURA2 C0AuraWill1
~Will, I have a question for you... when does a spirit know that it's time to move on?~ [C0BLANK]
DO ~SetGlobal("C0AuraL0Will1","GLOBAL",2)~
== L0WILLB ~I feel I'm not the most suited person to answer that, Aura. I have yet to feel that calling into the afterlife.~
== BC0AURA2 ~Oh, I see... so that means you don't have anything anchoring you here against your will. No lasting regrets or unfulfilled desires?~
== L0WILLB ~Everything living—though I suppose I only 'live' in the metaphorical sense—can have regrets, Aura. But I'm not a revenant, or any other being that is keeping myself in this plane by force. I suppose that's why I haven't gone mad or become a monster.~
== BC0AURA2 ~That... makes a lot of sense, actually. But doesn't it feel strange, not knowing when you'll finally be able to rest?~
== L0WILLB ~Perhaps a little. But I know my time will come. Until then, I'm happy to be among friends, and this state lets me help as best I can, for as long as I can.~
EXIT

CHAIN
IF ~InParty("L0Will")
Range("L0Will",15)
!StateCheck("L0Will",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL0WillToB","GLOBAL",0)~ THEN BC0AUR25 C0AuraWillToB
~You'll go back to your grave when all this over, won't you, Will?~ [C0BLANK]
DO ~SetGlobal("C0AuraL0WillToB","GLOBAL",1)~
== L0WIL25B ~I'll continue wandering for a while, but eventually I'll return. Where else could I go?~
== BC0AUR25 ~But... is there a chance it won't sustain you anymore? You've become bound to <CHARNAME>'s plane, so...~
== L0WIL25B ~Ah, but I didn't say I'd go back to keep my existence going. I feel like I've accomplished something important travelling with you all. If I had to finally rest, it'd be as good time as any.~
== BC0AUR25 ~Maybe... that's for the best... but I'll still miss you.~
== L0WIL25B ~Perhaps, if I remember all this, wherever I end up next... I will miss you too.~
== BC0AUR25 ~I still remember the way... when I have a chance, I'll plant some higanbana for you. As an offering... and so other people who find you might know the resting place of a good friend, and a gentle spirit.~
== L0WIL25B ~I'd appreciate that.~
EXIT