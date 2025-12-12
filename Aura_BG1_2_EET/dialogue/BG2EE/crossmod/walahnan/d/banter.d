CHAIN
IF ~InParty("L#2Walah")
Range("L#2Walah",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2Walah",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Walahnan","GLOBAL",0)~ THEN L#2WHB banter1
~Aura, I have a question... no, a request would be more accurate... erm...~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Walahnan","GLOBAL",1)~
== BC0AURA2 ~Yep? I'm listening.~
== L#2WHB ~It's your hair. How is it you manage to keep it so... shiny and pristine at all times, even in this sweaty and unclean adventuring lifestyle? Is there a secret? Some kind of special Lantanese soap?~
== BC0AURA2 ~Well, I do use my own personal type of soap... but there's no secret, Walahnan. Just lather, rinse, and brush well. But make sure your hair is dry when you brush! I use a little bit of magic to speed up the process.~
== L#2WHB ~So do I, in fact. But I can't seem to get the same results, and I've tried. My hair and beard just catch... every nasty bit of grime no matter how much I try to avoid it. Can't you give me just a little bit of help?~
== BC0AURA2 ~Hmm... mmm...~
== L#2WHB ~What? Excuse me, I don't particularly enjoy being stared at out of nowhere. It's very awkward.~
== BC0AURA2 ~Sorry, I just needed to take a closer look... have you tried a dry spray?~
== L#2WHB ~Dry? There's such a thing?~
== BC0AURA2 ~Oh, yes. It's a nice, long-lasting solution for hair. It's worth a try. Or maybe some pomade... hmm, I'll have to think about what's most suitable...~
== L#2WHB ~I'll be waiting eagerly. The day may finally come when I'll stop feeling the constant urge to scratch my beard.~
EXIT

CHAIN
IF ~InParty("L#2Walah")
Range("L#2Walah",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2Walah",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Walahnan","GLOBAL",0)~ THEN L#2WHB banter2
~I've noticed your Muffy tries to get close to Ploompus, Aura. Though I don't think Ploompus likes him much.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Walahnan","GLOBAL",1)~
== BC0AURA2 ~Oh, I'm sorry, Walahnan. I need to keep a closer eye on him. Maybe it's because of the slime.~
== L#2WHB ~The... slime? What does that have to do with it?~
== BC0AURA2 ~Muffy is obsessed with wiping up grimy and dirty things. I'm certain he used to be an akaname in a previous life. They're yōkai who clean dirty things with their tongues.~
== L#2WHB ~Eugh. I can understand keeping things clean, but I would never touch anything dirty with my mouth.~
== BC0AURA2 ~Maybe Muffy's trying to give Ploompus a wiping down? He probably thinks he's helping.~
== L#2WHB ~I'm sure he means well. But, er, I should probably try to keep the two separated from now on. Ploompus looks irritated, and it makes him... unpredictable, to put it nicely. Whatever happens when he gets mad can't be good.~
EXIT

CHAIN
IF ~InParty("L#2Walah")
Range("L#2Walah",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2Walah",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Walahnan","GLOBAL",0)~ THEN BC0AUR25 bantertob
~Walahnan, could I ask you a few academic questions about chronomancy?~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Walahnan","GLOBAL",1)~
== L#2WH25B ~*You* need to learn something from *me*? Huh, I feel like I should be honored, or something. Ask away.~
== BC0AUR25 ~I was just wondering, just how far can magic affect the passage of time, and the events that push it forward?~
== L#2WH25B ~I... don't think I can answer that, Aura. There's still a lot about time that I, or any chronomancer for that matter, has yet to learn. Changing the past to affect the present isn't possible yet, as far as I know, but who knows in the... er, future?~
== BC0AUR25 ~It's just... I've been told many times that this sort of theory is ridiculous. "You can't change the past, or you already would've". You know? We call it a paradox. Just trying to think about it logically makes one's head spin.~
== L#2WH25B ~The whole "killing your own grandfather" thing, yes, I know. I can't explain it in a way that follows logic completely, but think of it this way. Everything you do changes the future, even if it's only a little. The present we live in is the only one to us, but there could be countless others out there.~
== L#2WH25B ~One where you didn't eat dinner last night and fought the next battle hungry, changing the course of the fight, for example. Or one where we didn't have this conversation now. Our past isn't the only one there is. So if you changed something in your past, it wouldn't be "yours" anymore, in a manner of speaking.~
== BC0AUR25 ~That does make a little bit of sense, I suppose... so what chronomancy is doing is reaching out to those other 'possibilities' out there, so to speak?~
== L#2WH25B ~You can consider that the simplest way to think about it, yes. It's quite complicated. But as long as it helps me take care of stains in my robes and grow delicious fruit without having to wait, I'm satisfied with what I know.~
== BC0AUR25 ~Hehe, fair enough. I suppose unlocking the secrets to the multiverse isn't always what brings the most happiness. Thank you for enlightening me.~
EXIT
