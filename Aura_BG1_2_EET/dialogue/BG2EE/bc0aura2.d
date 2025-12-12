
// Aerie

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",0)~ THEN BAERIE C0AuraAerie1
~Oh. Oh my... whatever is that delicious scent?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~Wha—oh, Aerie! You startled me. I was just having a quick snack.~
== BAERIE ~It's... it's quite alright. I just caught a whiff of something lovely and sweet. Is that apples?~
== BC0AURA2 ~Yep, it's a candied apple. They're sliced, then coated with caramel, nuts and cinnamon. It's a simple treat, but I really enjoy it.~
== BAERIE ~I thought it smelled familiar! I used to help Uncle Quayle make something similar, back when I was still with the circus. Haha... it's very popular with children, as I recall.~
== BAERIE ~Er, I didn't mean to suggest you're like a... I mean, even I would, um, a few times... ooh, never mind.~
== BC0AURA2 ~No, no, it's okay! I'm... well, it's not like it's a secret that I like sweets. I don't think it's a childish thing at all.~
== BAERIE ~Really? Well, um... then...~
== BC0AURA2 ~...um, would you like to have some?~
== BAERIE ~Oh, I'd love to!~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",1)~ THEN BC0AURA2 C0AuraAerie2
~Aerie, your people's home... it's called Faenya-Dail, right?~
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BAERIE ~M–my people? I mean... yes, that's its name.~
== BC0AURA2 ~Ah... I'm really sorry. I mean to say your homeland. I know you've...~
== BAERIE ~No... no, it's alright. Maybe someone else might've meant differently, but... I know you're just curious.~
== BC0AURA2 ~I am. There's so little knowledge of the avariel, even in all the libraries I've been in... I've had so many questions to ask, but I didn't want to bother you.~
== BAERIE ~I understand.~
== BC0AURA2 ~Then I immediately make a verbal faux pas on the first try. Stupid me.~
== BAERIE ~It's okay. I'm actually happy that you'd be curious to know more about the avariel. So few down here even know that we exist...~
== BC0AURA2 ~Not just your people. You, as well! But, um, maybe another time. You can ask me questions too, if you want.~
== BAERIE ~Well, then... what about your home, Aura? Do you miss it?~
== BC0AURA2 ~Of course I do! I miss Lantan very much. I miss my family most of all, though.~
== BAERIE ~Quayle told me a story or two about Lantan once. It all seemed so mythical to me, with all the talk of colleges and airships and machinery. But in reality it's not so far away from here, is it?~
== BC0AURA2 ~No, not at all. Only a little bit past the Trackless Sea.~
== BAERIE ~If that is so, then you could always go home whenever you wanted to, couldn't you?~
== BC0AURA2 ~I– I guess I could, yes. What about you, Aerie? Don't you miss your home too?~
== BAERIE ~Oh... I, I can't... I don't think I'll be seeing Faenya-Dail again. But I think about it... always.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",2)~ THEN BAERIE C0AuraAerie3
~What god to you worship, Aura? I thought all Lantanese inventors followed Gond the Wonderbringer, but I don't hear you mentioning His name much.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)
RealSetGlobalTimer("C0AuraAerieRestTalkTimer","GLOBAL",3600)~
== BC0AURA2 ~I follow the ideals of the Gondar clergy. Artifice, invention, craft. But I... don't pray to Gond.~
== BAERIE ~Is there a difference between the two? If you follow the things that Gond stands for, isn't that the same thing as worshipping the god?~
== BC0AURA2 ~I'm not sure. I used to hang tapestries in my room with the gods who embodied what I respected. Besides Gond, there was Mystra for Magic, Oghma for Wisdom, Deneir for Knowledge... it's hard for me to put one god above the rest.~
== BAERIE ~Oh. I–I see... then we aren't so different after all. I worship Baervan, but I still remember the teachings of Aerdrie Faenya, even if she won't have me anymore, and I like to think on them sometimes... it's strange, but I believe in them both. I'm glad to know that's not wrong.~
== BC0AURA2 ~I don't think it's wrong. The good gods... they should understand what you want to believe, I think.~
EXIT

CHAIN IF WEIGHT #-1
~Global("C0AuraAerieRestTalk1","GLOBAL",1)~ THEN BC0AURA2 C0AURA-AERIE-RESTTALK
~Zzzz... mmm, zzz....~ [C0BLANK]
DO ~SetGlobal("C0AuraAerieRestTalk1","GLOBAL",2)
SetGabber(Player1)~
== AERIEJ ~Shh, <CHARNAME>. Don't disturb her. She's very tired after the day we've been through.~
== BC0AURA2 ~Zzz... m... mother? Mother, can I watch Juno practice in the field again? Mmph... okay, back before supper... Zzz...~
== AERIEJ ~She mumbles a lot in her sleep. *giggle* It's rather adorable.~
END
++ ~She seems to favor your company.~ EXTERN AERIEJ C0AURA-AERIE-RESTTALK.1
++ ~You can't stay here with her head on your lap, Aerie. You need to rest too.~ EXTERN AERIEJ C0AURA-AERIE-RESTTALK.2
++ ~I'll leave you two alone.~ EXTERN BC0AURA2 C0AURA-AERIE-RESTTALK.4

CHAIN AERIEJ C0AURA-AERIE-RESTTALK.1
~Do you really think so, <CHARNAME>? Although, I suppose she does come to talk with me a lot.~
EXTERN AERIEJ C0AURA-AERIE-RESTTALK.3

CHAIN AERIEJ C0AURA-AERIE-RESTTALK.2
~I know... it just doesn't feel right to wake her up, though. She really likes being around me.~
EXTERN AERIEJ C0AURA-AERIE-RESTTALK.3

CHAIN AERIEJ C0AURA-AERIE-RESTTALK.3
~I don't mind, though. She's a very sweet person.~
END
++ ~That she is.~ EXTERN BC0AURA2 C0AURA-AERIE-RESTTALK.4
++ ~I enjoy having her around, too.~ EXTERN BC0AURA2 C0AURA-AERIE-RESTTALK.4
++ ~She stays as long as she's useful.~ EXTERN BC0AURA2 C0AURA-AERIE-RESTTALK.4

CHAIN BC0AURA2 C0AURA-AERIE-RESTTALK.4
~Zzz... mmph... cherry blossoms in the spring... wish I could see 'em again... Zzz...~
== AERIEJ ~Don't worry about me, <CHARNAME>. I'll stay here for a while. You should get some rest.~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

INTERJECT BAERIE 448 C0AuraAerieKorganConflict
== BC0AURA2 IF ~IsValidForPartyDialog("C0Aura") GlobalGT("C0AuraAerieFriendship","GLOBAL",0)~ THEN ~Aerie! Oh, for goodness sake... I'll go after her, <CHARNAME>, just wait a moment.~
DO ~SetGlobal("C0AuraAerieKorganConflict","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("C0ACUT5",FALSE)~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0AuraAerieKorganConflict","GLOBAL",1)~ THEN BC0AURA2 C0AuraAerieKorganConflict1
~*sigh* Okay, she's calmed down a bit.~ [C0BLANK]
DO ~SetGlobal("C0AuraAerieKorganConflict","GLOBAL",2)~
== BC0AURA2 ~Really, though. I don't even know what to say to you, Korgan. Couldn't you have been just a little nicer?~
== BKORGAN ~Don't ye put th' blame on me fer that pitiful display now, girl! It be her own blighted fault fer lackin' the backbone to stand up for herself. And havin' the gall to put demands on <CHARNAME>? Pah!~
== BC0AURA2 ~This only happened because you can't stop hassling her! Is it too much to ask for you to just leave her alone?~
END
++ ~I agree with Aura. You don't have to like Aerie, Korgan, just drop the harassment.~ EXTERN BC0AURA2 C0AuraAerieKorganConflict2
++ ~Korgan's got a point. We've no room for the weak and faint-hearted in this group.~ EXTERN BKORGAN C0AuraAerieKorganConflict3
++ ~I'm staying out of this.~ EXTERN BC0AURA2 C0AuraAerieKorganConflict4

CHAIN BC0AURA2 C0AuraAerieKorganConflict2
~There you go. <CHARNAME>'s on my side here. Aren't you going to listen to <PRO_HIMHER>, at least?~
== BKORGAN ~Bah! That lily-livered wench'll be smothered to death with the way y'all be coddlin' her.~
EXTERN BC0AURA2 C0AuraAerieKorganConflict5

CHAIN BKORGAN C0AuraAerieKorganConflict3
~Har! Well spoken, <CHARNAME>. She'd be best goin' back an' playin' ball with 'em circus brats, an' we'll be better off fer it.~
EXTERN BC0AURA2 C0AuraAerieKorganConflict5

CHAIN BC0AURA2 C0AuraAerieKorganConflict4
~Okay, fine, if you want to be that way. But the next time something like this happens, I don't think I'll be able to stop Aerie from walking out for good.~
== BKORGAN ~An' good riddance if she does.~
EXTERN BC0AURA2 C0AuraAerieKorganConflict5

CHAIN BC0AURA2 C0AuraAerieKorganConflict5
~*glares*~
== BKORGAN ~Hmph! Ye've a mean stare when ye're serious. Ah, so be it, lass. Ye wish to keep yer skinny playmate, ol' Korgan'll nae say another word on it. But ye'd best tell 'er to toughen up 'em bones or she'll not be on this journey fer long, mark me words.~
== BC0AURA2 ~Okay, fine. I hope we won't have to argue about this again.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",3)~ THEN BAERIE C0AuraAerie4
~Aura, do you have a moment? I could use some help!~ [C0BLANK]
DO ~RealSetGlobalTimer("C0AuraAerieRestTalkTimer","GLOBAL",1800)
IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~Hold on, just let me... aha! Okay, what do you need? I'll help however I can.~
== BAERIE ~I've been trying to figure out some of these spells... I've been practicing and studying, but it feels like I've hit a dead end. I thought maybe you could help.~
== BC0AURA2 ~Sure, I'll do what I can, but... I'm not a true mage, you know. Wouldn't you understand more than I do?~
== BAERIE ~I just thought... sorry, I'm not sure what I thought. I just felt like it was natural to ask you. You're good at learning, and you're easy to talk to.~
== BC0AURA2 ~Well, now you're making me blush... hehe.~
== BAERIE ~Sometimes it feels like I've got Quayle close by with me... um, not to say that you're old, or... I just meant... well, you're both gnomes... and you're as patient with me as he's always been.~
== BAERIE IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~You knew him for a while, didn't you? I don't think Quayle ever brought it up, but I've heard a little bit since I joined.You must have at least a few stories to tell.~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Well, I do, but... Quayle's a lot different now from what I remember. He was quite the funny fellow, you know.~
== BAERIE IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Was he? I have a hard time imagining that... actually, I can see it a little. He does still mention his brilliant brain once in a while. *giggle*~
== BAERIE ~Thank you for spending time with me, Aura. Having someone to talk to... it makes the difficult things a bit more passable.~
== BC0AURA2 ~I like talking with you too, Aerie... aaah! We completely forgot the main topic. You needed help studying some spells, didn't you?~
== BAERIE ~Oh, that's right. It's these ones here... yes, that one in particular...~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",4)~ THEN BC0AURA2 C0AuraAerie5
~*Hmm-hm-hmm-hm-hm-hmmm*...~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BAERIE ~You're humming again...~
== BC0AURA2 ~Oh! I'm sorry, was I bothering you?~
== BAERIE ~No, I wasn't bothered at all! Actually, it was quite soothing. I just don't think I've heard anything like it before... was it a Lantanese tune, perhaps?~
== BC0AURA2 ~That? No, it wasn't... actually, I didn't even realize I was doing it until you spoke up... usually, the words just come up in my head.~
== BAERIE ~That tune... it has words, too?~
== BC0AURA2 ~Oh, yes! I thought them up. Though, I don't think it's all that lyrical. I'm good with machines, but no so much with poetry.~
== BAERIE ~You mean to say that you thought it up? I didn't take you for a musician too... not that I'd imagine that's beyond you either...~
== BC0AURA2 ~Hehe, no, I definitely wouldn't call myself a musician. It's just a way to help me focus and memorize things I've learned.~
== BAERIE ~By turning the knowledge into a song?~
== BC0AURA2 ~Exactly. You wouldn't think it, but I used to struggle with paying attention to words on a page. Then one of my teachers told me to bring the words to life. Songs and rhythms can help with that. When you associate something with an emotion, like a song that make you happy, or makes you laugh... you won't have any issues remembering it.~
== BAERIE ~That's a funny way to think about things. Well, to learn about them, more precisely. Now that I think of it, maybe I've got my own way too...~
== BC0AURA2 ~Ooh, sounds like a story, I can tell. Why don't you tell me about it?~
== BAERIE ~Maybe next time. <CHARNAME>'s going to be annoyed if we keep standing around chatting for any longer.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",5)~ THEN BAERIE C0AuraAerie5
~Still want to hear about my silly little story, Aura?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~Ooh, absolutely. I'm sure it's not that silly.~
== BAERIE ~Maybe you won't think so... it's really not that exciting, though. It was when I was first practicing as an acolyte of Baervan Wildwanderer... I know, to a gnome, that might sound ridiculous. Me, studying the ways of the the gnomish gods.~ 
== BC0AURA2 ~No, not at all. Besides, I'm also not exactly... never mind. Go on.~
== BAERIE ~I was learning to call upon Baervan for power, I struggled with it at first. I just couldn't bring myself to let go of the past, of what I lost... I know it's wrong, but I felt like I was disrespecting the doctrines taught to me by my parents, of Aerdrie Faenya. But, then...~
== BC0AURA2 ~...~
== BAERIE ~One day, while I was taking a walk outside the city, I found a young bird under a tree. One of its wings was broken, and I couldn't just leave it alone. And then... all of a sudden, without knowing how, it just... made sense. I stopped thinking about myself, because all I wanted to do was heal the poor thing... and I did.~
== BAERIE ~I thought Uncle Quayle would laugh at me when I told him the story, but he was so incredibly happy... he told me that the next time I wanted to call upon Baervan for aid, I just needed to remember how I felt at that moment... and I would get an answer. And that's never failed.~
== BAERIE ~It's nothing as creative as music, but I never realized how I came to master my magic so easily until you got me thinking. Maybe there's ways that I can keep improving myself if I learn from others' example.~
== BC0AURA2 ~Maybe you should try making up a tune of your own? Especially with how pretty your voice is... erm, I'd definitely like to hear one.~
== BAERIE ~Oh, I don't think I've got that sort of talent. If I do, though... I'll definitely have to show you... heehee.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",6)~ THEN BAERIE C0AuraAerie6
~If you don't mind, Aura... could I ask you a question? It's a bit personal. Maybe rather silly, even.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~From you, Aerie? Sure. I promise I won't laugh, either, if you don't want me to.~
== BAERIE ~You just might, but I don't really mind. I was just wondering... what exactly do you dream of when you sleep? During those times we read together, and you start to fall asleep on my shoulder, and I start hearing some things you say while dreaming... it's made me curious.~
== BC0AURA2 ~What I dream about? Well... it's never anything important. Not to what's going on right now, anyway. Usually it's about some idea I have, or about the past... happy things, most of the time.~
== BAERIE ~Oh. That sounds nice... you always seem to be at peace.~
== BC0AURA2 ~It wasn't always that way. I've had some dark times too... but I've been able to put those days behind me.~
== BAERIE ~That's... a good thing. I'm happy for you.~
== BC0AURA2 ~Do you have peaceful dreams too, Aerie? Or, are they...~
== BAERIE ~Sometimes... usually, I dream that I'm flying again. But I've started to become afraid of those thoughts. I'm worried they'll make me desperate for what I've lost all over again.~
== BC0AURA2 ~...~
== BAERIE ~I'm sorry. I didn't mean to make things uncomfortable.~
== BC0AURA2 ~Hey, Aerie...~
== BAERIE ~Yes?~
== BC0AURA2 ~The next time we rest... would you show me your scars? And... if there's anything you want to tell me about. I can listen. Just me.~
== BAERIE ~I...~
== BAERIE ~I'd like that.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",7)~ THEN BAERIE C0AuraAerie7
~Aura? Is something the matter?~ [C0BLANK]
DO ~SetGlobalTimer("C0AuraAerieFriendshipRestTimer","GLOBAL",THREE_DAYS)
IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BC0AURA2 ~Hmm? Oh, no! Not at all. Why would you ever think so? Haha...~
== BAERIE ~It's just that... you haven't really seemed yourself lately. Not around me, at least. Usually you're always happy to spend time with me and talk about what you've been doing.~
== BC0AURA2 ~Well...~
== BAERIE ~You're not avoiding me, are you? If I've done something to upset you, I'm sorry.~
== BC0AURA2 ~N–no! Absolutely not, it's my fault for not saying anything. Actually, the truth is I've been working on something... for you.~
== BAERIE ~F–for me?~
== BC0AURA2 ~I was trying to keep it a surprise... and it's been taking up all my attention, so I haven't really had anything else to talk about.~
== BAERIE ~Oh. I'm really touched that you've been making something for me this entire time... well, if it's a surprise, I probably shouldn't ask what it is until it's ready, right?~
== BC0AURA2 ~I really shouldn't give it away right now. I know you'll really love it when it's done, though! I just hope it'll work. I don't want to have disappointed you after making you wait.~
== BAERIE ~You're really making me curious now... I just hope you won't tire yourself out over it. You're looking a little sleepy right now.~
== BC0AURA2 ~*yaaawn* Hehe, I don't know what you're talking about...~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",9)~ THEN BAERIE C0AuraAerie8
~D-does anything still hurt?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)
SetGabber(Player1)~
== BC0AURA2 ~N... no—*oww*!~
== BAERIE ~*sigh*~
END
  ++ ~What happened?~ EXTERN BC0AURA2 C0AuraAerie8-1
  ++ ~(Say nothing)~ EXTERN BAERIE C0AuraAerie8-2

CHAIN BC0AURA2 C0AuraAerie8-1
~I... umm...~
= ~I tried to make a surprise present for Aerie. It... didn't work.~
EXTERN BAERIE C0AuraAerie8-2

CHAIN BAERIE C0AuraAerie8-2
~I don't even know what to say... when you told me what it is you made, those metal wings... I think you called them a 'prototype'? I thought I was dreaming at first. Then I saw what happened and my heart nearly stopped.~
== BC0AURA2 ~I'm... I'm sorry. I overestimated how stable the structure would be, and then... I thought I'd surprise you when it was finally working. Instead all I had to show for my work was some broken bones and a pile of scrap metal.~
== BAERIE ~You nearly had me scared to death. I'm touched that you wanted to do something like this for me, but do you know how awful I would've felt if you hurt yourself even more badly, or worse?~
== BC0AURA2 ~*sigh* I didn't have it on my mind at all. My thoughts were entirely on how I could do something to make you happy...~
== BAERIE ~Oh...~
== BC0AURA2 ~Oof! Aerie, I'm still recovering, it hurts when you're hugging so tightly...~
== BAERIE ~S-sorry. But this is my fault... this is because I've been making you listen to my feelings. If I didn't make you think I was still suffering because of my wings, then you...~
== BC0AURA2 ~No. No! I didn't do this out of pity. I just... wanted to do something for you as a friend. That's all.~
== BAERIE ~I know. But, Aura... even though you didn't manage to build me a new pair of wings today... knowing that you'd try already makes me happy.~
== BC0AURA2 ~Really? Then I guess this awful fall I took was worth it after all... hehe.~
== BAERIE ~Don't laugh. You're still owed a scolding for half scaring me to death, you know that?~
== BC0AURA2 ~Alright... but, um, just save it for when I'm not aching all over anymore. I'll take all the scolding I deserve then.~
== BAERIE ~Oh, you silly creature! I wasn't being serious. Just do me a favor and have some rest. I'll check up on you again in the morning.~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraAerieFriendship","GLOBAL",10)~ THEN BC0AURA2 C0AuraAerie9
~Aerie?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraAerieFriendship","GLOBAL",1)~
== BAERIE ~I'm here. How's your body feeling, Aura?~
== BC0AURA2 ~All better now, thanks to all the care you've given me. Actually, I wanted to give you a gift. A proper one, this time.~
== BAERIE ~That's... a bracelet? It's beautiful.~
== BC0AURA2 ~I made it out of the metal from the wings. I'm... not too good at delicate metalwork, so it's a bit plain. But I thought you might still like it.~
== BAERIE ~I—I do. It's a lovely gift...~
== BC0AURA2 ~Hehe...~
== BC0AURA2 ~You know, Aerie... about my little failed project... even though I haven't made such a huge miscalculation in a long time, it reminded me that I still haven't truly mastered everything there is to know yet. I still have to go back to the basics.~
== BAERIE ~I think you're being too hard on yourself. The wings might not have worked... but you've done so much that no one else could. Even now, I still can't see you making a mistake.~
== BC0AURA2 ~Really? I'm happy you think so, Aerie, but... here, I want you to look at this.~
== BAERIE ~T-there's a burn mark on your underarm? Did that happen recently, I can—~
== BC0AURA2 ~No, don't worry. It's been there forever. I'd like to say it was from something ambitious but... it's something a lot sillier. I got burned while making candy when I was younger.~
== BAERIE ~Th-that's it?~
== BC0AURA2 ~It sounds rather childish, doesn't it? There's really nothing dramatic about this mark. Back in Anchoril, where I grew up, there was a confectionary shop, one that I'd call the best in Faerûn. I loved their sweets so much that I decided to spend a month there as an apprentice, learning the trade myself.~
== BC0AURA2 ~Everything seemed so simple, especially compared to everything else I'd already learned. But the masters still insisted that I did things slowly and patiently. I was a lot more impulsive then, and got so eager to improve myself that I started getting careless, thinking it was all so easy... then I accidentally spilled boiling hot sugar onto my skin.~
== BAERIE ~Oh, no... that must have hurt.~
== BC0AURA2 ~It hurt so much I couldn't stop crying. Even more since I knew it wouldn't have happened if I'd just listened to what I was told. I've kept the burn scar to remind me to never take things for granted... even the easy things. So when I started making that bracelet... I took every step as seriously as I could. Even though it was a simple thing.~
== BAERIE ~I'll be sure to treasure it. And, one more thing...~
== BC0AURA2 ~Yes?~
== BAERIE ~I'm starting to realize... as I am now, I've gotten a chance to find things I might never have before. Thank you for helping me realize that.~
== BC0AURA2 ~Like a friend who cares for your happiness no matter what?~
== BAERIE ~Exactly.~
DO ~GiveItemCreate("c0aaeri","AERIE",0,0,0)~ EXIT

// Anomen

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",0)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("C0AuraAnomen1","GLOBAL",0)~ THEN BANOMEN C0AuraAnomen1
~If you are to follow at our heels, gnome, I expect you to provide some worthwhile skills. I have little patience for the typical antics of your ilk.~ [C0BLANK]
DO ~SetGlobal("C0AuraAnomen1","GLOBAL",1)~
== BC0AURA2 ~Well, how rude! I haven't done anything to offend you yet, have I?~
== BANOMEN ~I have seen plenty of your kind among the peasantry, and have yet to see a single one worth the land you occupy. I'll not have you taking advantage of our goodwill while giving nothing in return.~ 
== BANOMEN ~If you think yourself an exception, then prove yourself.~
== BC0AURA2 ~Prove my– <CHARNAME>'s the leader here, so I'll prove myself to <PRO_HIMHER>, thank you very much! Why don't YOU prove yourself, huh?~
== BANOMEN ~That is hardly necessary. I am an esteemed member of an Order of the highest prestige, and a scion of noble birth, unlike yourself. What have I to prove?~
== BC0AURA2 ~Blech. You're a great big jerk, you know that?~
EXIT

CHAIN
IF ~InParty("Anomen")
Range("Anomen",15)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("C0AuraAnomen1","GLOBAL",1)~ THEN BC0AURA2 C0AuraAnomen2
~Anomen? Can I say something to you?~ [C0BLANK]
DO ~SetGlobal("C0AuraAnomen1","GLOBAL",2)~
== BANOMEN ~Of course. What is it?~
== BC0AURA2 ~Just wanted to say, um... how should I say it? Congratulations on becoming a knight. I don't know what it means exactly, but it's clearly important to you. Everyone's very happy for you.~
== BANOMEN ~That... is very kind. I thank you, Aura. It is, indeed, a moment I have yearned for all my life.~
== BC0AURA2 ~I know it's not the same thing, but graduation was an unforgettable moment for me, too. I hope it's everything you wanted it to be.~
== BANOMEN ~Your blessings are appreciated. And... forgive me for my earlier words. I know, what I said was terrible. They were uncouth, and I should have been better.~
== BC0AURA2 ~Oh, that? I've practically forgotten all about it. But you reminded me. I'm sorry too. I shouldn't have called you 'a great big jerk'. Or stuck my tongue out at you.~
== BANOMEN ~Hah. Well, mayhap I deserved to be called 'a great big jerk'. I shall hang that title in the recesses of my mind, to remind myself what not to be.~
== BC0AURA2 ~...Ha ha.~
== BANOMEN ~I jest, of course. But in earnestness, it is a good lesson, no?~
EXIT

CHAIN
IF ~InParty("Anomen")
Range("Anomen",15)
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("AnomenIsKnight","GLOBAL",1)
Global("AnomenIsNotKnight","GLOBAL",0)
Global("C0AuraAnomen2","GLOBAL",0)~ THEN BANOMEN C0AuraAnomen3
~If I may, Aura... I wish to apologize.~ [C0BLANK]
DO ~SetGlobal("C0AuraAnomen2","GLOBAL",1)~
== BC0AURA2 ~Anomen, you already have. It's all water under the bridge now, okay?~
== BANOMEN ~I feel I have not been sincere enough. And if it is not an apology you desire, then allow me to express my admiration instead.~
== BC0AURA2 ~Me? I'm really not that impressive. You're the one who's achieved your life's goal, Anomen. I think that's what's admirable.~
== BANOMEN ~Yes, I... have fulfilled my dream indeed. Yet somehow, I still do not feel fully whole. Perhaps it is because I have realized how little I truly knew. As a student of knowledge, perhaps you may hear me out, and offer any advice if you may...~
== BC0AURA2 ~Sure.~
== BANOMEN ~I am grateful. Then I shall burden with you with my thoughts. 'Tis undeniable that before my knighthood, I clung onto what sense of superiority I could justify to myself. And like a selfish child, I cared little for the motivations of anyone but myself.~
== BANOMEN ~But... whether it is because of the sense of accomplishment I now feel, or because I have set some of my past burdens aside, I have become more aware. And I have seen the dedication of others I once saw as beneath me.~
== BANOMEN ~I have witnessed the long hours in which you have worked your craft, so that our battles may end in decisive victory, I am well aware that it is not what brings you joy, for you are averse to all this bloodshed that I consider natural. Yet you dedicate yourself regardless. There is something from that which I could learn.~
== BC0AURA2 ~I understand you, Anomen. And, well... I may not know anything about being a knight, but would you like to hear what my advice is?~
== BANOMEN ~Certainly.~
== BC0AURA2 ~We're all going to stumble once in a while. The more we push ourselves, no matter what it is we're aiming for, the more likely it'll happen. Sometimes it's what it takes to start paying attention to the ground again. But there's nothing wrong with that. All it takes is to pick yourself up and keep trying.~
== BC0AURA2 ~And if you can't do it yourself, then... there's always someone who can help you. As long as you let them. That's why you have to keep your friends close, you know?~
== BANOMEN ~I see. Yes, that is... quite logical. But... you would consider me a friend already? Despite all my obvious faults?~
== BC0AURA2 ~Learning takes time. I might not look it, but I am quite a bit older than you, you know. I've had to do my own share of growing up already. So cheer up, won't you? I know you'll figure it all out. You're already on the right path.~
EXIT

// Cernd

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("C0AuraCernd2","GLOBAL",0)~ THEN BCERND C0AuraCernd2
~You are unusually alert here, Aura, like a rabbit keeping its ears high to hear the coming of predators. Whatever has gotten into you?~ [C0BLANK]
DO ~SetGlobal("C0AuraCernd2","GLOBAL",1)~
== BC0AURA2 ~I do feel like a rabbit at times here, Cernd. Truth is... I'm afraid a bear could be waiting behind the trees, waiting to leap at me!~
== BCERND ~A reasonable fear, perhaps, but... such an aversion only held against bears goes beyond natural instinct. You do not have have this response towards wolves, leopards, nor spiders?~
== BC0AURA2 ~Sometimes those scare me too, but I'm not afraid of them if they're not chasing me. But my heart starts pounding just from hearing a hint of a bear's growling.~
== BCERND ~This indicates a traumatic trigger of some capacity... I may be able to assist in coping, if you are not opposed to facing aspects of your fear.~
== BC0AURA2 ~A-are you going to make me stare down a bear? No, no, a thousand times no!~
== BCERND ~Nothing like that. There will be no actual bears involved, that I can assure you.~
== BC0AURA2 ~No bears? You promise? Well... okay then. I'd like to be able to take a stroll through a forest without keeping my ears perked for grunts...~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraCernd2","GLOBAL",1)~ THEN BCERND C0AuraCernd3
~Remember, do not open your eyes. Just keep calm and breathe. And listen.~ [C0BLANK]
DO ~SetGlobal("C0AuraCernd2","GLOBAL",2)~
== BC0AURA2 ~Keep calm and breathe... keep calm and breathe... ugh! Nope, can't do it.~
== BCERND ~Your focus is disrupted too easily. Does the mere sound of a bear's breathing cause you such distress?~
== BC0AURA2 ~Sorry, Cernd. As soon as I hear the growling and snorting, all I feel is a chill and the hairs on my body standing up.~
== BCERND ~This trauma has clearly sunk its way into the roots of your psyche. What incident caused this, Aura?~
== BC0AURA2 ~I... I really don't remember all that well, Cernd. It all happened really fast... one moment I heard the roar, and then I saw it behind me and was paralyzed from shock. I think I fainted not long afterwards.~
== BCERND ~I see. And have you had such an extreme reaction to seeing bears since then?~
== BC0AURA2 ~N–not anymore. I'm usually coherent enough to run in the opposite direction nowadays.~
== BCERND ~Well... an improvement in some ways, I suppose, though you will make no progress in confronting your fears like this. I shall have to approach this in another manner.~
EXIT

// Dorn

CHAIN
IF ~InParty("Dorn")
Range("Dorn",15)
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraDorn1","GLOBAL",0)~ THEN BC0AURA2 C0AuraDorn1
~Dorn, have you ever considered, um... being a little bit, I don't know... nicer?~ [C0BLANK]
DO ~SetGlobal("C0AuraDorn1","GLOBAL",1)~
== BDORN ~Should I waste time on extending our foes the courtesy of pleasantries before spitting them upon my blade?~
== BC0AURA2 ~No, I meant towards... oh, forget it. I'm not sure you understand the difference.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraDorn2","GLOBAL",0)~ THEN BDORN C0AuraDorn3
~You are pitifully weak, little girl, with barely a grasp on your own fate. But I am certain you already know that. I am more disgusted with <CHARNAME>'s indulgent virtues for allowing you to remain.~ [C0BLANK]
DO ~SetGlobal("C0AuraDorn2","GLOBAL",1)~
== BC0AURA2 ~Don't insult <CHARNAME>, Dorn. I don't mind whatever you have to say about me, but it's not <PRO_HISHER> fault.~
== BDORN ~Oh? So you do have the capacity to stand up for something after all. But not yourself.~
== BC0AURA2 ~It's called caring about others. You could try it out sometime.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("OHD_urgothoz_patron","GLOBAL",0)
Global("OHD_azothet_patron","GLOBAL",0)
Global("C0AuraDorn3","GLOBAL",0)~ THEN BDORN C0AuraDorn4
~Why do you continue to stare at me, you meek little runt?~ [C0BLANK]
DO ~SetGlobal("C0AuraDorn3","GLOBAL",1)~
== BC0AURA2 ~I– I didn't mean to. I just don't know how to put this. You... well, you're free.~
== BDORN ~And?~
== BC0AURA2 ~And, well... now that you're free of the obligations of evil, shouldn't you... change?~
== BDORN ~I *have* changed, foolish girl.~
== BC0AURA2 ~I didn't mean your loyalties. I meant... changing for the better.~
== BDORN ~What reason do I have to make such a change? By slaying my former 'patrons', I have reclaimed my own self. Now, I may fufill *my* desires, and no other's.~
== BC0AURA2 ~Then you haven't changed after all... it was never the demons that controlled you. It was always you.~
== BDORN ~You were naive to have ever thought otherwise.~
EXIT

// Edwin

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraEdwinBG1Banter","GLOBAL",0)
Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN BEDWIN C0AuraEdwinBG1
~I expect that your studies of the arcana have improved tremendously since the last time we met, girl? (After all, with my tutelage, that is only the least I expect.)~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwinBG1Banter","GLOBAL",1)~
== BC0AURA2 ~Ooh, yes. I've been mapping out the various connections between the schools of magic, cataloguing the various forms of rune magic I've studies, even wrote an analysis on the differences in the Weave from before and after the Time of Troubles.~
== BEDWIN ~Hmm, yes, very good. I expect that, should you one day produce an article on magery worth note, you shall provide your most esteemed tutor with the appropriate credit. (And I would not be adverse to receiving a portion of said publication's royalties, either...)~
== BC0AURA2 IF ~!Class(Myself,MAGE_ALL) !Class(Myself,BARD_ALL)~ THEN ~I think I might even be able to start casting spells myself soon! And then I'll surpass you, just you wait!~
== BC0AURA2 IF ~OR(2) Class(Myself,MAGE_ALL) Class(Myself,BARD_ALL)~ THEN ~I think I might even become a better mage than you one day!~
== BEDWIN ~Don't be conceited, girl. If your head grew too large, it would topple your tiny body.~
== BC0AURA2 ~Heehee... just kidding.~
EXIT

CHAIN
IF ~InParty("Edwin")
Range("Edwin",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraEdwin1","GLOBAL",0)~ THEN BC0AURA2 C0AuraEdwin1
~Edwin, do you have a moment?~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwin1","GLOBAL",1)~
== BEDWIN ~I have precious few to spare. If you seek my attention, it had best be worth my time.~
== BC0AURA2 ~Well, I was hoping you could help me with some of the details of this spell I've been researching... I don't think it's one I've ever seen before, and it could be very rare... possibly dangerous.~
== BEDWIN ~(Is it, now...?) Hmm... I can do this, girl, but my valuable knowledge comes with a price. I expect a share of the knowledge this tome holds, of course... as well as some of those foreign pastries I know you are hoarding.~
== BC0AURA2 ~Sure. It's not like I was planning on keeping the knowledge to myself to begin with. About the cakes, though... er, you might be a little too late. I'll make you something nice as a thank-you gift later though, if you want.~
== BEDWIN ~Deal. Now, hand that tome over. Yes, this appears simple enough... nothing beyond a mage of my skill. But... wait—~
== BEDWIN ~This is... this is no spell of great power! It... well, ancient perhaps, and certainly rare, but, but... 'tis a mere enchantment for self-laundering clothing!~
== BC0AURA2 ~Oh! I was right. I thought it seemed too plain at first, but I kept a note in the side just in case. Thanks, Edwin! I'll have it scribed for you by the end of the day.~
== BEDWIN ~Bah! I have no use for such a paltry spell. (Actually, on second thought, it would be very convenient...) However, as I expect you to hold to your end of the bargain, girl, I shall... take this as a temporary compensation. Yes, it'll do.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraEdwin1","GLOBAL",1)~ THEN BEDWIN C0AuraEdwin1
~Your thoughts leave your mouth too easily, girl. An aspiring mage must never allow their thoughts to be so easily given, lest they be used against them.~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwin1","GLOBAL",2)~
== BC0AURA2 ~Hmm? But the exchange of knowledge is exactly how we advance our understanding, Edwin. How can we hope to improve if we keep all our ideas bottled up?~
== BEDWIN ~Not all who value knowledge seek to advance any but themselves, girl. Someone of devious intent may see fit to silence you for good, once they have wrought all worth they deem of you.~
== BC0AURA2 ~That's rather cruel, Edwin, but I can't deny there's terrible people in the world who only think that way. Not you, though, right?~
== BEDWIN ~Me? Well... hmm... (Blast it. What am I doing, helping this naive child? Am I getting sentimental...?)~
== BC0AURA2 ~Edwin?~
== BEDWIN ~Eh... no, certainly not. I can most certainly be trusted, of that I promise. (So long as you are useful...)~
EXIT

CHAIN
IF ~InParty("Edwin")
Range("Edwin",15)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Gender("Edwin",FEMALE)
Global("C0AuraEdwina1","GLOBAL",0)~ THEN BC0AURA2 C0AuraEdwina1
~Um, how are you holding up, Edwin...a?~ [C0BLANK]
DO ~SetGlobal("C0AuraEdwina1","GLOBAL",1)~
== BEDWIN ~What? Why did you place emphasis on my name, girl?! Are you trying to rub in the humiliation?~
== BC0AURA2 ~No! I just wanted to ask you if you... er, are you feeling alright?~
== BEDWIN ~Alright?! I am most certainly not! I have been exploited, ensorcelled, and wholly... humiliatingly emasculated! You would not understand the agony in several lifetimes!~
== BC0AURA2 ~I'm sure it's not... well, maybe it is that bad. If there's anything I could do to help...~
== BEDWIN ~Help?! This blighted Netherese magic has eluded my every attempt to even discern its nature, much less undo its effects. Your meager knowledge of the arcane would be as though trying to dispel the night with a candle!~
== BC0AURA2 ~I know, I know. It's not exactly an easy curse to break. That's why I've been looking into anything related to Netherese enchantments to see if there's anything relevant. Just in case something like this has happened to someone else before.~
== BEDWIN ~...H–have you really, now?~
== BC0AURA2 ~So far, no luck, but I'll keep searching. And if nothing else, if there's anything I can do to help you feel more comfortable until this gets fixed, let me know. I'm not bad with a needle and thread either, if your robes need refitting!~
== BEDWIN ~That's... erm, I suppose I should say... *ahem* You have my deepest appreciation. (Blast! I am growing soft... is this cursed affliction affecting my psyche? I must regain my original form this instant!)~
== BC0AURA2 ~Chin up, Edwin! You'll make it through this. At least, I hope you will.~
EXIT

INTERJECT BEDWIN 41 C0AuraMinscEdwinConflict
== BC0AURA2 IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Edwin! You mustn't say such terrible things. Shame on you!~
== BEDWIN ~I speak only what I percieve as the unclouded, veritable truth, no less.~
== BC0AURA2 ~Oh, just stop it!~
== BMINSC ~Aura, this wizard treads the dangerous line between insults and... unforgivable, even worse insults! Dynaheir's honor demands I teach him the meaning of respect with the weight of my boot!~
== BC0AURA2 ~Minsc, calm down, Edwin didn't mean what he said... probably... you don't have to—~
== BEDWIN ~Oh, I beg to differ.~
== BC0AURA2 ~Please just stop talking...~
== BMINSC ~Rgh... Minsc has taken some time to calm down, and breathe, and think... the red wizard's evil tongue deserves the hot, wrathful pliers of justice, but there should be a time and place... that is what Dynaheir would say... Minsc thinks...~
== BC0AURA2 ~That's right, Minsc... and Edwin... I guess it's too much to ask for you to say sorry?~
== BEDWIN ~Bah! Not a chance. But this debate has lost its appeal with your unsolicited interference, girl. I'll spare the witless one from further embarrassment... this time.~
EXIT

// Haer'Dalis

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHaerDalis1","GLOBAL",0)~ THEN BHAERDA C0AuraHaerDalis1
~A recollection just crossed my mind... I saw you once, my little rosefinch, not too far from the Bridge District, yes?~ [C0BLANK]
DO ~SetGlobal("C0AuraHaerDalis1","GLOBAL",1)~
== BC0AURA2 ~Hmm, actually... maybe. Might you remember what I was doing at the time?~
== BHAERDA ~I certainly do... as I remember it, you were among the market stalls, sitting opposite a young dame, writing a correspondance for her beloved.~
== BC0AURA2 ~Oh, yes. I rent a stall there to sell a few spare parts from my workshop... but most of the time, I find more work in writing letters for people instead.~
== BHAERDA ~Aye, a valuable service indeed in a city of unlettered berks, and one that attracts those with messages both chaste and... otherwise.~
== BHAERDA ~Do you recall this one, Aura? "My dearest Elvira, how I long for the fiery touch of your—"~
== BC0AURA2 ~Ugh, stop, stop! Don't remind me of that one. I think I was beet red the whole time while writing it...~
== BC0AURA2 ~Wait, how do you know about that?~
== BHAERDA ~*laugh* A most risque piece of work, that. One does not forget it easily. In fact, I still hold onto it to this day... as you can see. Your penmanship is most exquisite.~
== BC0AURA2 ~What? Then... you were the one who asked me to write that letter? But... but... you looked and sounded completely different!~
== BHAERDA ~An actor must have complete agency over his appearance and voice, Aura. That goes for beyond the acting stage as well.~
== BC0AURA2 ~Ooh, I can't believe you. I would've asked for your autograph if I had known who you were too!~
== BHAERDA ~I would be most pleased to write one now, as thanks for your entertaining gift to me. Would that satisfy you?~
== BC0AURA2 ~Y–yes! Just please don't ask me to write you another one of those letters in the future... *blush*~
EXIT

CHAIN
IF ~InParty("HaerDalis")
Range("HaerDalis",15)
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHaerDalis2","GLOBAL",0)~ THEN BC0AURA2 C0AuraHaerDalis2
~I, um... did I mention I watched a few of the Sigil Troupe's plays, Haer'Dalis? I'm a huge fan.~ [C0BLANK]
DO ~SetGlobal("C0AuraHaerDalis2","GLOBAL",1)~
== BHAERDA ~Aye, so I've heard. Have you a favorite among them, little rosefinch?~
== BC0AURA2 ~Hmm, that's a hard question... I loved "The Swan's Song"... "The Magic Puzzle" had a wonderful story too... but "In Death's Halls" brought me to tears... ...argh, I can't answer that! They're all great.~
== BHAERDA ~I have a strange fondness for the last one... it was based off a tale within reality, or so I've heard.~
== BC0AURA2 ~Did Ms. Raelis write all of your plays?~
== BHAERDA ~The troupe does study works by other artists, but our own stories were penned by Raelis, none other. Ah, save for one... "The Twin Bells of Mourning". That script was written by yours truly.~
== BC0AURA2 ~You wrote that one? It was beautiful... but I could barely watch the ending. It was so sad... how could you make Leon and Rosa suffer like that, and then just... have them die?~
== BHAERDA ~I specialize in the theme of tragedy, Aura. Although... perhaps this may seem strange to you, but I believe the ending was a satisfactory one for the lovers, ultimately.~
== BC0AURA2 ~How? Their families abandoned them, their companions were slain, Leon's brother betrayed him... and in the end, they were completely alone, left with nothing...~
== BHAERDA ~Indeed. But such is the price paid for avoiding the inevitability of oblivion. And in their final moments, finally free of all their fear, pain and sorrow that chained them to their existences, a moment in which they finally saw fit to surrender... "Leon and Rosa, embracing each other closely, finally... if only for a moment... knew true, untainted joy."~
== BHAERDA ~They could have lived on, continuing their fight to claim some chance of lasting happiness... and perhaps they may have succeeded. But along the way, they would have known nothing but more pain and despair, and ultimately, oblivion will claim them nonetheless. I believed that finality was the greatest mercy I could grant them.~
== BC0AURA2 ~It... it makes sense, I suppose. But thinking about it still hurts...~
== BHAERDA ~And so it should. But fear not, my little rosefinch. Pain is as fleeting as joy, and so it will fade in time, as well.~
EXIT

CHAIN
IF ~InParty("HaerDalis")
Range("HaerDalis",15)
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHaerDalis3","GLOBAL",0)~ THEN BC0AURA2 C0AuraHaerDalis3
~Hm-hm-hm-hmmm...~ [C0BLANK]
DO ~SetGlobal("C0AuraHaerDalis3","GLOBAL",1)~
== BC0AURA2 ~"Oh, how I long for snacks and treats
and plates stacked with cakes and sweets,
Ca-ra-mels and cho-co-lates and jams and creams
That fill my mind and heart with sweetest dreams..."~
== BHAERDA ~Why, our little rosefinch's sweet tooth appears to have driven her to song! Mayhaps she is peckish, my raven. Shall we stop for tea?~
== BC0AURA2 ~H–h–HAER'DALIS! You're not supposed to be eavesdropping! Ooh, this is just embarrassing!~
== BHAERDA ~Oh, I held no intention of rudely intruding upon your charming little tune, but 'twas my unexpected blessing that I had. Who would have thought you could sing with such confidence when motivated by the thought of sweet delicacies?~
== BC0AURA2 ~N–no! No, no, no, that's not... well, maybe...~
== BHAERDA ~Perhaps, were I to treat you to a plate of desserts and confectionaries, I might draw forth more melodies? Apple tarts, candied figs, blueberry pie? Or would you prefer butterscotch bonbons, éclairs, petits gâteaux?~
== BC0AURA2 ~Mm—mmmmmgh... so hungry... but, so embarassed...~
== BHAERDA ~Ah, the rosefinch's mouth is watering with anticipation. I shall cease with the teasing for now, I think, and save it for our future soiree. Ha ha ha...~
EXIT

// Hexxat

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHexxat1","GLOBAL",0)~ THEN BHEXXAT C0AuraHexxat1
~Aura.~ [C0BLANK]
DO ~SetGlobal("C0AuraHexxat1","GLOBAL",1)~
== BC0AURA2 ~Y–yes?~
== BHEXXAT ~You don't have to flinch every time I speak. I'm not going to hurt you.~
== BC0AURA2 ~I, I know, I'm just...~
== BHEXXAT ~Afraid of me?~
== BC0AURA2 ~N–no. I... um, I'm sorry.~
== BHEXXAT ~You don't have to apologize.~
== BC0AURA2 ~S-sorry...~
== BHEXXAT ~Stop.~
== BC0AURA2 ~Oh, um... right.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraHexxat1","GLOBAL",1)~ THEN BHEXXAT C0AuraHexxat2
~May I ask you something, Aura?~ [C0BLANK]
DO ~SetGlobal("C0AuraHexxat1","GLOBAL",2)~
== BC0AURA2 ~N–n... alright. What is it?~
== BHEXXAT ~Do you believe that if you ignore me for long enough, I will go away?~
== BC0AURA2 ~Wh– no! No, of course not!~
== BHEXXAT ~You can think of me what you will, Aura.~
== BHEXXAT ~But this word of advice comes for free... you are not a good liar.~
== BC0AURA2 ~I—I know that. I'm not trying.~
== BHEXXAT ~You've just proven my point.~
EXIT

// Imoen

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoen1","GLOBAL",0)
Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN BC0AURA2 C0AuraImoenBG1
~Heya, Imoen.~ [C0BLANK]
DO ~SetGlobal("C0AuraImoen1","GLOBAL",1)~
== BIMOEN2 ~It's been a while, hasn't it?~
== BC0AURA2 ~Heehee... yeah...~
== BC0AURA2 ~How have you... no, I shouldn't ask. I know it was terrible. I'm just so glad you're back. Even if...~
== BIMOEN2 ~...~
== BC0AURA2 ~...~
== BC0AURA2 ~I, um... like what you've done with your hair.~
== BIMOEN2 ~Aww, thanks. Looks good on me, doesn't it?~
== BC0AURA2 ~Heehee, yep. It's very... 'you'.~
== BIMOEN2 ~Told you it'd look good.~
== BC0AURA2 ~...I missed you, you know?~
== BIMOEN2 ~I missed you too. Especially doing this. C'mere... *squeeze*~
== BC0AURA2 ~Oof! Ow-ow-ow, can't breathe... let go, let go!~
== BIMOEN2 ~Nope. You're too much fun to tease. And you've gotta make up for all the time you missed.~
== BC0AURA2 ~*sigh* Okay, okay... just don't squeeze too hard, okay? We're not gonna be able to spend much time together if I end up dying by suffocation.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraRomanceActive","GLOBAL",2)
Global("C0AuraImoenPCRom","GLOBAL",0)~ THEN BIMOEN2 C0AuraImoenPCRom
~Sooo... you *like* my little sis, huh?~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenPCRom","GLOBAL",1)~
== BC0AURA2 ~H-huh? 'Little sis'?~
== BIMOEN2 ~You know. <CHARNAME>.~
== BC0AURA2 ~(...isn't she the big sister...?) *ahem*... Well, why are you bringing that up now, anyway?~
== BIMOEN2 ~Oh, no reason. Just wanted to mention how adorable it is watching you two.~
== BC0AURA2 ~Oh. I guess that means you approve.~
== BIMOEN2 ~Sure. As long as it keeps <CHARNAME> happy. If it were someone else I might have a few words, but... well, you're lucky I like you. Heh.~
== BC0AURA2 ~Tsk, there you go teasing me again...~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenBombMaker","GLOBAL",0)~ THEN BIMOEN2 C0AuraImoenBombMaker
~Hey, Aura? Could I ask you a favor?~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenBombMaker","GLOBAL",1)~
== BC0AURA2 ~Yep, shoot.~
== BIMOEN2 ~Thanks... I was just thinking about Irenicus and the Cowled Wizards, and how easily I was captured even with <CHARNAME> at my side, and I couldn't do anything...~
== BC0AURA2 ~Oh... would you like to get it off your mind?~
== BIMOEN2 ~Nah. It wouldn't be right to shove my issues on you outta nowhere. I'm just... I dunno, frustrated. I'm supposed to be a trained mage, y'know? But the mages we've come across have all been so powerful, I feel helpless in comparison.~
== BC0AURA2 ~You don't have to feel like that. You're invaluable to us, Imoen. I'm sure <CHARNAME> will agree.~
== BIMOEN2 ~Yeah, maybe. I wish I could do something to stick it to those stupid wannabe-archmages, though. So I was thinking... is there anything you could make to give me an edge over them?~
== BC0AURA2 ~Something to level the playing field, huh? I'm not sure... actually, there was something I was working on before, but I'd need your help to get it finished. It might be just what you're looking for.~
== BIMOEN2 ~Really? What do you need me to do?~
== BC0AURA2 ~Hmm... how good are you at alchemy?~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("C0ACUT6",FALSE)~ EXIT

CHAIN
IF ~InParty("Imoen2")
Range("Imoen2",15)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraImoenBombMaker","GLOBAL",1)~ THEN BC0AURA2 C0AuraImoenBombMaker2
~See? It's quite simple. In fact, you could probably make it yourself. It's no different from gathering components for a spell. I'd say with the resources we have, you could make three in a day.~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenBombMaker","GLOBAL",2)~
== BIMOEN2 ~So... I mix all that into the canister, chuck it at a mage, and their spells all go poof?~
== BC0AURA2 ~Yep. At least, that's the best case scenario. But even if it's not at max potency, it'll still be hard to gather the magical energy needed with all the residue caused by the grenade.~
== BIMOEN2 ~That. Is. Brilliant. You are a genius. But it feels a little bit like cheating...~
== BC0AURA2 ~It does. I wouldn't use it myself. But you're also a sneaky thief, right? When have you ever cared about playing fair?~
== BIMOEN2 ~That's true.~
== BIMOEN2 ~...~
== BC0AURA2 ~Imoen? What's wrong?~
== BIMOEN2 ~Heh. Hehehehe...~
== BC0AURA2 ~...?~
== BIMOEN2 ~Watch out, would-be-rivals to the great magi Imoen! With this magnificent weapon in hand I shall smite down your feeble magicks! Never will I be defeated again! Mwahahaha!~
== BC0AURA2 ~Wow. Erm, I hope I haven't made a serious mistake giving you the formula... at least you're not feeling so gloomy anymore. Mission accomplished, I guess.~
DO ~ActionOverride("IMOEN2",AddSpecialAbility("C0AUIMB"))~ EXIT

// Jaheira

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJaheiraBG1Talk1","GLOBAL",0)~ THEN BJAHEIR C0AuraJaheiraBG1Talk1
~It is good to see you well, little one. With the trouble you draw to yourself, I was wondering what had become of you since we parted.~ [C0BLANK]
DO ~SetGlobal("C0AuraJaheiraBG1Talk1","GLOBAL",1)~
== BC0AURA2 ~Jaheira! You're teasing me, and so soon after we meet again? Ha ha... still, it's good to know you care. Not that you ever really hid the fact.~
== BJAHEIR ~Of course I do. Do you find fault in my means?~
== BC0AURA2 ~No, of course not! I'm happy, really. Happy to meet you again. But... I wish I could've met Khalid again.~
== BJAHEIR ~Aura...~
== BC0AURA2 ~Khalid was a wonderful friend. It hurts to know he's gone... I'm sorry. It must be even worse for you. I miss him.~
== BJAHEIR ~Stop, please. I know you mean well. But I do not wish to hear it, not at this time.~
== BC0AURA2 ~Ah... of course. I'm sorry.~
== BJAHEIR ~Do not apologize. You are not at fault. Those who are to blame will pay in due time.~
EXIT

CHAIN
IF ~InParty("Jaheira")
Range("Jaheira",15)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJaheiraBG1Talk2","GLOBAL",0)~ THEN BC0AURA2 C0AuraJaheiraBG1Talk2
~Jaheira? Do you have a moment?~ [C0BLANK]
DO ~SetGlobal("C0AuraJaheiraBG1Talk2","GLOBAL",1)~
== BJAHEIR ~Yes, Aura. What is it?~
== BC0AURA2 ~About Khalid...~
== BJAHEIR ~Do not concern yourself over my needs, girl. It is unnecessary.~
== BC0AURA2 ~I know you're mourning him, in your own way. I don't want you to think I'm pitying you. But I'm speaking as a friend... if you need anything, anything at all... just ask.~
== BJAHEIR ~I understand, and I accept. Should I need to take that offer, I will let you know. But not now.~
== BJAHEIR ~Still... thank you.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJaheira1","GLOBAL",0)~ THEN BJAHEIR C0AuraJaheira1
~*sigh* Eyes up, head straight, and pay a little more attention to your surroundings, Aura. If you were daydreaming any harder, you'd only notice our next threat by crashing into it.~ [C0BLANK]
DO ~SetGlobal("C0AuraJaheira1","GLOBAL",1)~
== BC0AURA2 ~Eep! Y—yes, ma'am!~
== BJAHEIR ~And enough of that 'ma'am' nonsense. I am not your mother, nor am I so old.~
== BC0AURA2 ~Oops... stuck my foot in it again, didn't I? Um, I should make a mental note to avoid that.~
== BJAHEIR ~Aura...~
== BC0AURA2 ~Oh, maybe I'll just write it down instead. Where's my notebook... aha, there we go! Let's see... "Watch words before they come out of mouth"... end note?~
== BJAHEIR ~Eyes on the road. *Please*.~
== BC0AURA2 ~S—sorry!~
EXIT

// Jan

CHAIN IF WEIGHT #-1
~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJanVegetables","GLOBAL",1)~ THEN BJAN C0AuraJanVegetables
~Hang on. What's this now? No! No, no no nonono!~ [C0BLANK]
DO ~SetGlobal("C0AuraJanVegetables","GLOBAL",2)~
== BC0AURA2 ~Jan? What is it?~
== BJAN ~What is it? Look at this atrocity before us, Aura! What has happened to my crops since I was gone? My perfect field of turnips, being aggressively invaded by hostile growths! Are you responsible for this?~
== BC0AURA2 ~Yes... but Mrs. Jansen allowed me, I swear! I was craving some of the vegetables from the East, and I had brought some seeds with me, so...~
== BJAN ~But—but what is this? This is no turnip! This elongated, pointy shape is all wrong, and its skin is white as a corpse!~
== BC0AURA2 ~No, that's daikon. I brought and preserved the seeds all the way from Kozakura.~
== BJAN ~*munch* *ptoo!* Radishes! Accursed, crunchy radishes! Where is the sweet, earthy taste? The creamy, soft texture? This is no more a turnip than an orc is an elf!~
== BC0AURA2 ~Well... it's not a turnip, for sure. But they're healthy and refreshing, really!~
== BJAN ~And look at all these... these leafy monsters! Ack! They've completely overtaken the leftmost corner!~
== BC0AURA2 ~Shou white cabbages! They're delicious when boiled. Try some for yourself if you don't believe me.~
== BJAN ~Oh no. Oh, dear. I feel rather faint... somebody, please slap me, or pinch me. I must be in a terrible nightmare.~
== BC0AURA2 ~Jan, come on, you're overreacting. Crop rotation is good for the soil. It makes the turnips healthier too!~
== BJAN ~You... you...~
== BJAN ~I think I need to sit down. Ooh... my poor head.~
== BJAN ~I am simply speechless. I trusted you, Aura. I thought I had found a lost cousin. But it seems we are truly as different as night and day.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJan1","GLOBAL",0)~ THEN BJAN C0AuraJan1
~So, a lass of the Lantanna, eh? Good folk, with clever hands and minds.~ [C0BLANK]
DO ~SetGlobal("C0AuraJan1","GLOBAL",1)~
== BC0AURA2 ~Heehee. We're really just a bunch of shut-ins who spend all day thinking. Have you been to my homeland before, Jan?~
== BJAN ~I haven't had the pleasure, no. I can tell you about my mother's uncle Balroo though. He spent five years studying at the Sambaran academy, and came back with a wealth of knowledge and plenty of goodies to share with the family... well, at least the things he could carry with his remaining arm, that is.~
== BC0AURA2 ~Oh no... what happened to his arm?~
== BJAN ~That's a sad story, my dear. Silly old Balroo was studying the crafting of black powder and believed he had managed to improve upon the design. From what I was told, he built his own arquebus and loaded it with some experimental powder he had alchemised, then tested it on a training dummy he set up.~
== BJAN ~Of course, the truth was that he was just terribly, terribly drunk off homebrewed turnip ale and completely lost his sense of judgment. The first shot took his arm from the recoil. The second—only the gods know how it went off—destroyed the entire west wing of the dormitory and put at least a dozen people in the infirmary. He was dismissed from the academy for reckless endangerment and damages to academy grounds not long after. *sigh* A terrible, terrible affair it was.~
== BC0AURA2 ~That's awful, Jan. I'm so sorry your family's experience with Lantan was... like that. Is there anything I can do?~
== BJAN ~Very kind of you to ask, lass, but you needn't worry your clever head over it. Balroo's stayed positive about the whole experience, and still has plenty of good stories to tell about his studies. Not to mention the prosthetic the Lantanna crafted for him has served him well these years. He still wants to go back to your lovely nation, but mother won't hear a word of it. Said she'd nail his remaining hand to the table if she ever saw him packing his bags.~
== BC0AURA2 ~Oh... haha. It's reassuring that he can at least try to keep his spirits up despite his loss. The Lantanna... we try to learn from failure, but some of us don't always take it well, especially when it costs us.~
== BJAN ~Well, you can't ever make a good turnip omelette without breaking some eggs and picking out the rotten ones first. I'll make my own pilgrimage to the Isle of Wonders one day, and hopefully stay there with all four limbs intact. Perhaps you could be my guide when the time comes, eh?~
== BC0AURA2 ~If I'm available, I'd be happy to, Jan. Just stay away from the black powder when we're there, okay?~
EXIT

CHAIN IF WEIGHT #-1
~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
See("Flying Machine 1")
Global("C0AuraJanAirship","GLOBAL",0)~ THEN BJAN C0AuraJanAirshipTalk
~See that flying machine, Aura? My cousin Eduardo designed and crafted it right here in Athkatla.~ [C0BLANK]
DO ~SetGlobal("C0AuraJanAirship","GLOBAL",1)~
== BC0AURA2 ~I wish people would stop calling it a 'flying machine'. What's wrong with calling it an airship? It looks plenty like a ship, doesn't it?~
== BJAN ~Eduardo first saw one of its like somewhere in the north. Belonged to some lass named Fiddlebender, as I recall. Then after he returned home, he spent endless days and nights trying to replicate the design. Worked himself half to death, he did.~
== BC0AURA2 ~He made it all by himself, without any guidance? That's impressive...~
== BC0AURA2 ~...does it work?~
== BJAN ~Of course it does! Erm, don't mind the cracks and dents on the hull. It makes the veeery occasional malfunction.~
EXIT

CHAIN
IF ~InParty("Jan")
Range("Jan",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJan1","GLOBAL",1)~ THEN BJAN C0AuraJan2
~That's quite the exquisite bow you've built for yourself, Aura. And shiny too, for that matter. I take it that is a recent design?~ [C0BLANK]
DO ~SetGlobal("C0AuraJan1","GLOBAL",2)~
== BC0AURA2 ~Well, I've kept it with me since the start of my journey a few years ago, but relatively speaking, yes, Jan. Are you curious about it?~
== BJAN ~How could I not be? I've been thinking of ways to upgrade my beloved Flasher for some time now. Its combat performance is more than satisfactory as is, of course, but I always have to imagine the possibilities. Consider this: the first viable launcher–blender–hybrid in all the realms, as capable in the kitchen as in the battlefield!~
== BC0AURA2 ~That'll... definitely be the groundbreaking invention, Jan. If it's possible, that is!~
== BJAN ~Now, you know what they say—everything is impossible, until someone's done it. I'll start work on the sketches, and then we can put our heads together and see how my concept holds up to reality after a live test or two, eh?~
== BC0AURA2 ~Hang on, I don't think I've agreed to—~
== BJAN ~Ah, this is going to be brilliant. I can smell the success already—like freshly-peeled turnips going into a boiling pot of stew. Ho ho, time to get to work! No time to waste!~
== BC0AURA2 ~Oh, never mind. I guess I might as well, if it makes him happy... *sigh*~
EXIT

CHAIN
IF ~InParty("Jan")
Range("Jan",15)
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraJan1","GLOBAL",2)~ THEN BC0AURA2 C0AuraJanFlasher
~Well, uh... here's your Flasher Launcher, Jan. Along with some of the notes I've written. Honestly, I can't believe that thing even fires. How do the pieces stay together?~ [C0BLANK]
DO ~SetGlobal("C0AuraJan1","GLOBAL",3)~
== BJAN ~Ah, that is the question, isn't it? I suppose a fellow inventor has a right to be privy to my secret methods, though. It's all thanks to a little family brand. See that little bit of green betwixt the joints? That's the Jansen Hugtight Adhesive, a favorite of inventors and housewives with adventurous husbands alike – "Guaranteed to Never Let It Go!"~
== BC0AURA2 ~Oh, wow. You know, that could've really come in handy while I was trying to repair my last pair of goggles... never mind. So why did you want me to take a look at it, anyway? As far as I can tell it works... well, the way it's supposed to.~
== BJAN ~Well, as they say, there is always room for improvement. And as you've so helpfully added so many new venues for some creative work in my old workshop, I've taken the liberty to draw myself some potential enhancements to really spice up the Flasher Launcher. Er, don't mind the stains. A bit of turnip extract mixed with ground coffee, that. It was necessary for an all-nighter.~
== BC0AURA2 ~Let me see that... a turnip juice extractor? An extendable back-scratcher? A compartment for... foot hair removal lotion? Do we really need those for adventuring...?~
== BJAN ~You never know. A good swig of turnip juice could bring you back from the brink of death. Although, I suppose those add-ons would make the launcher a bit unwieldy... hmm... I think the focal bulb and enhanced spring are a must-have, though. It'd add a nice punch to the Flasher.~
== BC0AURA2 ~*sigh* Okay, okay. I'll see what we can put together at the workshop. Just... give a little bit of room for compromise, okay?~
DO ~GiveItemCreate("c0anotea","C0Aura",0,0,0)~ EXIT

// Keldorn

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKeldorn1","GLOBAL",0)~ THEN BKELDOR C0AuraKeldorn1
~Hold a moment, Aura. I believe this doll is yours, is it not?~ [C0BLANK]
DO ~SetGlobal("C0AuraKeldorn1","GLOBAL",1)~
== BC0AURA2 ~Oh! Thank you, Keldorn. I can't believe I dropped it. This was a precious gift from my sister.~
== BKELDOR ~It is no trouble, my girl. But... alas.~
== BC0AURA2 ~I'm so sorry! I didn't mean for you to pick up after me.~
== BKELDOR ~Nay, not that. It simply preturbs me to see one such as you in such a dangerous life. There are those who would welcome a mind such as yours in much safer and more fulfilling places.~
== BC0AURA2 ~Thank you for your concern, Keldorn. But there's some things I can only learn by being here. I know I'm out of place, but... it's a choice I made knowing the risks.~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Besides... I owe <CHARNAME> for more than a few reasons. If <PRO_HESHE> needs me, that's more important than anything.~
== BKELDOR ~I understand. I do not doubt your conviction, and be it within my power, I shall strive to ensure you are safe and well. *sigh* Still, some doubts are hard to lay to rest.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
!GlobalGT("LadyMaria","GLOBAL",0)
Global("C0AuraKeldorn2","GLOBAL",0)~ THEN BKELDOR C0AuraKeldorn2
~I have heard you speak of sisters, Aura. Several of them, if I am not mistaken?~ [C0BLANK]
DO ~SetGlobal("C0AuraKeldorn2","GLOBAL",1)~
== BC0AURA2 ~Yes, sir. I'm the third daughter of my family.~
== BKELDOR ~Though I know little of Lantan, if you are of any example, it appears your people's familial bonds are strong. I can see you treasure the memory of your sisters greatly.~
== BC0AURA2 ~They've raised me to become who I am now. If not for everything I've learned from them, I probably wouldn't even be here.~
== BKELDOR ~One's upbringing may tell much of those whom had a hand in it. From your example, I can say your family are of indisputably noble character.~
== BC0AURA2 ~What brought this up, sir?~
== BKELDOR ~I was merely regretting that I am not more involved in my own daughters' upbringings. Like any father, I often worry for their futures.~
== BC0AURA2 ~I'm certain you have nothing to worry about. With your strong sense of duty and principles, I'm sure your family will learn from your example. I know I'm trying to.~
== BKELDOR ~You honor me, dear girl, but the duty of a father is rarely so simple. Though if you truly see virtues in myself worth emulating, then I will do my best to continue to serve as an example.~
EXIT

// Korgan

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKorgan1","GLOBAL",0)~ THEN BKORGAN C0AuraKorgan1
~I'll admit, I've found meself a mite impressed by ye, lass.~ [C0BLANK]
DO ~SetGlobal("C0AuraKorgan1","GLOBAL",1)~
== BC0AURA2 ~Really? How so?~
== BKORGAN ~From yer looks, I believed ye'd bit a bit o' a dainty flower, an' I'd have ter suffer through me share of babysittin', but ye've shown not a trace of fear in me presence, and ye hold yer own well.~
== BKORGAN ~Yer bladework could use some practice, but ye be a crackshot with that fine bow o' yers. Pure mithril, eh?~
== BC0AURA2 ~Oh, yes. It was traded to my family by the dwarves of the Western Heartlands. We have a good relation with the dwarves of West Faerûn.~
== BKORGAN ~Hmph. I be nae a trained smith like me kind who barely stray from their holes, but I know a dwarf-make weapon when I see one. As long as ye wield it well from the back, Korgan'll take care o' the fools in the front for ye.~
== BC0AURA2 ~Thanks, Korgan. That's surprisingly reassuring, coming from you.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraKorgan2","GLOBAL",0)~ THEN BKORGAN C0AuraKorgan2
~I reckon I 'ad a niece who looked like ye, once, back when I were with a band o' crusty ol' dwarves I called a clan.~ [C0BLANK]
DO ~SetGlobal("C0AuraKorgan2","GLOBAL",1)~
== BC0AURA2 ~Oh, is that so? What, um, did you think of her, Korgan?~
== BKORGAN ~Pretty little thing ter look at. I din't care much fer me clansmen, but I had a soft spot fer that one, I'll admit it. Cut off a few hands from louts whose hands went wanderin'.~
== BC0AURA2 ~That's, um... I guess you care, in your own way.~
== BKORGAN ~Seein' ye made me think of 'er, just a little bit. Imagine she's married off ter some other clan by now, an' I doubt I'll see her again. Ye need someone's hands chopped off fer ye, lass, just say the word.~
== BC0AURA2 ~No, nobody needs their hands chopped off, Korgan! *shudder* If you want to help, then... uh... can we just not talk about this?~
== BKORGAN ~Hnh. I ain't much fer words, lass. But ye can be assured, I'll be standin' here with me eyes lookin' fer fools I mislike.~
EXIT

// Mazzy

CHAIN
IF ~InParty("Mazzy")
Range("Mazzy",15)
AreaType(OUTDOOR)
!AreaType(CITY)
!TimeOfDay(NIGHT)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMazzy1","GLOBAL",0)~ THEN BC0AURA2 C0AuraMazzy1
~*singing* 'We've been travelling so far, so long
From the grassy plains to the mountain strong
Our homes are tucked away, unseen
We'll soon be back where we've been...'~ [C0BLANK]
DO ~SetGlobal("C0AuraMazzy1","GLOBAL",1)~
== BMAZZY ~That is an old halfling song, is it not?~
== BC0AURA2 ~Yes, that's right. I hear it's a very popular song with your folk, Mazzy. I learned it some time ago, during my travels.~
== BMAZZY ~Well, I was not raised within a settlement of my kin, but my father was fond of that song. I can still remember his favorite verse:~
== BMAZZY ~"We'll take the winding trail, the old one still
Where the trees are tall and the birds do trill
Through the forest, through the night
We'll keep on walking 'til first light."~
== BC0AURA2 ~Ooh, I haven't heard that verse before. Was it his own rendition?~
== BMAZZY ~Perhaps. My father was much like myself, in many ways. Adventurous and free-spirited, but at the end of the day his wish was always to see the warmth of hearth and home after a long day's journey. That may be why this version of the song was his favorite.~
== BC0AURA2 ~That's... very uplifting, actually. Go on, Mazzy. Finish the song! I'd like to hear you keep singing.~
== BMAZZY ~Oh, very well... but why don't you sing the next verse?~
== BC0AURA2 ~"Oh, we're heading home, home, home
To our peaceful little village, we'll never roam
We'll clap and sing, and smile so wide
As we return to our home side..."~
== BMAZZY ~"So let's keep on walking, not one of us cease
We'll soon be home, where we can find peace
The land of our halflings, we'll all be together
Where our hearts will be joyous and ever-lighter."~
== BC0AURA2 ~*clap clap* That was wonderful! I think I've got a new appreciation for the song after listening.~
== BMAZZY ~Ha ha. Thank you, Aura. I may not have a talent as a singer, but that was certainly enjoyable. And comforting.~
== BC0AURA2 ~Yep! Maybe we can share more songs in the future?~
== BMAZZY ~We certainly may. But come... we still have a long road ahead of us.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
AreaType(FOREST)
Global("C0AuraMazzy2","GLOBAL",0)~ THEN BMAZZY C0AuraMazzy2
~Raise your arm a little more above your shoulder. You want to put some of the weight on your upper body so you don't tire yourself out.~ [C0BLANK]
DO ~SetGlobal("C0AuraMazzy2","GLOBAL",1)~
== BC0AURA2 ~I'm trying, but... it starts to get sore after I pull the string just a few times.~
== BMAZZY ~I know. It was the same for me as well, before I grew used to it. Once your body grows accustomed to the motions, it will feel natural.~
== BC0AURA2 ~*sigh* Alright, let me try again later. I feel like my arms are going to fall off.~
== BMAZZY ~Truth be told, you did not need that much guidance from me at all. Your bow's fascinating design already requires mastery of several different techniques, and the training you have already received seems to be from teachers with skill rivaling my own. I feel as though all I'm contributing are a revision of the basics.~
== BC0AURA2 ~Juno used to tell me that you've never trained enough until you land twenty shots dead center in less than twenty seconds. Bonus points if you do it with your eyes closed.~
== BMAZZY ~A rather... extreme requirement, though I cannot say I've not heard similar ones before. But your sister is a dedicated fighter, and you an artisan, yes? Is there a need for you to push yourself to this extreme, considering that?~
== BC0AURA2 ~I wish I didn't, but I've learned that some things can't be changed... and other things can't be protected... without fighting. I don't like to fight, but if I must... I want to win. Because I don't ever want to feel powerless. Not... not again.~
== BMAZZY ~There will always be fights we cannot win, Aura. Whether we hold all the power a mortal can afford, we must all face loss. Though... I know what it is like, to be helpless when what you hold dear is taken from you. Even death is preferable to such a fate.~
== BC0AURA2 ~But still, we can't give up, right? I don't think I'll ever stop being afraid, but as long as there's something important, I want to carry my bow and protect it.~
== BMAZZY ~Well said. We all must pursue strength in order to enforce our desires, whether it be to improve the world or protect what's important... come, Aura. Let's start again. You've done well so far, and could stand to improve much more. We can train for as long as you'd like.~
DO ~ApplySpellRES("C0AUPROF","C0Aura")~ EXIT

// Minsc

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinscRestTalk1","GLOBAL",1)~ THEN BMINSC C0AuraMinsc4
~Rest, Boo! The night has come, and you must have your rest. Heroes must have their sleep to gather the strength to give the mightiest kicks to the backsides of evil once the sun rises!~
DO ~SetGlobal("C0AuraMinscRestTalk1","GLOBAL",2)~
== BC0AURA2 ~What is it, Minsc? Is Boo feeling restless?~
== BMINSC ~Oh, friend Aura. Boo is usually sleeping as soundly as a baby in this hour, but tonight... Minsc thinks the strain of the evil we have fought is getting to poor Boo. Or maybe it is getting to Minsc, and Boo is feeling concern. I am unsure. But he needs his rest! Minsc cannot sleep without knowing Boo is resting first.~
== BC0AURA2 ~Hmm, have you tried singing to him? I've always found a soothing lullaby helps put me to sleep.~
== BMINSC ~Boo likes to listen to singing, but Minsc... Dynaheir has always said Minsc's voice sounds like thunder blowing through horns. And Minsc only knows one Rashemi song for children...~
== BMINSC ~'O, little babe, rest in your cradle,
When the night devours the sun, who comes to knock at this hour?
May it be the wind, or a young wolf,
Be not afraid, of the howls at the door...'~
== BMINSC ~'Hmm-mm-hmm...' ehh... Minsc only remembers a little bit. The words are very different in our tongue, and it has been a very long time. Minsc would not like to get it wrong.~
== BMINSC ~Dynaheir would have known the song, if she were still with us. She was the wisest woman Minsc knew, and she knew everything. Ah, Dynaheir... Minsc is so often lost without her.~
== BC0AURA2 ~Minsc... would you like me to sing instead? I'm not that skilled, but I know a few songs.~
== BMINSC ~*sniff* Minsc... would like to hear a song.~
== BC0AURA2 ~Okay, let me think...~
== BC0AURA2 ~'Hush-a-bye, hush-a-bye, little one, sleep, sleep...
Good little one, rest in your cradle, listen to this lullaby,
For what do I pray? Where do my prayers go?
For my child, towards the eastward wind, fly...'~
== BMINSC ~Boo, are you listening? Boo? Ah, you are sleeping at last... that's good... *yawn*~
== BMINSC ~Zzz...~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinsc1","GLOBAL",0)~ THEN BMINSC C0AuraMinsc1
~Ah, that's not right! These mighty arms of justice can strike down evil like mowing grass, but too short to reach this sly and wicked itch? I need bigger arms!~ [MINSC37]
DO ~SetGlobal("C0AuraMinsc1","GLOBAL",1)~
== BC0AURA2 ~Minsc, why are you, um, scratching yourself? Boo hasn't got mites again, has he?~
== BMINSC ~No, no, Aura, Boo has been keeping himself clean as a whistle. He is just restless! We walk day in and day out, yet all Boo is allowed to do is curl up in Minsc's smelly backpack!~
== BC0AURA2 ~Why don't you let him out once in a while? It's not good for animals to be cooped up for too long.~
== BMINSC ~Minsc lets Boo run free during our meal breaks and before bedtime, but he says it is not enough. He wishes to race across fields and climb tall hills as we do!~
== BC0AURA2 ~But he can't do that. What if he gets stepped on? Or if he runs into a bear? *shudder*~
== BMINSC ~Minsc agrees, but he cannot bear—~
== BC0AURA2 ~*violent shudder*~
== BMINSC ~Erm... cannot *stand* having his toes nibbled during bedtime by a frustrated Boo for much longer. You are a clever artisan, Aura! Help us think of an idea!~
== BC0AURA2 ~Well, Muffy gets antsy too if he doesn't get his playtime... you know, I might be able to do something, Minsc. Just leave it to me!~
EXIT

CHAIN
IF ~InParty("Minsc")
Range("Minsc",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinsc1","GLOBAL",1)~ THEN BC0AURA2 C0AuraMinsc2
~Hey, Minsc. Think fast!~ [C0BLANK]
DO ~SetGlobal("C0AuraMinsc1","GLOBAL",2)~
== BMINSC ~What is this, Boo? A ball! Oh, do you intend to play catch with us, Aura? But Minsc thinks this ball is a few sizes too large for Boo. Why, he could easily fit inside it!~
== BC0AURA2 ~*giggle* Yep, he can. And he's supposed to. See those two latches on the sides? Press them in and it'll open.~
== BMINSC ~*click* Look, Boo! There is so much room in there. Wouldn't this be a nice little bed for you to sleep in while we travel?~
== BC0AURA2 ~No, no, let me show you... erm, could you lend me Boo for a second as well?~
== BMINSC ~Is this alright, Boo? ...Yes, Boo says it's alright.~
== BC0AURA2 ~You go in there, Boo... now I'm going to close it... don't worry, there's holes for you to breathe through... now I just remove the pin so the inside moves around freely... there!~
== BMINSC ~Oh! Look at you, Boo, running about freely in there. Now you can release all that energy that you have stored up inside of this... this... eh, what is this thing, Aura?~
== BC0AURA2 ~It's a glassteel hamster ball. Usually you'd place them on the ground and watch the ball roll around with the hamster inside, but we can't really do that while adventuring. So I made it a double layer so the inside can turn without moving the ball itself.~
== BMINSC ~Ah, that is very clever! Boo likes the little wheel, but he likes running in any direction he pleases. Now Boo can remain safely in Minsc's pack and still get the exercise he needs. You have our thanks, my clever friend!~
== BC0AURA2 ~Heehee. There's nothing better than seeing my creations make people happy. You're welcome, Minsc.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraMinsc2","GLOBAL",0)~ THEN BMINSC C0AuraMinsc3
~Ah–hay! Aura!~ [MINSC36]
DO ~SetGlobal("C0AuraMinsc2","GLOBAL",1)~
== BC0AURA2 ~Gyaaah! M–minsc! My goodness, where did you come from?~
== BMINSC ~Minsc was standing behind you the entire time.~
== BC0AURA2 ~Oh, is that the case... ahaha... I can't believe I didn't notice you. But oof, did you just give me a scare...~
== BMINSC ~If I gave you a fright, I am very sorry. Minsc and Boo are supposed to instill terror in the faces of evil, not friends.~
== BC0AURA2 ~No, it's okay. I had no idea you could hide your presence so well, though! I could never do something like that.~
== BMINSC ~Ah, it is very easy, my friend! Minsc holds his breath and then just stands very, very still. It is as a very old ranger in Rashemen taught us. "Tread softly, carry big sword". Evil is doubly frightened when Minsc attacks when they are not suspecting!~
== BC0AURA2 ~Well, that... uh, makes sense, now that I think about it. Although I couldn't possibly hold my breath for that long... I'd pass out first. Anyway, what did you call on me for?~
== BMINSC ~Boo wanted to ask if Aura wanted any strawberries.~
== BC0AURA2 ~Strawberries! Yes, please and thank you!~
DO ~RealSetGlobalTimer("C0AuraMinscRestTalkTimer","GLOBAL",3600)~ EXIT

// Nalia

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNalia1","GLOBAL",0)~ THEN BNALIA C0AuraNalia1
~Is that a copy of the 'Imaskarcana Memoirs', Aura? That's written in the Imaskari tongue. I'm amazed you can read it.~ [C0BLANK]
DO ~SetGlobal("C0AuraNalia1","GLOBAL",1)~
== BC0AURA2 ~Well, the ancient language of Lantan was based off the Imaskari, so I can apply some of what I already know... it's better than trying to translate Loross. I have to break out the old lexicons for that.~
== BNALIA ~What you already know... out of curiosity, how many languages do you know anyways, Aura?~
== BC0AURA2 ~Hmm... let's see. There's Common and Lantanna, of course, those are standard in my homeland. I learned the Seinai dialect of Kozakuran during my stay there... studied a bit of Shou as well, but don't ask me to speak it...~
== BC0AURA2 ~Oh, and my family often traded with the dwarven followers of Vergadain, so I picked up some Dwarvish... my Elvish is a little rusty, but I can manage basic conversations... and I can write the Draconic alphabet, at least.~
== BNALIA ~Oh... oh, wow... that's even more than I thought. How do you keep it all memorized?~
== BC0AURA2 ~Lots of practice? I'm not sure... the same way you memorize the spells in your tome, I suppose.~
== BC0AURA2 IF ~!Class("C0Aura",MAGE_ALL) !Class("C0Aura",BARD_ALL)~ THEN ~To be honest, I find magic a whole lot more interesting. If I knew a bit more magic than I did, maybe books like these would be more useful to me.~
== BNALIA ~Still... it's amazing how much knowledge you've committed to memory. Sometimes my spells alone keep my mind occupied, and when I lose focus, it makes my head spin.~
== BNALIA IF ~!Class("C0Aura",MAGE_ALL) !Class("C0Aura",BARD_ALL)~ THEN ~I think you would've made a great mage, if you'd chosen that path.~
== BC0AURA2 ~Well, I know magic itself takes a lot of concentration, and you do a great job already. I'm definitely relieved every time your fireballs don't go astray, after all.~
== BNALIA ~Ha ha. I suppose you have a point there.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNalia1","GLOBAL",0)~ THEN BNALIA C0AuraNalia2
~What drove you to come out and explore the world, Aura?~ [C0BLANK]
DO ~SetGlobal("C0AuraNalia1","GLOBAL",1)~
== BC0AURA2 ~Me? I just... wanted to know what the lands outside of home looked like, I suppose. Why do you ask?~
== BNALIA ~It's just that I've never heard of a Lantanese adventurer before. From what I've read, your people are either scholars or inventors. Few ever leave their island, and those that do are as traders and other roles on behalf of your people.~
== BC0AURA2 ~That's basically true. We don't have many adventurers. Our people are... well, we get so caught up in our work that we often forget to eat.~
== BNALIA ~How is it that we don't see more of your works in the rest of the Realms? I've seen you work. You can create things even the cleverest of people in Amn could never even dream of. You'd think even the most isolated nation would have spread some kind of influence.~
== BC0AURA2 ~I... can't speak for my entire nation. But we're not a people that work for gaining power, not... at large, anyway. A lot of Lantanna know as little about your world as you do ours. Not many even think about stepping outside of their houses.~
== BNALIA ~But you did.~
== BC0AURA2 ~I... okay. Yes, I did.~
== BNALIA ~How difficult was it? If your people are as solitary as you claim...~
== BC0AURA2 ~I, well... I don't know. It wasn't a hard decision I had to make at all, really. My family supported me. They helped make my bow and prepare me for the journey, and there was never any pressure for me to change my mind.~
== BC0AURA2 ~That's how our people are. We take care of our own, and while we don't push for each other to know about the outside world, we don't oppose it either. As long as we abide by the laws, and never let our work be abused by others.~
== BNALIA ~I understand. I've seen how meticulous you are. Always looking carefully, making sure to never leave traces of anything behind that could be taken and abused. It must be incredibly difficult.~
== BNALIA ~In a better world, perhaps knowledge could be used for good and good alone. But we both know that's not the reality we live in. Though one day, perhaps, if we try to make a change.~
EXIT

// Neera

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNeera1","GLOBAL",0)~ THEN BNEERA C0AuraNeera1
~Hey, Aura... does your squirrel bite?~ [C0BLANK]
DO ~SetGlobal("C0AuraNeera1","GLOBAL",1)~
== BC0AURA2 ~Well, he can... but he wouldn't bite you. I think.~
== BNEERA ~I wanna pet him! Can I pet him?~
== BC0AURA2 ~Um, go ahead. Just be careful not to drop him...~
== BNEERA ~Wow, he's pretty adorable for a critter made of metal. And so lifelike! How did you do it? Once, I turned a broom alive by accident and it tried to kill me. That thing wasn't nearly as cute.~
== BC0AURA2 ~Heehee... sorry, trade secret.~
== BNEERA ~Aw, come on! I promise I won't tell anyone. I just want my own immortal metal pet, darn it!~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNeera2","GLOBAL",0)~ THEN BNEERA C0AuraNeera2
~Here. You can have your book back, Aura... ugh.~ [C0BLANK]
DO ~SetGlobal("C0AuraNeera2","GLOBAL",1)~
== BC0AURA2 ~What? Didn't you borrow that from me just last night? You can't have finished it already!~
== BNEERA ~Nope, I couldn't even get through half of it. I feel like my head's about to implode. I can barely read this—how in the name of Mystra's soggy stockings can you actually memorize any of it?~
== BC0AURA2 ~*mumble* (Being able to sit still for more than three seconds might help...)~
== BNEERA ~What was that?~
== BC0AURA2 ~Nothing! Umm... maybe this just isn't for you. Why are you suddenly so interested in practical applications of clockwork mechanisms, anyway?~
== BNEERA ~I dunno, it just caught my eye while I was looking through the stuff you had. I thought if I studied hard enough I'd be able to build a clockwork dragon!~
== BC0AURA2 ~Uh, really?~
== BNEERA ~Okay, okay. So I just wanted to try and learn some new skills so I wouldn't have to rely on my magic all the time. You try depending on something that just does whatever it wants!~
== BC0AURA2 ~Oh... so that's why. Well, maybe...~
== BNEERA ~No, forget it. Stupid idea anyway. I don't have the smarts to learn something different at this point.~
== BC0AURA2 ~I'm not so sure... I don't think you're stupid, Neera, you're just bored. You need something that will really get your attention. I know just the thing!~
== BNEERA ~"The Catalogue of Ordinary to Extraordinary Enchanting"? Hey, that actually sounds like fun. Thanks, Aura! I'll sneak in some light reading toni—*aaahhh*!~
== BC0AURA2 ~Woah! Watch it with the sparks, Neera!~
== BNEERA ~...Oh. The ink turned invisible. Guess I won't be reading it tonight.~
== BC0AURA2 ~I, um, don't have any more copies, in case you're wondering.~
== BNEERA ~Figures. Uh, it'll fix itself eventually... it usually does.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraNeera3","GLOBAL",0)~ THEN BNEERA C0AuraNeera1
~Hey, Aura! You got any more of those tasty little rainbow bean thingys left? I've got a hankering.~ [C0BLANK]
DO ~SetGlobal("C0AuraNeera3","GLOBAL",1)~
== BC0AURA2 ~You've got rid of the entire bag of them I shared with you before? How?~
== BNEERA ~Wild magic.~
== BC0AURA2 ~Oh, right. *sigh* I'm sorry, but I've eaten my share. They're really nice, aren't they?~
== BNEERA ~You think I could conjure up some more if I tried really, really hard?~
== BC0AURA2 ~I don't th—~
== BNEERA ~Facioooo... vocooo... ferre!~ [CAS_PM3F]
== BNEERA ~Ta-da-da-daaa!~ [CAS_P03]
== BNEERA ~...drat. Somebody's old socks again. Pee-ew! That somebody really hates washing their feet, too.~
== BC0AURA2 ~H-h-hey! Don't point them at me! I don't want them either!~
== BNEERA ~Forget it, Aura. I've lost my appetite. Summoning spells are stupid.~
== BC0AURA2 ~It could be worse. At least you didn't call forth a sleuth of bears. *shudder*~
EXIT

// Rasaad

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraRasaad1","GLOBAL",0)~ THEN BRASAAD C0AuraRasaad1
~You have been watching my training sessions often, Aura. Do the techniques of the Sun Soul order fascinate you?~ [C0BLANK]
DO ~SetGlobal("C0AuraRasaad1","GLOBAL",1)~
== BC0AURA2 ~Oh, well... yes. But if you find it rude, Rasaad, I won't bother you from now on.~
== BRASAAD ~Not at all. I was merely wondering if you had interest in practicing martial arts yourself.~
== BC0AURA2 ~Me? Ha ha. I'm not sure I'm fit for that... I'm thin as a stick and barely reach your waist. I just find your style so interesting compared to Kozakuran monks.~
== BRASAAD ~Do they differ greatly from those of the eastern lands?~
== BC0AURA2 ~It's... different, in many ways. But many of the disciplines look the same. But I'm not an expert.~
== BRASAAD ~Perhaps one day I shall meet one such ascetic, and we may exchange our skills. Then, I may be able to enlighten you in how our styles differ.~
== BC0AURA2 ~Aw, that'd be really kind of you, and I'd like that. But right now, I'm just watching because I like to. Even if it's indirect, it reminds me of Kozakura.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraRasaad1","GLOBAL",1)~ THEN BC0AURA2 C0AuraRasaad2
~Rasaad, I respect you a lot. You're a great man, with a strong sense of honor.~ [C0BLANK]
DO ~SetGlobal("C0AuraRasaad1","GLOBAL",2)~
== BRASAAD ~Thank you, but from whence does this compliment come from?~
== BC0AURA2 ~I just... felt like saying it. You seem to have needed some positive reinforcement for some time now.~
== BRASAAD ~Perhaps I do, though I question whether it is deserved. An honorable man... would an honorable man forsake everything for revenge?~
== BC0AURA2 ~Do you really think you've forsaken everything? I don't believe that. A self-centered person wouldn't have stood in front to protect me in our battles.~
== BRASAAD ~I... only did what I believed was right.~
== BC0AURA2 ~That's why I said I respect you. No matter what anyone says, you haven't sacrificed the goodness in you.~
== BRASAAD ~But—~
== BC0AURA2 ~I don't enjoy revenge. I've had my own taste of it too, you know. But I know how hard it is to let go, so even if I can't change your path, I can at least help you a little. Just as you've helped me.~
== BRASAAD ~That is all I dare to ask for. Thank you, Aura. You, too, are worthy of respect, and you have mine.~
EXIT

// Valygar

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraValygar1","GLOBAL",0)~ THEN BVALYGA C0AuraValygar1
~Why do you hold such a fascination with magic, Aura? Have your people not already achieved many things others claim only magic is capable of?~ [C0BLANK]
DO ~SetGlobal("C0AuraValygar1","GLOBAL",1)~
== BC0AURA2 ~I think you're exaggerating, Valygar. Magic can still accomplish many things that science can't.~
== BVALYGA ~From what I have seen, the things magic is capable of are anything but benign.~
== BC0AURA2 ~But– well, maybe. But power of any kind's capable of doing some terrible things. Isn't it a little unfair to hold magic to a higher standard?~
== BVALYGA ~It is my belief that any sort of power restricted to individuals has the potential to corrupt, by giving them the ability to do what others cannot.~
== BC0AURA2 ~True, but they can also make the world better in ways other's can't... right?~
== BVALYGA ~Perhaps they can. Yet most fall to temptation in the end. I hope you will not fall to the same depths.~
== BC0AURA2 ~Don't worry. I won't.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
PartyHasItem("NPSW04")
Global("C0AuraValygar2","GLOBAL",0)~ THEN BC0AURA2 C0AuraValygar2
~Valygar, is your blade a family heirloom?~ [C0BLANK]
DO ~SetGlobal("C0AuraValygar2","GLOBAL",1)~
== BVALYGA ~Close enough. I know little of its history, but it has been with my family for many generations.~
== BC0AURA2 ~Don't you know that much about your ancestors?~
== BVALYGA ~What little I already know is more than I wish to. There are dark tales attached to the Corthala name, Aura, ones which you would not wish to know.~
== BC0AURA2 IF ~PartyHasItem("NPCHAN")~ THEN ~I'm sorry, I was just curious... the katana, and your armor as well... they've been altered over time, but their design seems based on those from the east.~
== BC0AURA2 IF ~!PartyHasItem("NPCHAN")~ THEN ~I'm sorry, I was just curious... the katana, its design is unusual, but it seems based on those from the east.~
== BVALYGA ~You may be right for all I can tell. But none may ever know anymore. The atrocities committed by those of my bloodline in the past have washed away with blood any legacy worthy of pride.~
== BC0AURA2 ~I don't believe that's true. And even if it was... you could still create new stories, Valygar. You're not evil, even if others with your name were.~
== BVALYGA ~What people think of me, or my last name, matter little anymore. Good deeds are worth enough alone, they do not need the burden of fame to accompany them.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
PartyHasItem("c0abook1")
Dead("Lavok02")
Global("C0AuraValygar3","GLOBAL",0)~ THEN BVALYGA C0AuraValygar1
~You've been reading Lavok's book.~ [C0BLANK]
DO ~SetGlobal("C0AuraValygar3","GLOBAL",1)~
== BC0AURA2 ~The Imaskari tome he was researching? Yes, it's... fascinating. Some of the knowledge in there could help with my own work.~
== BVALYGA ~I see.~
== BC0AURA2 ~Valygar, I can tell you're uncomfortable. If you're worried about me using your ancestor's knowledge, I can—~
== BVALYGA ~No, don't mind me. As I am now, I'm... in no position to be telling anyone what they do or don't deserve to know. I don't even understand things fully myself.~
== BC0AURA2 ~Valygar...~
== BC0AURA2 ~I actually understand how you feel. Knowledge isn't inherently evil, but it does lead to obsession... I've seen it sometimes back in Lantan, too. Friends and family who are so devoted to their work, they don't notice how they're hurting themselves and others in the process.~
== BVALYGA ~That is what I have seen as well, aye.~
== BC0AURA2 ~But... I think that's why we need to look out for each other. If we think someone's losing themselves, we need to be there to take their hand and pull them back. And I think to Lavok... finding out about you meant something to him.~
== BVALYGA ~And you truly believe that? I had not thought such optimism existed.~
== BC0AURA2 ~I don't know for sure. But I feel like it's the right thing to believe. And... Valygar, if you think I'll fall into obsession, I'd like you to let me know, as a friend.~
== BVALYGA ~I see. For your sake, I'll do my best.~
EXIT

// Viconia

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraViconia1","GLOBAL",0)~ THEN BVICONI C0AuraViconia1
~Gah! Xza'iblith shu'jor!~ [C0BLANK]
DO ~SetGlobal("C0AuraViconia1","GLOBAL",1)~
== BC0AURA2 ~Whoa! What's the matter, Viconia?~
== BVICONI ~None of your concern, yingil. Suffice to say that one of those flying surface pests dared to lay its filthy appendages upon my body... ugh.~
== BC0AURA2 ~Ohh... actually, I have a concoction that's good for warding away those pesky flies. Where did I leave it... ah, here!~
== BVICONI ~I see you can be of some use after all.~
== BC0AURA2 ~Incidentally... what did that phrase you said earlier mean? I've picked up a few Drowish words, but I've never...~
== BVICONI ~Tlu suust! For your own sake, I suggest you forget those uncouth words ever came from my mouth.~
EXIT

CHAIN
IF ~InParty("Viconia")
Range("Viconia",15)
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraViconia2","GLOBAL",0)~ THEN BC0AURA2 C0AuraViconia2
~Viconia, have you ever thought about wearing a hat?~ [C0BLANK]
DO ~SetGlobal("C0AuraViconia2","GLOBAL",1)~
== BVICONI ~What nonsense are you spouting now, little one?~
== BC0AURA2 ~I just thought... you know, since you like your cowl so much... wouldn't it be easier to protect your eyes from the glare of the sun if you had a hat?~
== BVICONI ~Those gaudy, conical items worn by surface–dwelling jalil? I would sooner die than subject myself to such humiliation.~
== BC0AURA2 ~No, no! I was thinking a bit more elegant. Something wide–brimmed, but still letting your lovely white hair flow loose. Maybe a feather. Ooh, blue would look good on you.~
== BVICONI ~Hmm. Those headpieces with dark jewels are not so unappealing to the—no. Such a ridiculous thought. Do not talk to me about this again.~
== BC0AURA2 ~Aww. Spoilsport.~
EXIT

// Wilson

CHAIN
IF WEIGHT #-1 ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilson1","GLOBAL",1)~ THEN BWILSON C0AuraWilson1
~Growl. Yaaawn... groooowl....~ [C0BLANK]
DO ~SetGlobal("C0AuraWilson1","GLOBAL",2)~
== BC0AURA2 ~...~
== BWILSON ~Snore... Snuffle.~
== BC0AURA2 ~No. Nope! Can't stand it anymore! Hey, get up! UP! *whistle* *FFFFWWWW*!~
== BWILSON ~Growwwwl? Mumble, mumble...~
== BC0AURA2 ~No, not "growl". I–I've told you already, this is my spot, yours is over there. Waaay over there! Where I can't hear you snoring! Or... or doing anything!~
== BWILSON ~Rff. Mumble... *CHOMP*~
== BC0AURA2 ~A—aaah! Stop, stop it! Let go of my gown! Ohh... why? Why do you have to be here?~
== BWILSON ~Snuff. Snort! Yawn... zzz...~
== BC0AURA2 ~Ugh... this is never going to work...~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilson1","GLOBAL",2)~ THEN BC0AURA2 C0AuraWilson2
~*yaaawn*~ [C0BLANK]
DO ~SetGlobal("C0AuraWilson1","GLOBAL",3)~
== BWILSON ~Yaaaaaawnn...~
== BC0AURA2 ~Ah... *achoo*!~
== BWILSON ~Growl... grrr... *A-A-ACHOO*!~
== BC0AURA2 ~Ohh, that does it! Are you copying me on purpose?~
== BWILSON ~Snort.~
== BC0AURA2 ~I have no idea if that means yes or no, but either way, stop it! You're creeping me out!~
== BWILSON ~Snuffle, grunt.~
== BC0AURA2 ~*sigh*~
== BWILSON ~Siiiigghh.~
EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilson1","GLOBAL",3)~ THEN BC0AURA2 C0AuraWilson3
~Hey. Um... Mr. Bear? Wilson?~ [C0BLANK]
DO ~SetGlobal("C0AuraWilson1","GLOBAL",4)~
== BWILSON ~Grunt?~
== BC0AURA2 ~I just, um... er... wanted to say thanks. That monster... might've gotten me if you hadn't smacked it away.~
== BWILSON ~Growl. Snuffle.~
== BC0AURA2 ~What's that? Are you asking... if I still find you scary?~
== BWILSON ~Grunt.~
== BC0AURA2 ~Well... of course I do! I'm not going to just get over my fear in a day or two, you know.~
== BWILSON ~Rrr...~
== BC0AURA2 ~Still, if you scare our enemies as much as me... maybe this won't be so bad to deal with either.~
== BWILSON ~Grumble.~
== BC0AURA2 ~Wait... was that your stomach growling just now? Are you... hungry?~
== BWILSON ~GRUMBLE.~
== BC0AURA2 ~Aah! No, no no no! You can't eat me! I'm not tasty in the slightest!~
EXIT

CHAIN
IF ~InParty("Wilson")
Range("Wilson",15)
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraWilson1","GLOBAL",4)~ THEN BWILSON C0AuraWilson4
~Growl?~ [C0BLANK]
DO ~SetGlobal("C0AuraWilson1","GLOBAL",5)~
== BC0AURA2 ~Hmm? You're asking... if I have fish?~
== BWILSON ~Grunt...!~
== BC0AURA2 ~Oh, I'm so glad to hear you'd rather eat fish than me. Er, no, I don't. But... I do know how to fish. I grew up by the sea, after all!~
== BWILSON ~Hnrh.~
== BC0AURA2 ~You... want to take me fishing? No, no way! This is a trick to catch me all by myself, I know it! And then you'll—you'll use me as fish bait!~
== BWILSON ~Snort snort snort.~
== BC0AURA2 ~Now—now you're laughing at me? You... think I can't outfish you?~
== BWILSON ~ROAR!~
== BC0AURA2 ~Ooh, that's it. Next time we pass by a body of water, I'm bringing out my newest rod. I'll show you, you stupid bear!~
EXIT

// Yoshimo

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo1","GLOBAL",0)~ THEN BYOSHIM C0AuraYoshimo1
~I hear you are rather well-travelled, little Aura. Tell me, is it true you spent many years in my dear homeland of Kozakura?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo1","GLOBAL",1)~
== BC0AURA2 ~Oh... yes, it's true, Yoshimo-san. But I wouldn't call it many years... it was only five, really.~
== BYOSHIM ~Ah, no honorifics are necessary, my dear. After spending so many journeys in these lands, I have grown accustomed to not using them. And five years are not so few, I think—short-lived as we humans are.~
== BC0AURA2 ~You must miss Kozakura dearly. It hasn't even been that long since I left... and I still miss the islands, and the cherry trees in bloom.~
== BYOSHIM ~A beautiful sight, aye. It gladdens me to see you are so fully charmed by my dear hongoku. I even see all the treasures you carry, the magatama, the cherry blossoms embossed on your armor, and—what's this? Why, it's a charm hanging from your bow, in your own sweet image!~
== BC0AURA2 ~H–hey! Aw, Yoshimo... come on, give that back already!~
== BYOSHIM ~Ha ha. Teasing aside... truly, seeing the impression Kozakura has left on you pleases my heart. I have always thought, 'tis a pity the East lies so far from these lands, that more could not have the chance to see that place, to embrace it, fully within their hearts.~
== BYOSHIM ~For me... well, long as the journey may be, one day, I hope to return.~
== BC0AURA2 ~I truly do hope you see your kakyou again, Yoshimo. Where is it, if I might ask?~
== BYOSHIM ~Hmm... another time, little Aura. I fear if I begin to speak of home, it will be some time before I stop. And I doubt <CHARNAME> would appreciate that. Heh.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo2","GLOBAL",0)~ THEN BYOSHIM C0AuraYoshimo2
~Your pleasant spirit is quite contagious, little Aura. It is truly fortunate, to have your cheerful and considerate person to lighten the party's atmosphere.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo2","GLOBAL",1)~
== BC0AURA2 ~'Little Aura'? Are you going to call me that from now on, Yoshimo?~
== BYOSHIM ~I thought it quite delightful, would you not agree?~
== BC0AURA2 ~But it's... it's rather childish, isn't it?~
== BYOSHIM ~If you do not enjoy it, I shall cease. I simply thought it a term of endearment between friends.~
== BC0AURA2 ~Well, it's... not so bad. I mean, I guess it's okay to call me that. If we're friends.~
== BYOSHIM ~Of course, heh... little Aura.~
EXIT

CHAIN
IF ~InParty("Yoshimo")
Range("Yoshimo",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo2","GLOBAL",1)~ THEN BC0AURA2 C0AuraYoshimo2
~Do you have a moment, Yoshimo? There's something I was curious about.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo2","GLOBAL",2)~
== BYOSHIM ~But of course, little Aura. It is always a delight to hear your voice, so listen eagerly I will.~
== BC0AURA2 ~Hehe, you're flattering me too much. I just wanted to know, though... you've been away from home for a long time, haven't you? You've mastered the Common tongue, you understand these lands better than even I do... Faerûn must feel like a second home to you at this point.~
== BYOSHIM ~Aye, close enough, my dear. It has been a long time since I left Kozakura in search of adventure, and in all that time, I have grown accustomed to the danger and thrill, as well as the profit, to be found here. Perhaps that is why, despite my homesickness, I have not succumbed to the desperate urge to return home.~
== BC0AURA2 ~You're a free spirit. The type who quickly finds themselves at home anywhere, no matter how unfamiliar it is.~
== BYOSHIM ~Still, only the truly heartless, or those with dark memories, would not hold some affection for the land they were born and raised in. Meeting you, little Aura, who has discovered a love for my home, is as good as meeting a kinsman.~
== BC0AURA2 ~And... do you miss Kozakura even more now, after talking about it with me?~
== BYOSHIM ~I do. Though I fear it is not the time for a homecoming for me... not yet.~
== BC0AURA2 ~"Not yet"?~
== BYOSHIM ~Well, I must see the end of this journey with <CHARNAME>—and you, my new friend—no? Come now, little one, there is still a tale to be told yet.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo2","GLOBAL",2)~ THEN BYOSHIM C0AuraYoshimo3
~Little Aura, you are quite the paradox. You have keen eyes and deft hands of a rogue, yet also the discipline and responsibility of a samurai. Are all within Lantan much like yourself?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo2","GLOBAL",3)~
== BC0AURA2 ~Well... I would like to hope so, yes. It's not only important to learn different skills, but to use them responsibly.~
== BYOSHIM ~Heh, small wonder then, that even though our profession have some similarity, I rarely feel challenged as to my role in this party. Though your strong sense of morals does shame me on occasion, when I am tempted to fall back into my thieving habits.~
== BC0AURA2 ~Oh, Yoshimo. You don't have anything to be ashamed of. <CHARNAME> trusts you, and so do I. I know you hope the best for us.~
== BYOSHIM ~Yes, I... indeed, I do. May our friendship be a long and fruitful one, my dear.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraYoshimo2","GLOBAL",3)~ THEN BYOSHIM C0AuraYoshimo4
~I see you often handle that jade pendant you wear when deep in thought, little Aura. It must hold great importance to you, as I have never seen it leave your possession.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraYoshimo2","GLOBAL",4)~
== BC0AURA2 ~Yes, it... was a gift. From my mentor, a Kozakuran shrine priestess.~
== BYOSHIM ~A miko? I see... I have noticed that your attire under your armor resembles a priestess's kosode. It is no coincidence, it seems.~
== BC0AURA2 ~I spent a few years at a shrine, trying to regain my memory after nearly drowning at sea. It was... more like a long study than a way of life, but I kept a few things to remember that time.~
== BYOSHIM ~If I may ask... what shrine did you tend to, while you were in my homeland?~
== BC0AURA2 ~It was... the Amatsugami shrine. Do you know about it?~
== BYOSHIM ~...~
== BYOSHIM ~Yes... the name is familiar. That magatama... if it is not too much, may I see it?~
== BC0AURA2 ~...Alright.~
== BYOSHIM ~A precious gift, this is. And to me, rather... nostalgic.~
== BC0AURA2 ~What?~
== BYOSHIM ~The truth is, my dearest aunt was also a miko. A strong, compassionate woman... when I was an unruly child who my parents feared would bring shame to our name, she was the only one who could instill any lessons within the young Yoshimo, an reckless hellion that you would likely not even recognize, should you have met him. And... she wore a magatama much like this one.~
== BC0AURA2 ~Oh, I see... how is she now?~
== BYOSHIM ~I... do not know. As I have said, it has been many years since I have returned home. The last I heard from her was through a letter... written to me over a year ago, regarding some family matters involving my sister. What of your mentor, Aura?~
== BC0AURA2 ~She—she died. A ronin, a former friend, murdered her, when she had protected me. I travelled to the Sword Coast in order to find him... and I stopped him. I'm... not proud of it, even though I know he committed many evils.~
== BYOSHIM ~Ah. So that is what happened... do not feel guilt, Aura. A disgraced samurai who would turn his blade against his friend... deserves the shame of dying by that same blade.~
== BC0AURA2 ~Yoshimo, you... you sound angry. This isn't like you.~
== BYOSHIM ~Heh. If you sense fury, then consider it to be a righteous sort. In any case... these dark memories are behind you now, no?~
== BC0AURA2 ~Right.~
== BC0AURA2 ~Yoshimo?~
== BYOSHIM ~Yes?~
== BC0AURA2 ~You should... go home soon. It sounds like there are people who are waiting for you. You might be happier if you saw them again.~
== BYOSHIM ~Ah... yes. That is sound advice indeed. Soon, I hope I will be returning... in one way or another.~
EXIT