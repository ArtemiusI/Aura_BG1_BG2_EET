CHAIN
IF ~InParty("l#2sdskie")
Range("l#2sdskie",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("l#2sdskie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDSkie","GLOBAL",0)~ THEN L#2SDSKB banter1
~How do you manage to keep your hair and clothes so pristine throughout this whole journey, Aura? I have to fight to keep grime off me, but it's like you repel it naturally somehow!~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDSkie","GLOBAL",1)~
== BC0AURA2 ~It's mostly the Lantanese care products I've got, but I still have to clean myself up from time to time. Are you not used to taking care of yourself, Skie?~
== L#2SDSKB ~Well... I've been trying, but you know the kind of life I came from. I used to have people who took care of these things for me.~
== BC0AURA2 ~*sigh* Yep, I figured it was something like that. Why don't I teach you how to do it efficiently?~
== L#2SDSKB ~I guess I can't put in a halfhearted effort forever. But I want some of your special products too!~
== BC0AURA2 ~Alright. But let's start with the basics first. There's no easy trick to it, Skie! Besides, hard work can be cathartic once you start getting results yourself.~
EXIT

CHAIN
IF ~InParty("L#2sdskie")
Range("L#2sdskie",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2sdskie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDSkie","GLOBAL",1)~ THEN L#2SDSKB banter2
~Thanks for helping me with getting used to so many things, Aura. You're right–it does feel good to be able to solve simple problems by myself.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDSkie","GLOBAL",2)~
== BC0AURA2 ~Hehe, you're welcome, Skie. I'm not being splashed with water as often anymore, so that's an improvement.~
== L#2SDSKB ~Can I ask you one thing, though? Just what kind of status did you have back in Lantan? You seem pretty well off, so... would you count as a noble? Come to think of it, do your people even have traditional nobility?~
== BC0AURA2 ~We... sort of do and don't. If you're asking if we have particularly distinguished families that hold prestige and wealth, then... yes. But we prefer to consider our society a meritocracy, so that every Lantanna can be driven to try and make their own names part of recorded history.~
== L#2SDSKB ~If you ask me, you've already reached that point and probably more. I can't imagine any of your people being that much brighter than you.~
== BC0AURA2 ~You'd think so, but you haven't seen the sorts of things some of the greatest Lantanna are remembered for. Besides... being put on a pedestal isn't really my thing anyways. I'm happy just to try and make other people's lives better.~
EXIT

CHAIN
IF ~InParty("L#2SDSkie")
Range("L#2SDSkie",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2SDSkie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2SDSkieToB","GLOBAL",0)~ THEN BC0AUR25 bantertob
~So, it'll be back to Baldur's Gate after we're done, right, Skie? Are you looking forward to going home?~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2SDSkieToB","GLOBAL",1)~
== L#2SD25B ~Ugh, I suppose I'll have to, yes. If I don't, my father'll probably send the entire Flaming Fist to track me down and tie me to a cart to be taken home, against my will.~
== L#2SD25B ~I just wish he'd understand I can become more than the spoiled little girl who needs taking care of. I've already proven that, and more! Still... as overbearing as he is... I can't just let him get more gray hairs worrying about me all day.~
== BC0AUR25 ~That's... fatherly love at its purest, I guess.~
== L#2SD25B ~And the most smothering! Am I ever going to grow up in his eyes? I'm not just 'Lady Silvershield' anymore. With all I've done, I think I've long earned the right to be seen as a hero.~
== BC0AUR25 ~Well, maybe if... hang on, I had something here for you... ah, there we go! If you can, I'd be happy if, assuming you met with the Grand Dukes, you'd give this to them.~
== L#2SD25B ~What is this? Should I read it now, or is it one of those 'super secret messages' that isn't meant for normal eyes?~
== BC0AUR25 ~Do I look like a spymaster, Skie? It's just some diagrams for upgrading the aqueducts that run through and out of the city. I remember how dated the engineering was the last time I was there... if they'd put these schematics to work, there'd be a chance for cleaner water for everyone.~
== L#2SD25B ~Not to mention this would mean more chances for people to find safer and well-paid work. Are you sure you should just be offering something so valuable to the city, though? I thought Lantan wasn't supposed to give away their knowledge so easily.~
== BC0AUR25 ~If it'll make peoples' lives better... I'll take the risk. Besides, I'm giving it to you, so you can decide if it's really a good idea in our current time or not.~
== L#2SD25B ~Wow, don't go easy on me, or anything... don't worry, I'll make sure this makes it in the hands of people I can trust. And I'll be sure the dukes know you're the one who wrote it.~
EXIT
