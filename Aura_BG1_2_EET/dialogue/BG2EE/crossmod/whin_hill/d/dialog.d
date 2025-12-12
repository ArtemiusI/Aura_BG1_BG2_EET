I_C_T L#AFDRA 0 C0AuraWhinHillDragonStart
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Wow... a copper dragon! I haven't seen one since...~
== L#AFDRA ~Now then, what do you want, little ones?~
END

INTERJECT L#AFDRA 12 C0AuraWhinHillDragonAttack
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~No, <CHARNAME>, please stop! We don't have a reason to hurt him!~
END
  ++ ~You're right. I don't know what came over me.~ EXTERN L#AFDRA C0AuraWhinHillDragonAttack.1
  ++ ~Fine.~ EXTERN L#AFDRA C0AuraWhinHillDragonAttack.1
  ++ ~No, but I want a nice new set of armor!~ EXTERN L#AFDRA C0AuraWhinHillDragonAttack.2

CHAIN L#AFDRA C0AuraWhinHillDragonAttack.1
~Hmph. The nice-smelling little one has some sense, at least. I'll let you off this time.~
EXIT

CHAIN L#AFDRA C0AuraWhinHillDragonAttack.2
~Ugh. Let's just make this quick!~
COPY_TRANS L#AFDRA 12

CHAIN IF WEIGHT #-1 ~Global("C0AuraWhinHillDragonTalk","GLOBAL",1)~ THEN L#AFDRA whinhill-dragon
~Hnnh... hold it. Come closer, little one. No, not you, <PRO_RACE>, though you're all little, the LITTLEST one. I want to have a closer check of your scent.~ [C0BLANK]
DO ~SetGlobal("C0AuraWhinHillDragonTalk","GLOBAL",2)~
== C0AURA2J ~Me? Um, alright, Mr. Dragon...~
== L#AFDRA ~*sniff*... *sniff* I thought so... it's faint, but there's the scent of another copper dragon on you. It doesn't carry the smell of blood with it, so you're clearly not a dragon hunter. It's that trinket hanging from your bow, isn't it? That piece of dragon's claw?~
== C0AURA2J ~Oh... it's from my friend, Ceri—Ce'rithalairixen. She's a copper dragon who lives at my home, Lantan. You wouldn't happen to... know her, would you? I don't know close-knit dragons are when it comes to their kin.~
== L#AFDRA ~Mmm. I'm not fond of leaving my lair all too often, but surprisingly, I do know that little gremlin, believe it or not. She learned tricks from your little gnome artificers, didn't she? She flew to this place a few years ago, seemingly knowing about me being here, and played a rather silly prank on me.~
== L#AFDRA ~If you take a hike to the other side of the hill, you might still see the crater she left behind. It's an eyesore, but I've been too lazy to fill it back up.~
== C0AURA2J ~Ah! I'm sorry! Really, really sorry!~
== L#AFDRA ~What are you being sorry about?~
== C0AURA2J ~Oh... it's just that... I've been having to apologize on her behalf during all the years I spent at the academy with her... I just do it by reflex at this point when she bothers anyone.~
== L#AFDRA ~Eh, don't worry about it, tiny one. To copper dragons, a prank is about as normal as saying hello. Still, I wasn't expecting one set up with an elaborate series of bizarre gadgets. I couldn't even begin to respond to it. Those Lantanese are really something else, and combining it with the cunning of one of our kind is terrifying.~
== L#AFDRA ~Not to mention, she left a nice mountain of fruit behind as an apology, so I couldn't really hold it against her. Even with her annoying laughter echoing in the tunnels.~
== C0AURA2J ~Ahaha... that sounds like her. She can get anyone's skin, but she's so sweet nobody can stay angry at her once she makes it up to them.~
== L#AFDRA ~You haven't seen her in a while, have you?~
== C0AURA2J ~I... no, I haven't.~
== L#AFDRA ~To we dragons, a few years passes by in the blink of an eye. Still, try to make some good memories with her. A friendship between a dragon and non-dragon is an uncommon thing, and those that last are even less so.~
== C0AURA2J ~Of course. Ceri's important to me too. Thank you, Vive.~
== L#AFDRA ~Good.~
== L#AFDRA ~Also, if you learn she plans to stop by again... tell her to gather some roseblossom apples next time. Those are several times juicier and crunchier than the yellow ones from before.~
EXIT

CHAIN
IF ~InParty("L#AFU")
Range("L#AFU",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#AFU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Afu","GLOBAL",0)~ THEN L#AFUB banter1
~Afu sees many strange things that you make, Aura. Things Afu cannot imagine seeing even in dreams.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Afu","GLOBAL",1)~
== BC0AURA2 ~Hehe, thanks, Afu... just don't steal any of them, alright?~
== L#AFUB ~Afu would never do that! I... oh, uh... what's this in Afu's hand?~
== BC0AURA2 ~*Afu...*? Give that back, or I'll... I'll... keep looking at you sternly until you do!~
== L#AFUB ~Hehehe... Afu's hand does things without Afu's head agreeing sometimes. Bad hand! Bad! *slap slap slap*~
== BC0AURA2 ~Now, please don't do that. I can agree to show you any of my collection, Afu, but you have to ask first, okay?~
== L#AFUB ~Well... usually when Afu asks for things, Afu gets maybe one word out before being chased with pitchforks and dodging thrown rocks.~
== BC0AURA2 ~I won't do that. Do I look that mean, Afu? Be honest.~
== L#AFUB ~No. You're a very nice gnome, Aura. Afu thinks maybe the nicest.~
EXIT

CHAIN
IF ~InParty("L#AFU")
Range("L#AFU",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#AFU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Afu","GLOBAL",1)~ THEN L#AFUB banter1
~Aura, do you know about that song? All kobolds know it, and many gnomes too.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#Afu","GLOBAL",2)~
== BC0AURA2 ~Which song?~
== L#AFUB ~You know, that one. Afu doesn't know the name, but remembers the words very well.~
== BC0AURA2 ~What are you—oh, no. Nooo, no no no. Don't you sing that song to me, Afu, no!~
== L#AFUB ~Are you sure? Afu thinks it's catchy. *cough cough*~
== L#AFUB ~"I like gnomes
so dumb and fat
fat and du—"~
== BC0AURA2 ~NO! Stop singing it!~
== L#AFUB ~Heh heh.~
EXIT

CHAIN
IF ~InParty("L#AFU")
Range("L#AFU",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#AFU",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#AfuToB","GLOBAL",0)~ THEN L#AFU25B bantertob
~Aura, do you think Afu can have a gold squirrel?~ [C0BLANK]
DO ~SetGlobal("C0AuraL#AfuToB","GLOBAL",1)~
== BC0AURA2 ~A... gold squirrel? You mean, one like Muffy?~
== L#AFU25B ~Yes, like Muffy, one that moves and jumps and gathers gems. Or maybe a tiny lizard. Afu would like that.~
== BC0AURA2 ~Ahaha... I guess I can't blame you. Muffy is a sweet little boy, and easy to care for. But, I don't think you'll have much luck.~
== L#AFU25B ~You don't have any tips for Afu? Some kind of challenge to do? Afu doesn't mind working hard so much anymore.~
== BC0AURA2 ~Well... maybe if you visit Kozakura and get lucky enough to meet a friendly yōkai. I can't suggest more than that. But make sure to pack a good variety of food if you mean to try!~
EXIT