//////////////////////////////////////////////////////////////////////////////////
////////////////////////////////BG1 Talks/////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

CHAIN IF ~Global("C0AuraBG2FriendshipImportTalk","GLOBAL",2)~ THEN BC0AURA2 FRIEND-BG1-1
~Heehee. It's such a wonder to be travelling with you again, <CHARNAME>, and so soon! It's like we were never apart at all, isn't it?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipImportTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraBG2FriendshipTalkTimer","GLOBAL",2700)~
END
++ ~It's good to see you again too, Aura.~ + FRIEND-BG1-1-1
++ ~Time has flown by rather quickly.~ + FRIEND-BG1-1-2
++ ~I see you haven't changed at all in the meantime.~ + FRIEND-BG1-1-3
++ ~Can we talk later? I'm not exactly in the mood to reminisce right now, if you don't mind.~ + FRIEND-BG1-1-0

CHAIN BC0AURA2 FRIEND-BG1-1-0
~Oh. Right... we'll have plenty of time in the future to catch up, won't we. Okay, that's all for now then!~
EXIT

CHAIN BC0AURA2 FRIEND-BG1-1-1
~I'm happy too. After all, you're the closest friend I've made since I started travelling the Sword Coast. It just didn't feel right not being around you after a while.~
EXTERN BC0AURA2 FRIEND-BG1-1-4

CHAIN BC0AURA2 FRIEND-BG1-1-2
~Yeah, I know. It hasn't been so long, and yet... it's like it was always meant to happen, you know? Us meeting again, I mean.~
EXTERN BC0AURA2 FRIEND-BG1-1-4

CHAIN BC0AURA2 FRIEND-BG1-1-3
~I haven't? Mmm... no, I guess not. I was planning on changing my hair, you know? But I've gotten so used to it after keeping it like this for so long and... ha ha, I know. You don't mean it like that.~
EXTERN BC0AURA2 FRIEND-BG1-1-4

CHAIN BC0AURA2 FRIEND-BG1-1-4
~I was so afraid, you know? That I might not have a chance to see you again. I heard so much about what happened since Baldur's Gate, you becoming a fugitive, it was all so... well, I'm just glad you're alright, <CHARNAME>.~
END
++ ~I don't feel exactly feel alright.~ + FRIEND-BG1-1-5
++ ~That was all very sudden. Even I'm having trouble keeping up.~ + FRIEND-BG1-1-6
++ ~You missed the part with the kidnapping and torture.~ + FRIEND-BG1-1-7
++ ~We can talk about this later.~ + FRIEND-BG1-1-0

CHAIN BC0AURA2 FRIEND-BG1-1-5
~I... I know. You must've been through a lot of hurt during that time, haven't you? I'm so sorry.~
EXTERN BC0AURA2 FRIEND-BG1-1-8

CHAIN BC0AURA2 FRIEND-BG1-1-6
~I don't blame you. There's no way I could imagine everything that happened, but... difficult can't even begin to describe it, right?~
EXTERN BC0AURA2 FRIEND-BG1-1-8

CHAIN BC0AURA2 FRIEND-BG1-1-7
~I... I was thinking I shouldn't bring that up. Not unless, you know... you wanted to talk about it.~
EXTERN BC0AURA2 FRIEND-BG1-1-8

CHAIN BC0AURA2 FRIEND-BG1-1-8
~That aside I just wanted to say... I'm so sorry I wasn't with you. Even if I might've been completely useless... I never wanted to abandon you. Not when you needed it.~
= IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ THEN ~And those last words I said to you, when you were caged and alone... I've thought them so many times over. They were probably the worst things I could've said.~
= ~It just... feels so wrong. After I found out about everything you've been through, and then looking at what I've been doing after abandoning you... it's probably too much to ask you to forgive me.~
END
++ ~Is that what you've been worrying about? You don't have to ask for forgiveness. I don't blame you for anything.~ + FRIEND-BG1-1-9
++ ~You didn't 'abandon' me. There wasn't anything more you could've done back in Baldur's Gate... anything you could've known about, anyway.~ + FRIEND-BG1-1-9
++ ~It was a hard time, but you shouldn't blame yourself. Your life isn't that closely bound to mine, nor should it be.~ + FRIEND-BG1-1-9
++ ~Well, you have your chance to make up for it now. Make up for your absence and we'll call it even.~ + FRIEND-BG1-1-10
++ ~Can we just put this behind us? Apology accepted, let's move on. I don't feel like dwelling on it.~ + FRIEND-BG1-1-12

CHAIN BC0AURA2 FRIEND-BG1-1-9
~Thank you, <CHARNAME>. I'm really glad you're my friend.~
EXTERN BC0AURA2 FRIEND-BG1-1-11

CHAIN BC0AURA2 FRIEND-BG1-1-10
~Don't worry, <CHARNAME>. I'll do everything I can for you.~
EXTERN BC0AURA2 FRIEND-BG1-1-11

CHAIN BC0AURA2 FRIEND-BG1-1-11
~This time, I'm going to stick with you and give you all the help I can. No matter how dangerous things get, you can count on me, I promise.~
END
++ ~Thank you, Aura.~ + FRIEND-BG1-1-12
++ ~I'm counting on you.~ + FRIEND-BG1-1-12
++ ~Enough talk. You'll have plenty of chances to prove yourself.~ + FRIEND-BG1-1-12

CHAIN BC0AURA2 FRIEND-BG1-1-12
~I won't let you down, <CHARNAME>.~
= IF ~Global("C0AuraRomanceActive","GLOBAL",1)~ THEN ~We'll talk again soon, right? I've missed spending time with you.~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipImportTalk","GLOBAL",4)~ THEN BC0AURA2 FRIEND-BG1-2
~Okay, another battle over and done with. What a relief... fighting for our lives just never gets any easier and... oh, ouch. That really hurts.~
DO ~IncrementGlobal("C0AuraBG2FriendshipImportTalk","GLOBAL",1)
RealSetGlobalTimer("C0AuraBG2FriendshipTalkTimer","GLOBAL",2700)~
END
++ ~Are you alright, Aura?~ + FRIEND-BG1-2-1
++ ~You need to get that healed up quickly.~ + FRIEND-BG1-2-1
++ ~Don't slow me down.~ + FRIEND-BG1-2-2
++ ~We can't wait around too long.~ + FRIEND-BG1-2-0

CHAIN BC0AURA2 FRIEND-BG1-2-0
~Okay, just give me a second to bandage this up... actually, go on ahead. I'll catch up quick.~
EXIT

CHAIN BC0AURA2 FRIEND-BG1-2-1
~No, no, it's fine. A few bandages and a potion, and I'll be right as rain. No need to worry about me.~
EXTERN BC0AURA2 FRIEND-BG1-2-3

CHAIN BC0AURA2 FRIEND-BG1-2-2
~I won't, I swear! This just needs some bandaging and maybe a potion or salve and then I won't even feel it.~
EXTERN BC0AURA2 FRIEND-BG1-2-3

CHAIN BC0AURA2 FRIEND-BG1-2-3
~There, that's so much better. I'll take care of it more carefully whenever we're stopping to rest so... huh? What's that look on your face for, <CHARNAME>?~
END
++ ~You've toughened up a lot since I met you.~ + FRIEND-BG1-2-4
++ ~Nothing. I was just reminded of how you used to respond when hurt.~ + FRIEND-BG1-2-4
++ ~You are mistaken. I wasn't looking at you in any way in particular.~ + FRIEND-BG1-2-0

CHAIN BC0AURA2 FRIEND-BG1-2-4
~Oh. Did I used to be that delicate? I guess you're probably right.~
= ~I don't really remember what I was like back then. It feels like it's been a lifetime since Beregost.~
END
++ ~You're still pretty delicate.~ + FRIEND-BG1-2-5
++ ~The days when ogres and kobolds were the most of our worries.~ + FRIEND-BG1-2-6
++ ~I remember you being a bit of a scaredy-cat in those days.~ + FRIEND-BG1-2-7

CHAIN BC0AURA2 FRIEND-BG1-2-5
~Hey, I am n—okay, fine. I guess I can't argue with that. I'm still not comparable to you, no matter how I look at it.~
EXTERN BC0AURA2 FRIEND-BG1-2-8

CHAIN BC0AURA2 FRIEND-BG1-2-6
~When the only thing I had to run in terror from were bears in the wild... haha, whatever happened to those days?~
EXTERN BC0AURA2 FRIEND-BG1-2-8

CHAIN BC0AURA2 FRIEND-BG1-2-7
~Well, bears and ghosts and the like are genuinely scary, okay? It isn't like I'm not still terrified to death of them.~
EXTERN BC0AURA2 FRIEND-BG1-2-8

CHAIN BC0AURA2 FRIEND-BG1-2-8
~I guess even though I've gotten stronger, maybe some things won't ever change.~
= ~Anyway, my injury isn't hurting so much anymore. Let's go, <CHARNAME>. Thanks for talking with me.~
EXIT

//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////FRIENDSHIP/////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",2)~ THEN BC0AURA2 FRIEND-1
~<CHARNAME>, I know you're probably busy, but if you've got a second...~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
= ~I just wanted to tell you that I'm grateful to be able to travel with you.~
= IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Again.~
END
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~You don't need to express gratitude. I'm just as glad that we managed to meet again.~ + FRIEND-1-1
  + ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~You seem to be quite familiar with my stories. Is it that exciting to be able to experience one yourself?~ + FRIEND-1-2
  ++ ~I just hope you're ready for the hardship in store.~ + FRIEND-1-3
  ++ ~As long as you pull your weight. If you prove yourself a liability, you're out.~ + FRIEND-1-3
  ++ ~Thank you, but please save this for another time.~ + FRIEND-1-0

CHAIN BC0AURA2 FRIEND-1-0
~Sure. I've said the most important part, anyway. Until next time, then.~
EXIT

CHAIN BC0AURA2 FRIEND-1-1
~Maybe I don't need to, but I want to anyways. I don't think I've ever said it plainly just how much traveling with you has done for me. It's not just about the memories, but the progress I've made as well.~
EXTERN BC0AURA2 FRIEND-1-4

CHAIN BC0AURA2 FRIEND-1-2
~I may not have known you for long, but I've heard plenty of your stories. And even though I wouldn't dare to say it means I understand you well... it makes me wish I could. Actually, I wish I could've met you sooner. Perhaps in Beregost, or somewhere that we've both been before.~
EXTERN BC0AURA2 FRIEND-1-4

CHAIN BC0AURA2 FRIEND-1-3
~Hehe, I don't think you'll have to worry about me in that regard, <CHARNAME>. I might not look it, but I've been on the road for quite a while myself! Usually... keeping away from threats rather than bravely facing them head on, especially when bears are involved, but still! I've got enough tricks in my sleeve not to disappoint.~
EXTERN BC0AURA2 FRIEND-1-4

CHAIN BC0AURA2 FRIEND-1-4
~The truth is... I probably wouldn't have chosen to take on the road again if I were alone. I do love to explore the world... but it means more to have someone at my side.~
= ~What do you think, <CHARNAME>? Do you feel the same way? Or is it just adventure itself that thrills you? I'd love to know more about how you feel, if you don't mind me getting a bit nosy.~
END
  ++ ~We're of the same mind. I wouldn't like to travel without friends at my side, either.~ + FRIEND-1-5
  ++ ~I think adventuring and meeting new people go hand in hand. Both are equally important.~ + FRIEND-1-5
  ++ ~The journey is what I'm really after. Whether it's on my own, or with others at my side.~ + FRIEND-1-6
  ++ ~Truth be told, I only tolerate people for their usefulness. I could do with less chatter.~ + FRIEND-1-7

CHAIN BC0AURA2 FRIEND-1-5
~That's exactly what I think. And when you say that, I'm even happier I have this chance to travel with you.~
EXTERN BC0AURA2 FRIEND-1-8

CHAIN BC0AURA2 FRIEND-1-6
~And do you think it'll always be that way? To an extent, I'm envious... because I'm not sure I could imagine myself not eventually becoming lonely, homesick, and wishing I could be with the people important to me.~
EXTERN BC0AURA2 FRIEND-1-8

CHAIN BC0AURA2 FRIEND-1-7
~I get your point. I'll stop bothering you, then.~
EXIT

CHAIN BC0AURA2 FRIEND-1-8
~I'm a scholar. I've spent my whole life hoping the next day will teach me something new. To me, adventuring is just another sort of lesson... and like the sorts of lessons I'm used to, they mean more when I have someone sharing in the experience with me.~
= ~Because often, the things I learn aren't always kind. Ever since I left Lantan, I've been aware of just how sheltered I've been, only able to believe the best of others and the world. and it's led me to a lot of pain, past and present, both on my body and in my heart.~
= ~I don't know if I could be strong enough to manage it if I were alone. That's why I'm grateful to you. And... a little sorry for having to depend on you.~
END
  ++ ~You don't need to feel that way. Looking out for each other is what companions do.~ + FRIEND-1-9
  ++ ~I'm depending on you as well, Aura. It goes both ways.~ + FRIEND-1-10
  ++ ~It'll get easier. Every bit of struggle makes you stronger eventually. Trust me on that.~ + FRIEND-1-11
  ++ ~That's enough. I'm not here to hold your emotional baggage, so tough it up.~ + FRIEND-1-8

CHAIN BC0AURA2 FRIEND-1-9
~You mean what friends do. That's how I see you anyway, <CHARNAME>... and you can think of me as the same.~
EXTERN BC0AURA2 FRIEND-1-10

CHAIN BC0AURA2 FRIEND-1-10
~I just hope you'll come to depend on me a little when you need it too. Even though I might just be overestimating myself, I'd still like to help you with what you can't accomplish alone.~
= ~That's not to say I'm expecting nothing good in our near future, either! I'm sure we'll experience plenty of the good, as well. I'm sure one of these days, we'll be able to look back on what we've done with a smile.~
EXIT

CHAIN BC0AURA2 FRIEND-1-11
~I know. That's something I've taught myself, as well. I guess I should expect it, given what you've been through.~
EXTERN BC0AURA2 FRIEND-1-10

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",4)~ THEN BC0AURA2 FRIEND-2
~So... it's a whole new adventure for you, isn't it? After all the chaos in the Sword Coast, here you are with another goal to fight for.~ [C0BLANK]
= ~It must be a hard life. I know some people are made for it, and they wouldn't swap it for any other, but... there must be things you'd rather you didn't have to deal with, isn't there, <CHARNAME>?~
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~Like the torture, and losing people I care about? Yeah, I could do with less of that.~ + FRIEND-2-1
  ++ ~Of course I do. Everyone does. But we live with what we get, and try to make the best of it.~ + FRIEND-2-2
  ++ ~Not really. Things happen that I don't expect, but adventuring is still my choice, first and foremost.~ + FRIEND-2-3
  ++ ~I really don't have time to talk about this right now, Aura.~ + FRIEND-2-0

CHAIN BC0AURA2 FRIEND-2-0
~Alright. If you ever have anything you need off your mind, though, you know who to ask.~
EXIT

CHAIN BC0AURA2 FRIEND-2-1
~That's right... I didn't even stop to think about exactly how badly you've had it. Stupid me. I'm sorry, <CHARNAME>...~
EXTERN BC0AURA2 FRIEND-2-4

CHAIN BC0AURA2 FRIEND-2-2
~Or make it better! That's the creed of the Lantanna, always trying to find a way. It doesn't just apply to inventing.~
EXTERN BC0AURA2 FRIEND-2-4

CHAIN BC0AURA2 FRIEND-2-3
~Just the life of an adventurer, huh... I have to admire you for being strong enough to live with it.~
EXTERN BC0AURA2 FRIEND-2-4

CHAIN BC0AURA2 FRIEND-2-4
~I've been reading about the Bhaalspawn, you know. Ever since I joined, I've been trying to find something useful, something that could be helpful to you.~
= ~There isn't much. The only forewarning that we ever got were the prophecies by Alaundo. Which... well, you lived in Candlekeep. I'm sure you know them better than I do.~
= ~But still... I can't imagine it's easy to have a life that will always get entangled in conflict. "Chaos will be sown in your passage"... what a terrible thought.~
= ~It's just a shame that there's nothing that's ever been written about how this will all end. What do you think, <CHARNAME>? Where do you see all this leading up to?~
END
  ++ ~I'm not sure. I just hope the answer will come with time.~ + FRIEND-2-5
  ++ ~I can't think about that right now. Right now, my immediate problems are more important.~ + FRIEND-2-5
  ++ ~If all of this makes me stronger, perhaps I'll finally have a chance to take control of my own fate.~ + FRIEND-2-6
  ++ ~More death, destruction, and suffering. Whether I like it or not.~ + FRIEND-2-7
  ++ ~As long as I get more power, I don't care how things end up.~ + FRIEND-2-8

CHAIN BC0AURA2 FRIEND-2-5
~Point taken. No sense worrying about it right now, is there? If you're meant for something, it'll come to you eventually. The best you can do is prepare.~
EXTERN BC0AURA2 FRIEND-2-9

CHAIN BC0AURA2 FRIEND-2-6
~When you say things like that, you remind me a little bit of some of my tutors. They've dedicated their lives to knowledge, believing that once they've learned more about the world, they'll be able to change it in ways they want... it's inspiring, but also scary how obsessive they can become.~
EXTERN BC0AURA2 FRIEND-2-8

CHAIN BC0AURA2 FRIEND-2-7
~Being the child of murder incarnate must be a terrible thing. Even if it's not what you want, it's still like a heavy burden that you can't shake off.~
EXTERN BC0AURA2 FRIEND-2-9

CHAIN BC0AURA2 FRIEND-2-8
~I just hope you won't lose yourself in the process, <CHARNAME>. I respect you, and I wouldn't be here if I didn't, but it's a hard think, looking at yourself... sometimes you need a little help.~
EXTERN BC0AURA2 FRIEND-2-10

CHAIN BC0AURA2 FRIEND-2-9
~Sometimes I wonder how many others like you have thought the same thing. Not all of them could've been like your brother... Sarevok. There must be others who never wanted the weight that was put on them.~
EXTERN BC0AURA2 FRIEND-2-10

CHAIN BC0AURA2 FRIEND-2-10
~The more I think about it, the more I feel like following you was the right choice. Everything I've learned and done in my life has been to try to help people. It's what I love to do, and whenever I think I've made progress, I know I've grown as well.~
= ~So, um, just keep in mind, if you ever run into something you feel you can't handle, I'm right here. I may be small and not much good and shouldering your physical burdens, but I've still got a lot to offer. Whether it's intellecutal or emotional support, you've got it, alright?~
END
  ++ ~I've already been depending on you plenty, Aura.~ + FRIEND-2-11
  ++ ~You're too kind. It makes me worried for you, sometimes.~ + FRIEND-2-12
  ++ ~I just hope you aren't going to wear yourself out thinking about other people all the time.~ + FRIEND-2-12
  ++ ~Don't coddle me. I'm not that weak.~ + FRIEND-2-13

CHAIN BC0AURA2 FRIEND-2-11
~Well, there's always room for improvement, isn't there? I've got a ways to go myself, and doing things for other people is enough motivation for me.~
EXTERN BC0AURA2 FRIEND-2-14

CHAIN BC0AURA2 FRIEND-2-12
~Because I'll overwork myself, or because other people are going to take advantage of me? Hehe, don't worry. I've heard that plenty of times too. I've still got some progress to make, but I'm getting better at figuring people out.~
EXTERN BC0AURA2 FRIEND-2-14

CHAIN BC0AURA2 FRIEND-2-13
~I think even the stongest person could still benefit from some help now and again, you know. Besides, even if you didn't ask, it's what I like to do. So whether you like it or not, I'm here to back you up. Until you flat out tell me otherwise.~
EXIT

CHAIN BC0AURA2 FRIEND-2-14
~If it makes you feel better, you can assume I'm doing this for me as well. Because, like it or not, that's just the kind of person I am.~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",6)~ THEN BC0AURA2 FRIEND-3
~You know, there's all types of people who've decided to take up adventuring and trained themselves to fight. But I haven't seen many who use skills like mine.~ [C0BLANK]
= ~The knowledge of an artificer isn't any less effective as a warrior or arcanist's, or so I'd like to say. What do you think, <CHARNAME>? My tricks haven't been too much to manage, have they?~
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~It makes me wish there were more artificers out in the realms.~ + FRIEND-3-1
  ++ ~To be honest, it's all a bit too much for me to understand. I just trust you to know what you're doing.~ + FRIEND-3-2
  ++ ~I'm more comfortable relying on a simple weapon, but having your company is good enough.~ + FRIEND-3-3
  ++ ~Not now. If you want to be useful, you can save the talking for another time.~ + FRIEND-3-0

CHAIN BC0AURA2 FRIEND-3-0
~*sigh* Sure.~
EXIT

CHAIN BC0AURA2 FRIEND-3-1
~Oh, you wouldn't want that, believe me. If some of the knowledge we Lantanna have were turned to this sort of life... well, we certainly wouldn't be making people's lives better, that's for sure.~
EXTERN BC0AURA2 FRIEND-3-4

CHAIN BC0AURA2 FRIEND-3-2
~Hehe, you'll have no problems with that. When it comes to my gadgets and potions, you can trust me entirely. Mostly.~
= ~...You can trust me not to blow us all up out of nowhere. I may get a little too creative once in a while.~
EXTERN BC0AURA2 FRIEND-3-4

CHAIN BC0AURA2 FRIEND-3-3
~Well, as long as I can cheer you up once in a while, that's something. But I promise, I've been practicing my archery skills regularly as well! Even at the minimum, I can still hit a target once in a while.~
EXTERN BC0AURA2 FRIEND-3-4

CHAIN BC0AURA2 FRIEND-3-4
~I may just be overthinking it, but I get envious when I see what others are capable of, the people who've trained for this sort of life. Even though I've done what I can to adapt my skills for fighting, I still feel out of place.~
= ~It's a little reassuring to know that there's likely nobody around here who could do the same things I can, but at the same time, I can't help but wish sometimes I were better with magic, a better archer, or just... anything.~
END
  ++ ~I'm surprised. I didn't think you had a competitive streak in you.~ + FRIEND-3-5
  ++ ~Didn't you mention wanting to be a mage?~ + FRIEND-3-6
  ++ ~Just keep practicing. Any improvement is always better than none.~ + FRIEND-3-9
  ++ ~Nobody can be an expert on everything. Like you said, only you can do the things you're skilled at.~ + FRIEND-3-7
  ++ ~I see your point. Your contribution is definitely a lot more complicated—and expensive—than what others have to offer.~ + FRIEND-3-8

CHAIN BC0AURA2 FRIEND-3-5
~I wouldn't call it competitive, just... mmm, maybe I am. Just a tiny bit, but I do wish I could do better.~
EXTERN BC0AURA2 FRIEND-3-9

CHAIN BC0AURA2 FRIEND-3-6
~*sigh* If only that was an easier option for me back in Lantan. I've picked up a few things here and there, but I'll never master the craft like I could with artifice.~
EXTERN BC0AURA2 FRIEND-3-9

CHAIN BC0AURA2 FRIEND-3-7
~I know, I know. I shouldn't get caught up on all the things I haven't learned to do. I should be proud of what I'm good at.~
EXTERN BC0AURA2 FRIEND-3-9

CHAIN BC0AURA2 FRIEND-3-8
~Ouch. That really hurts, <CHARNAME>. I mean, I guess I can't argue with you. It's what happens when I focus my skills on something it was never meant for.~
EXTERN BC0AURA2 FRIEND-3-9

CHAIN BC0AURA2 FRIEND-3-9
~It's just... there was once a time when I never really had any sort of impetus as to why I did my work. I was able to take my time, wait for an idea to come to me, and put all my effort into bringing it to life.~
= ~Now, I spend my days preparing my gear for battle. Improving weapons, turning things into weapons, it's just... not what I expected to do. At the same time, I can't be upset at it. I've been able to develop things that would've likely taken me years to even think about.~
= ~It's a little scary. I don't like making weapons, but in the end, it turns out I'm pretty good at it. And all it took was having a little incentive. I'm glad I can help you, of course, but it's a direction I never saw myself taking.~
END
  ++ ~If it helps, I never expected to become like I am today either. Once, I was just a ward of a library.~ + FRIEND-3-10
  ++ ~That just means you're capable of adapting. It's not inherently a bad thing.~ + FRIEND-3-11
  ++ ~One day, neither of us will have to keep doing this anymore.~ + FRIEND-3-12
  ++ ~Maybe you just need to acknowledge this part of yourself.~ + FRIEND-3-13
  ++ ~As long as you stay useful, I'd prefer you keep doing what you're doing.~ + FRIEND-3-14

CHAIN BC0AURA2 FRIEND-3-10
~Heh, you know, I actually almost forgot about that. It's hard to imagine you at home surrounded by books and candles now. But then, I hardly recognize myself in the mirror on some days either.~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-11
~Well, like I've probably already said, I wouldn't have done it for myself alone. This is all for the sake of helping you... not that I'm demanding crazy amounts of gratitude, just that it's what helps me sleep at night.~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-12
~I just hope that day comes sooner rather than later. Until then, though... maybe I can still make some good out of it. I can at least try to help others as much as I can.~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-13
~I'm... working on it. It's a slow process. I still don't like using my knowledge to hurt others, but I still have to believe I'm doing the right thing. I wouldn't doubt myself. Or you.~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-14
~Mmm, I'm not complaining, not at all. As long as I can help, I don't have any problems with what I'm doing. And even if I did, I shouldn't be bothering you with them.~
EXTERN BC0AURA2 FRIEND-3-15

CHAIN BC0AURA2 FRIEND-3-15
~Thanks for letting me take up so much of your time, <CHARNAME>. The next time we talk, I'll have to show you something new I've made to make the journey easier. Maybe something with a little more flair? I'll have to think of some ideas...~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",8)~ THEN BC0AURA2 FRIEND-4
~There really aren't that many gnomes out here. Not only in Amn, but the Sword Coast, as well... no matter how far I travel, I just can't ever stop feeling out of place.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
= IF ~Race(Player1,GNOME)~ THEN ~To tell you the truth, I'm so glad that you're a gnome like me, <CHARNAME>. When there's so few of us that decide to travel, sticking together is a huge comfort.~
END
  + ~Race(Player1,GNOME)~ + ~To be honest, I'm not too sure of how to interact with other of our kin sometimes.~ + FRIEND-4-GNOME-1
  + ~Race(Player1,GNOME)~ + ~I know what you mean. There's no shortage of people who look down on us. Literally, and figuratively.~ + FRIEND-4-GNOME-2
  + ~InParty("JAN")~ + ~Don't forget about Jan. I thought you two got along.~ + FRIEND-4-JAN
  + ~!Race(Player1,GNOME)~ + ~It must be difficult to fit in. Being both a gnome, and a foreigner.~ + FRIEND-4-1
  ++ ~Is that why you decided to make your home with the Jansens?~ + FRIEND-4-2
  ++ ~Most people who've travelled for a long time will get that feeling.~ + FRIEND-4-3
  ++ ~Haven't you been around the world already, though? Even as far as Kozakura? Is it still so strange to you?~ + FRIEND-4-4
  ++ ~Please don't bother me with this right now.~ + FRIEND-4-0

CHAIN BC0AURA2 FRIEND-4-0
~Right... sorry.~
EXIT

CHAIN BC0AURA2 FRIEND-4-GNOME-1
~I guess that means there weren't many other of our people in Candlekeep. If there were any at all? I don't know how that must have been like... if that's the case, I'm even happier that we met.~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-GNOME-2
~I can't really blame them, I suppose. Most of our kind tend to live together in settlements that nobody else has ever seen. Most people I've met have never spoken with a Lantanna in their lives either.~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-JAN
~I'm fond of Jan, of course, but we know he can get a bit lost in his own head. Don't tell him I said it, but even I have to employ the 'smile and nod' tactics just to get through his antics sometimes.~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-1
~I can't really blame them, I suppose. Most of my kind tend to live together in settlements that nobody else has ever seen. Most people I've met have never spoken with a Lantanna in their lives either.~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-2
~The Jansens were happy to take it in when most people in Amn weren't so friendly towards me to begin with. And they've been kind to me, even though I'd still like to try some non-turnip centric recipes once in a while.~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-3
~It's true. Some get used to it, like my grandmother who was born to be an adventurer. Then there's someone like me... that always needs to have someone around me that I can rely on.~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-4
~It shouldn't be. But whenever I stay in one place for too long, it's hard for me to move on to the next. Kozakura was just the greatest example... if circumstances hadn't forced me to leave, I would've lived there for longer.~
EXTERN BC0AURA2 FRIEND-4-5

CHAIN BC0AURA2 FRIEND-4-5
~But I shouldn't complain. When I left Lantan, I promised myself that I'd use this as a chance to grow and walk on my own feet, and I've still got a ways to go. I just can't help but miss the days where I was surrounded with people who were like me and understood me.~
= ~Still, it's better than when I first got off my ship the first time all those years ago. I still had a group of fellow Lantanna with me at the time... but it struck me immediately how out of place I was.~
= ~Not only just from realizing my kind weren't so easily accepted everywhere, but even the way people spoke, the colors they wore... imagine how much I stood out at the time, with my strange clothes and pink hair. It made me want to just crawl back in the cabin and hide.~
= ~That was a long time ago, though. I think I can be a little happy with the progress I've made since then. But I think if you had seen me during those days, you might laugh at me.~
END
  ++ ~No, I'm sure I wouldn't.~ + FRIEND-4-6
  ++ ~I think the same would go for me if I travelled further away from home as well.~ + FRIEND-4-7
  ++ ~Let's not get too caught up in the past. We don't have time for that right now.~ + FRIEND-4-0

CHAIN BC0AURA2 FRIEND-4-6
~No, it's okay. Actually, it might've made my heart feel a bit less heavy at the time, if I heard someone laughing while looking back at all those cautious stares I got.~
EXTERN BC0AURA2 FRIEND-4-8

CHAIN BC0AURA2 FRIEND-4-7
~Well, I'm sure you'd handle it better than I did. You're braver than I am. And hey, even if that weren't the case, I could be there with you!~
EXTERN BC0AURA2 FRIEND-4-8

CHAIN BC0AURA2 FRIEND-4-8
~It helps knowing the fact that, no matter how different I am, chances are the people around me don't always think so differently from the people I know. We all live, breathe and dream of things... all it takes is finding something in common with someone else, and I can meet someone new, and learn something I didn't know.~
= ~After all, that's how I got this chance to take part in your epic adventure, right?~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",10)~ THEN BC0AURA2 FRIEND-5
~Hey, <CHARNAME>, I was wondering, just speaking hypothetically... would you ever consider travelling to Lantan to study at the academy? Perhaps for a season, or more?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~There's an idea. I'd be willing, if my life finds a chance to calm down some day.~ + FRIEND-5-1
  ++ ~I'm not sure. I feel like that'd be quite the endeavor.~ + FRIEND-5-2
  ++ ~What made you think I'd be interested?~ + FRIEND-5-3
  ++ ~Maybe one day, but we can talk about it when the time is right.~ + FRIEND-5-0

CHAIN BC0AURA2 FRIEND-5-0
~Well... okay. If you see it as an option though, I'd like to know. We might even make it in time for the annual Trailblazer Festival!~
EXIT

CHAIN BC0AURA2 FRIEND-5-1
~I think you'd have a wonderful time there. There probably won't be as many exciting adventures to be had, but there's still more than enough to see.~
EXTERN BC0AURA2 FRIEND-5-4

CHAIN BC0AURA2 FRIEND-5-2
~Oh, it's not that bad. Maybe I've made it all look complicated, but it's hard work first, talent second. And you're plenty capable when it comes to both.~
EXTERN BC0AURA2 FRIEND-5-4

CHAIN BC0AURA2 FRIEND-5-3
~Well... if you're not, then I can't do anything about that. I just had the idea...~
EXTERN BC0AURA2 FRIEND-5-4

CHAIN BC0AURA2 FRIEND-5-4
~The idea just crossed my mind a while ago. After I talked about how I felt travelling to unfamiliar places, I thought it'd be interesting to have a chance to guide you through my home for a change.~
= ~Lantan is still so unknown to most people outside of the homeland. I'd like for that to change one day, but it has to start with the right people.~
= ~Also, I'd just love to have the excuse to call myself your senior for a change. If you became a student of the Sambaran academy, I'd have the right to, wouldn't I?~
END
  ++ ~You cheeky brat.~ + FRIEND-5-5
  + ~!Dead("Imoen2")
     GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
     Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I don't think it'd suit me. Imoen might jump at the opportunity, though.~ + FRIEND-5-IMOEN-1
  + ~!Dead("Imoen2")
     !GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
     Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I don't think it'd suit me. Imoen might jump at the opportunity, though.~ + FRIEND-5-IMOEN-2
  + ~!Dead("Imoen2")
     GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
     !Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I don't think it'd suit me. Imoen might jump at the opportunity, though.~ + FRIEND-5-IMOEN-3
  + ~!Dead("Imoen2")
     !GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)
     !Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I don't think it'd suit me. Imoen might jump at the opportunity, though.~ + FRIEND-5-IMOEN-4
  ++ ~Let me think about it. I'll tell you when I've made up my mind.~ + FRIEND-5-6
  ++ ~Why not. I wouldn't mind the opportunity to something new.~ + FRIEND-5-7
  ++ ~I don't think I want to hear another lecture in my life. I got enough of that in Candlekeep.~ + FRIEND-5-8
  ++ ~I'm not interested. Let's just move on from this topic.~ + FRIEND-5-8

CHAIN BC0AURA2 FRIEND-5-5
~Hehe. I'm teasing, but I do think it'd make us closer friends if it became another common experience between us. Wouldn't you agree?~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-IMOEN-1
~Oh, I couldn't possibly forget about Imoen. I'm sure she would, yep. *sigh* We really need to get her back right away...~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-IMOEN-2
~Oh, I couldn't possibly forget about Imoen. I'm sure she would, yep. I need to ask her when I have the chance.~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-IMOEN-3
~You think so? I can't wait to meet her then. I just hope she's doing alright, wherever she is right now...~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-IMOEN-4
~You think so? I'll have to ask her when I get the chance. Somehow, I feel like she'd fit right in.~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-6
~I know it's too early to even think about these sorts of plans. I know I might be setting myself up for disappointment. But it'd mean a lot to me if you said yes, for more reasons than one.~
EXTERN BC0AURA2 FRIEND-5-9

CHAIN BC0AURA2 FRIEND-5-7
~Hehe, really? Then... maybe you might call me your senior now, at least once, just to get used to it? *giggle* I'm just kidding.~
EXTERN BC0AURA2 FRIEND-5-6

CHAIN BC0AURA2 FRIEND-5-8
~Ah... well, if you ever change your mind... it would really mean a lot to me. There's still plenty of time to think about it, you know.~
EXTERN BC0AURA2 FRIEND-5-9

CHAIN BC0AURA2 FRIEND-5-9
~Besides, if you agreed, then it's one more thing that I can look forward to. And that'll just give me more reason to work harder.~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",12)~ THEN BC0AURA2 FRIEND-6
~Look at these calluses on my hands. Even with me treating them every night, my skin's gone and turned like this anyway. *sigh*~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~I'm surprised you can even think about keeping them smooth.~ + FRIEND-6-1
  ++ ~You've been working too hard. Everyone needs to take some time to rest.~ + FRIEND-6-2
  ++ ~If you're wasting time taking care of your hands, you could be working on making sure we survive the next day.~ + FRIEND-6-3
  ++ ~Please, don't bother me with this right now.~ + FRIEND-6-0

CHAIN BC0AURA2 FRIEND-6-0
~My mistake, sorry. It's nothing important, anyway...~
EXIT

CHAIN BC0AURA2 FRIEND-6-1
~I know I shouldn't. There's more important things to worry about.~
EXTERN BC0AURA2 FRIEND-6-4

CHAIN BC0AURA2 FRIEND-6-2
~Maybe I have been overworking myself. You can even see these shadows under my eyes. I can't help it, though. What I do could make the difference for us.~
EXTERN BC0AURA2 FRIEND-6-4

CHAIN BC0AURA2 FRIEND-6-3
~I know, I'm sorry. I probably won't be focusing on it anymore. It's not like I've had much success anyway.~
EXTERN BC0AURA2 FRIEND-6-4

CHAIN BC0AURA2 FRIEND-6-4
~It's just a habit I picked up. My sister Luna used to take care of my hands for me. When I was younger, I'd often hurt my fingers trying to put things together, and she was always the one taking care of me once our eldest sister, Juno, joined the Oculus and became too busy.~
= ~I wouldn't care that much about if my skin's gone rough and calloused from all the toiling, it's just... I'm really missing them.~
END
  ++ ~Would you like to tell me about them? Maybe talking will help.~ + FRIEND-6-5
  ++ ~You seem to look up to your sisters a lot.~ + FRIEND-6-5
  ++ ~That's nice, but I really can't be bothered with talking right now.~ + FRIEND-6-0

CHAIN BC0AURA2 FRIEND-6-5
~My sisters... I have a lot of memories of them. My father and mother are both distinguished researchers of the Lantanese guilds. My mother's semi-retired since she had my baby siblings, but for the longest time it was just me, with Juno and Luna taking care of me.~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ ~Juno's brave, mature and strong-willed. If she has a responsibility, she'll fulfill it, no matter how long it takes, or how difficult it is. And her archery skills are without peer in Lantan. Do you remember Captain Corwin, <CHARNAME>? Juno might be even better than her.~
== BC0AURA2 IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ ~Juno's brave, mature and strong-willed. If she has a responsibility, she'll fulfill it, no matter how long it takes, or how difficult it is. And her archery skills are without peer in Lantan.~
== BC0AURA2 ~As for Luna, well... she's beautiful and proud. At first, she'd bully me when Juno wasn't watching. When Juno left for her training, I was worried it'd get worse... but instead, she changed, and tried to be like her as much as she could. She'd tell me to take care of myself, how I looked and felt, and be proud of it.~
== BC0AURA2 ~Everything good that you might see in me, <CHARNAME>, whether it's my knowledge, or my skills, or whatever bit of courage I have... I owe a lot of it to them. Juno is one of the strongest people I know, and Luna... even though she's often tough on me, I've never doubted that she loves me anyway.~
== BC0AURA2 ~It makes feel... a little guilty, sometimes. I know, my family expects me to be the next leader of the Glimmershine clan. Juno's a captain of Oculus, which serves the whole nation. Luna's a priestess of Gond now. But I can't help but feel like I took something that belongs to them.~
END
  ++ ~I don't think so. It sounds like they were doing their part to prepare you for the role.~ + FRIEND-6-6
  ++ ~It sounds like everyone in your family has hefty responsibilities. Everyone's doing their part for your home.~ + FRIEND-6-6
  ++ ~Do you want to take that position? It sounds like you're just doing it out of obligation.~ + FRIEND-6-7

CHAIN BC0AURA2 FRIEND-6-6
~I know. I don't really think anyone is resentful or thinks I don't deserve it. And I do want to do something for my family as well.~
EXTERN BC0AURA2 FRIEND-6-7

CHAIN BC0AURA2 FRIEND-6-7
~I've... just never really thought about what becoming the head of the clan would really mean.~
= ~All I thought was that if I worked hard enough, and met everyone's expectations, then I'd be ready. Then... I decided to see the world to try and improve myself. But I've wondered sometimes if I've just been selfish instead.~
END
  ++ ~You seem to have already dedicated a lot of your life to satisfy them. Is it so wrong to choose the life you want instead?~ + FRIEND-6-8
  ++ ~I think if what you're doing now is what you want—what you really want—then your family will accept it, if they really care about you.~ + FRIEND-6-8
  ++ ~Maybe you are. What we're doing right now is dangerous. I can't imagine your parents are happy that you're risking your life each day.~ + FRIEND-6-9

CHAIN BC0AURA2 FRIEND-6-8
~I guess that's true. It's still up to me to decide what I should be doing. And, at the end of the day, if I'm improving myself, then it means I can do even more for my family—no, for all of Lantan, once I go home.~
EXTERN BC0AURA2 FRIEND-6-10

CHAIN BC0AURA2 FRIEND-6-9
~No, I'm sure they're definitely not. I'm a little surprised they haven't sent Juno to come and drag me home by the ear already. Maybe... they trust me to decide what I should be doing on my own.~
EXTERN BC0AURA2 FRIEND-6-10

CHAIN BC0AURA2 FRIEND-6-10
~*sigh* You know, I think I'm falling back into more than one bad habit now. Lack of confidence and constant self-doubt. Thinking I'm not good enough. My tutors always used to drill it into my head that I need to get over that.~
= ~Thanks for listening, <CHARNAME>. It really did help to clear my head a bit. And I'm not thinking about these silly calluses anymore either, so that's another bonus.~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",14)~ THEN BC0AURA2 FRIEND-7
~<CHARNAME>, have you heard about my grandmother? Minerva Glimmershine?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~I seem to remember a story about her. Something about the North, in Icewind Dale.~ + FRIEND-7-1
  ++ ~All I know is that you told me she was an adventurer.~ + FRIEND-7-2
  ++ ~No, I don't think I've heard the name before. What kind of person was she?~ + FRIEND-7-3
  ++ ~There's no time to chat right now. Maybe later.~ + FRIEND-7-0

CHAIN BC0AURA2 FRIEND-7-0
~Oh. Alright... another time, then.~
EXIT

CHAIN BC0AURA2 FRIEND-7-1
~Haha. It wasn't just about her—she wrote the book on it, quite literally.~
EXTERN BC0AURA2 FRIEND-7-4

CHAIN BC0AURA2 FRIEND-7-2
~Yes, although she wasn't just an adventurer. She was arguably THE adventurer. She made it her life, and was obsessed with it. So obsessed she travelled all the way from Lantan to the North to fight devils, then wrote a book all about it.~
EXTERN BC0AURA2 FRIEND-7-4

CHAIN BC0AURA2 FRIEND-7-3
~She was—is?—an adventurer. Probably the most dedicated adventurer, so obsessed with traveling and exploring that she left Lantan to travel as far as the frozen North, where she saved the Ten Towns from devils and wrote a whole book about her experience.~
EXTERN BC0AURA2 FRIEND-7-4

CHAIN BC0AURA2 FRIEND-7-4
~The only reason it's not more well-known is that it's been published under at least a dozen names now, because she never bothered to give it a proper name of its own.~
= ~I wish I still had a copy of it with me... my grandmother wasn't that great of an author, but she wrote it so passionately that you could immediately believe she was right there in the action. Not to mention, it was the only record she ever shared with the world about any of her journeys.~
= ~The adventure must have been that important to her, for her to want to share her experiences with the world. After my father read it for the first time, he started to keep a collection of every version of the book he could find. He's never said it, but I know he misses her a lot.~
= ~To be honest, I didn't really understand it at first. But after travelling with you, <CHARNAME>, I think I'm starting to see why she loved this life so much. And I think, like us, the people she was with were a part of that feeling.~
END
  ++ ~So are you planning on writing your own novel of our adventures? It could be a fitting sequel.~ + FRIEND-7-5
  ++ ~It sounds like she was part of a journey that could be a match for ours.~ + FRIEND-7-6
  ++ ~That's nice, but we really should save this for another time.~ + FRIEND-7-0
  
CHAIN BC0AURA2 FRIEND-7-5
~Hey, how did you guess that? Am I really that easy to figure out?~
EXTERN BC0AURA2 FRIEND-7-6

CHAIN BC0AURA2 FRIEND-7-6
~I can't be sure my reasons for adventuring are like my grandmother's, but whether it's because I want to try and follow her footsteps, or just because I was inspired by her story, I've been keeping some notes of my own. It might not make for a legendary story, but I'm sure once this is all over, it'll make for a good keepsake.~
= ~Although I don't think I'm brave enough to write it all into a story like she did. Maybe I'll just keep it to myself... oh, but you're welcome to read it too, whenever it's ready.~
END
  + ~PartyHasItem("c0abook4")~ + ~I thought you'd already published a series of children's novels.~ + FRIEND-7-7
  ++ ~I wouldn't mind sharing the story of our adventure with the world.~ + FRIEND-7-8
  ++ ~Why not share it? There's even the chance your grandmother might read it, if she's still somewhere out there.~ + FRIEND-7-8
  ++ ~Sure, I'd like to see how you've recorded our adventures.~ + FRIEND-7-9
  ++ ~That's probably for the best. There's a lot in this story I'd rather others not know.~ + FRIEND-7-10

CHAIN BC0AURA2 FRIEND-7-7
~That's... er, umm... I officially deny any knowledge of the true identity of "Aurelia White". Besides... those silly picture books were a long time ago. And it was my papa's idea.~
EXTERN BC0AURA2 FRIEND-7-11

CHAIN BC0AURA2 FRIEND-7-8
~You think I should? I'll have to think about it... way, waaaay in the future, that is. When I have even a hint of where things will end up.~
EXTERN BC0AURA2 FRIEND-7-11

CHAIN BC0AURA2 FRIEND-7-9
~I'll have to remember to show you. That is, whenever this journey looks like it's approaching whatever may seem like an ending.~
EXTERN BC0AURA2 FRIEND-7-11

CHAIN BC0AURA2 FRIEND-7-10
~There'll always be the stories best left untold, huh? Sometimes I wonder just what my grandmother left out on purpose as well...~
EXTERN BC0AURA2 FRIEND-7-11

CHAIN BC0AURA2 FRIEND-7-11
~I'll have to keep an eye out for that book for you while we're travelling, <CHARNAME>. I know you'll like it... believe it or not, sometimes I think the hero of that story is a lot like you.~
= ~You know, now that I think of it, maybe it wasn't an accident that we met after all. This might just be the next chapter in an ongoing story. Who knows?~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",16)~ THEN BC0AURA2 FRIEND-8
~Carbon powder, mercury, sulfur... oh, running low on sulfur. I'll have to do something about that when I get a chance...~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
= ~...<CHARNAME>, can you remind me to get some pyrite the next time we have a chance to resupply?~
END
  ++ ~Sure.~ + FRIEND-8-1
  ++ ~If I happen to remember, I suppose.~ + FRIEND-8-2
  ++ ~Fine, but don't bother me right now.~ + FRIEND-8-0

CHAIN BC0AURA2 FRIEND-8-0
~Okay, okay. I'll just keep a note for what I need in the back of my journal, then. Cranky.~
EXIT

CHAIN BC0AURA2 FRIEND-8-1
~Thanks. Oh, maybe I should remember to make some more emerald oil as well... that'll come in useful.~
EXTERN BC0AURA2 FRIEND-8-2

CHAIN BC0AURA2 FRIEND-8-2
~It can be really difficult as an artificer to get everything they need on the road, you know. Often I'll have to synthesize the raw materials I need myself, using what I can get my hands on.~
= ~And I thought studying at the academy was hard. But I guess I took for granted just how many resources I had on demand at the time. Now I really have to put my knowledge to the test for every step of what I'm doing.~
END
  ++ ~It certainly doesn't sound easy.~ + FRIEND-8-3
  ++ ~I just hope you know what you're doing.~ + FRIEND-8-4
  + ~Class(Player1,MAGE_ALL)~ + ~Maybe it's not the same, but as a mage, I can understand a little. Learning magic and using it in practice are two very different things.~ + FRIEND-8-MAGE
  ++ ~Can you not bother me with this right now? I don't think I can help you much regardless.~ + FRIEND-8-0

CHAIN BC0AURA2 FRIEND-8-3
~I don't mind the challenge of working with limited tools, not at all. It's important for anyone in the realm of research and science to be challenged, and to keep our minds stimulated. Otherwise, we'd be making progress at a snail's pace.~
= ~The truth is, I never really thought I was *really* doing anything new until I started this journey. Most of what I'd done before was just by reusing the knowledge given to me by scholars and artificers in the past... I'd follow their instruction well, of course, but it never felt like I had accomplished much.~
= ~Now, though... well, you've seen the types of breakthroughs I've made. Even my Sunshooter's far more advanced than I would've ever imagined it. My tutors would be proud.~
END
  ++ ~It's quite impressive. Every day you seem to give our foes a new thing to be afraid of.~ + FRIEND-8-5
  ++ ~With your talent and dedication, I can imagine you've still got a lot more ahead of you to achieve.~ + FRIEND-8-6
  ++ ~As long as you keep impressing me on the battlefield with your abilities, I've got nothing to complain about.~ + FRIEND-8-7

CHAIN BC0AURA2 FRIEND-8-4
~Of course I know! Well, I at least *know* when I'm doing something I've done before. But I still have to experiment with new things once in a while.~
EXTERN BC0AURA2 FRIEND-8-3

CHAIN BC0AURA2 FRIEND-8-MAGE
~Yes, exactly! Even though we Lantanna draw a line between invention and magic, there's so much the two still have in common. And why it's so easy for the two to come together, as well.~
EXTERN BC0AURA2 FRIEND-8-3

CHAIN BC0AURA2 FRIEND-8-5
~Hehe. I just wish maybe one day, they'd be afraid enough to just leave us alone. Until then, though... I'll just have to keep trying.~
EXTERN BC0AURA2 FRIEND-8-8

CHAIN BC0AURA2 FRIEND-8-6
~That goes without saying, really. Though talent doesn't really have anything to do with it. Every Lantanna aspires to learn and achieve more and more, and keep moving forwards.~
EXTERN BC0AURA2 FRIEND-8-8

CHAIN BC0AURA2 FRIEND-8-7
~You know I'm doing most of this for you, right? If I could help it, I'd rather not use any of these tools in battle at all... not that I'm blaming you, <CHARNAME>. I chose this for a reason.~
EXTERN BC0AURA2 FRIEND-8-8

CHAIN BC0AURA2 FRIEND-8-8
~*sigh* Still, I'd like to see a day where I could direct my focus on other pursuits... ones that could benefit people as a whole. Inventions to help with travel, communication, living... wouldn't that be better?~
END
  ++ ~You still have plenty of time ahead of you. You're still young.~ + FRIEND-8-9
  ++ ~I'm sorry. You could be working for the future, but you're here helping me instead.~ + FRIEND-8-10
  ++ ~It's good to have such goals, but maybe you should take your time and consider what it would mean for the realms.~ + FRIEND-8-11
  ++ ~That's your own problem to figure out, not mine.~ + FRIEND-8-12

CHAIN BC0AURA2 FRIEND-8-9
~I know, I know. It's silly to think as though I'm running out of time when I've still got plenty of years ahead of me. Not like... the humans among the Lantanna.~
EXTERN BC0AURA2 FRIEND-8-13

CHAIN BC0AURA2 FRIEND-8-10
~No, please don't say that, <CHARNAME>. No matter what I decide to do, it'll be to help those that need it, and it doesn't matter if it's one person or a thousand. As long as I can help, I won't feel my skills are being wasted.~
EXTERN BC0AURA2 FRIEND-8-13

CHAIN BC0AURA2 FRIEND-8-11
~That's something I've had to think about, too. As much as I wished everyone in this world were of one mind to help improve the realms... I know that's not true.~
EXTERN BC0AURA2 FRIEND-8-13

CHAIN BC0AURA2 FRIEND-8-12
~Right... sorry. It's not your responsibility to worry about this. I won't complain about it to you again.~
EXIT

CHAIN BC0AURA2 FRIEND-8-13
~I don't think I've ever told you this, but... during my time at the academy, the tutor who left the greatest impression of me was a human. The gnomes and humans among the Lantanna have always coexisted, but because our lifespans are so different, we've still developed our own ways of approaching and pursuing knowledge.~
= ~Most human scholars and artificers know that they may never live to see the long-term outcome of their work, not like we gnomes can. Some view this difference with envy, with resentment... but many just choose to work as hard as they can, and leave it up to faith that what they've done will mean something long after they're gone.~
= ~My tutor inspired me with their approach to life. They weren't originally from Lantan... I learned that they were born in a different nation, one where their knowledge, talent, even their very identity wasn't understood by their fellows. And even though they eventually rose to a respected position as a professor of the Sambaran academy though hard work and study, they only had a short time to use their abilities to change the world. They... passed away, not long after I graduated.~
= ~If I really consider it, I never really knew them for that long. But I still remember talking to them like it was yesterday. During that time, I learned many of the principles of physical science and the natural elements that are the core of what I do today. And they told me once, that if they had given up on the world and never found a reason to keep working to improve it, then everything they had already achieved would have gone to waste. They knew their own future was short compared to mine. So they passed their dreams, their own future, onto me and those like me who were gifted with their knowledge.~
= ~Ever since then, I've done my best not to let them down. One day, I'll work towards making this world a better one for everyone. Until then, I'll keep learning, and growing using this time I'm blessed with, until I'm ready to decide how I'll make that happen.~
END
  ++ ~You had an excellent mentor.~ + FRIEND-8-14
  ++ ~I hope what you learn here will help you with that.~ + FRIEND-8-15
  ++ ~You're aiming for a difficult goal. It may be easier just to live for yourself.~ + FRIEND-8-16

CHAIN BC0AURA2 FRIEND-8-14
~I just wonder if, wherever their soul is resting, they're watching over me right now. I might just be a little spoiled, but I'd like to hear them praise me one more time.~
EXTERN BC0AURA2 FRIEND-8-17

CHAIN BC0AURA2 FRIEND-8-15
~There's always something I can learn from the challenges being placed in front of us. Besides knowledge, I can learn bravery, and responsibility... and when difficult decisions have to be made.~
EXTERN BC0AURA2 FRIEND-8-17

CHAIN BC0AURA2 FRIEND-8-16
~*sigh* I wish I could as well. But I'm not the only one who wants a life like that. I'd rather see a world where more people have the right to make selfish choices once in a while.~
EXTERN BC0AURA2 FRIEND-8-17

CHAIN BC0AURA2 FRIEND-8-17
~Thanks for your time, <CHARNAME>. It was nice to think about my old lessons once in a while... since I can't ever afford to forget them.~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",18)~ THEN BC0AURA2 FRIEND-9
~The more I travel, the more I've been thinking... if I, or... well, any Lantanna, could meet and come to know more people like you, maybe Lantan would look much different than it is now.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~I think the same could be said for the reverse.~ + FRIEND-9-1
  ++ ~Maybe your people need to be more like you, with a sense of wonder about the world outside.~ + FRIEND-9-2
  ++ ~What makes you think it would be so different?~ + FRIEND-9-3
  ++ ~Perhaps, but there's no guarantee it would be better.~ + FRIEND-9-4
  ++ ~Now's not the time to talk about this, Aura.~ + FRIEND-9-0

CHAIN BC0AURA2 FRIEND-9-0
~*sigh* Way to kill the mood... sorry I said anything.~
EXIT

CHAIN BC0AURA2 FRIEND-9-1
~Hehe, you're flattering me, <CHARNAME>. We both know I don't have nearly the sort of influence that you do. That's why you're the leader, and not me.~
EXTERN BC0AURA2 FRIEND-9-5

CHAIN BC0AURA2 FRIEND-9-2
~I'm inclined to agree, knowing all that I do now... well, I don't think the Lantanna should aspire to be *too* much like me... I have to keep my unique charm, after all, hehe.~
EXTERN BC0AURA2 FRIEND-9-5

CHAIN BC0AURA2 FRIEND-9-3
~Well, just look at me now, <CHARNAME>. Don't you think I'm different now? Stronger, more confident? Cuter, perhaps? Uh, maybe I'm getting ahead of myself with that last one.~
EXTERN BC0AURA2 FRIEND-9-5

CHAIN BC0AURA2 FRIEND-9-4
~Maybe not, but the longer I travel with you, the more I think I need to change my thinking process around a bit. Maybe we need to take risks for some meaningful change.~
EXTERN BC0AURA2 FRIEND-9-5

CHAIN BC0AURA2 FRIEND-9-5
~I was just thinking about my home again. There's always been a clear line drawn between where our nation stands compared to the rest of the world... and for most of us Lantanna, we've been fine with it all these generations. But now...~
= ~Look at all the good we've done together, <CHARNAME>. In such a short time, I've been able to do so much just by being a little adventurous. Now imagine more young Lantanna like myself taking the same path. How much could we become then?~
END
  ++ ~I'd imagine it would mean a lot of progress.~ + FRIEND-9-6
  ++ ~There's no guarantee others could come as far as you have.~ + FRIEND-9-7
  ++ ~Don't you think you're thinking too far ahead? You haven't even returned home yet.~ + FRIEND-9-8

CHAIN BC0AURA2 FRIEND-9-6
~I hope it would. I'm not entirely confident, not yet... but I think my people should still make more of an effort, while the time is still right.~
EXTERN BC0AURA2 FRIEND-9-9

CHAIN BC0AURA2 FRIEND-9-7
~No, I guess you have a point. I've been lucky, after all. I've had a good leader.~
EXTERN BC0AURA2 FRIEND-9-9

CHAIN BC0AURA2 FRIEND-9-8
~That's a good point. I haven't even proved to myself what I can accomplish for my home as I am now. Maybe I've still a ways to go yet.~
EXTERN BC0AURA2 FRIEND-9-9

CHAIN BC0AURA2 FRIEND-9-9
~I just don't want to see our people hiding away for the rest of our lives. As we are now, we could all get swallowed up by the Trackless Sea and I'm not sure anyone else would be the wiser.~
= ~The realms are an unpredictable place, and who knows what will happen during the next Time of Troubles... or worse. If another massive shift happens in the world, I want our people to be ready to put in our contribution... and be accepted for it as well.~
= ~What do you think, <CHARNAME>? Am I being too idealistic? If you want to tell me I still need to grow up some more, I'm ready to listen. I'd believe it if it were coming from you.~
END
  ++ ~I think it's a good goal to strive for. Now may not be the time, but you can still try to change things.~ + FRIEND-9-10
  ++ ~You're being a bit optimistic. If another Time of Troubles happens, odds are the realms are just going to be at odds with each other again.~ + FRIEND-9-11
  ++ ~I'm the wrong person to ask about this. All I've cared about is keeping my own life in one piece.~ + FRIEND-9-12

CHAIN BC0AURA2 FRIEND-9-10
~Mmm, I know there's probably only so much I can, and should do... as one person, within the time I have. But I'd just like to at least plant the seed to inspire a few like myself.~
EXTERN BC0AURA2 FRIEND-9-13

CHAIN BC0AURA2 FRIEND-9-11
~*sigh* I wish I could disagree with you, but the world can be cruel like that. I've certainly learned my lesson about too quick to give away things I've made... after what happened back during my time in Kozakura, I don't want to repeat that again.~
EXTERN BC0AURA2 FRIEND-9-13

CHAIN BC0AURA2 FRIEND-9-12
~I actually think you make for a shining example as you are, <CHARNAME>. Your life may be a struggle, but you've made it this far with your trusted friends behind you. Isn't that a sign of how success should be achieved?~
EXTERN BC0AURA2 FRIEND-9-13

CHAIN BC0AURA2 FRIEND-9-13
~Don't pay too much attention to everything I say. I'm prone to daydreaming about 'what-ifs' sometimes. I just wanted to get your advice again, since it hasn't failed me yet.~
EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipTalk","GLOBAL",20)~ THEN BC0AURA2 FRIEND-10
~Hehe, <CHARNAME>, come over here! I've got something great to show you!~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2FriendshipTalk","GLOBAL",1)~
END
  ++ ~What is it? You seem really excited.~ + FRIEND-10-1
  ++ ~I can see you scribbling. Show me what you have.~ + FRIEND-10-1
  ++ ~Not now, Aura.~ + FRIEND-10-0

CHAIN BC0AURA2 FRIEND-10-0
~Aw... alright, later then.~
EXIT

CHAIN BC0AURA2 FRIEND-10-1
~I've been working on it for a while. All of it, that is. This is a collections of drawings of what we've been through.~
= ~And here's the ink paintings I've done in Kara-Turan style. Doesn't it all look familiar? My skills as an artist aren't quite on par with building, but I've got a good memory, at least.~
END
  ++ ~Hang on, I don't recall us fighting a pair of tarrasques.~ + FRIEND-10-2
  ++ ~You sure about that? Some of these look a little embellished, and that's putting it lightly.~ + FRIEND-10-2
  + ~Dead("FIRKRA02") Global("C0AuraFoughtFirkraag","GLOBAL",1)~ + ~There's us taking on Firkraag. Things got quite toasty there.~ + FRIEND-10-FIRK
  + ~Dead("HLDEMI") Global("C0AuraFoughtKangaxx","GLOBAL",1)~ + ~I see you drew our fight against Kangaxx. That was a tough one.~ + FRIEND-10-KANG
  + ~Dead("Demogor2") Global("C0AuraFoughtDemogorgon","GLOBAL",1)~ + ~A painting of when we banished Demogorgon. We're lucky to have survived that.~ + FRIEND-10-DEMO
  + ~Dead("SHADRA01") Global("C0AuraFoughtThax","GLOBAL",1)~ + ~That's a dark painting, there. From when we defeated the shadow dragon?~ + FRIEND-10-THAX
  + ~Global("C0AuraBG2Quest2FireBattle","GLOBAL",10)~ + ~Looks like you painted our venture into the Plane of Fire. You even drew that pyromancer, Karihi.~ + FRIEND-10-FIRE
  + ~Global("C0AuraBG2Quest2IceEncounter","GLOBAL",7)~ + ~That chilly encounter with the hag, the yuki-onna and the orglashes left an impression on you, I see.~ + FRIEND-10-ICE
  + ~Global("C0AuraTOTDGCoin","GLOBAL",2)~ + ~You even drew the Deep Gardens... there's something that brings back memories.~ + FRIEND-10-TOTDG

CHAIN BC0AURA2 FRIEND-10-2
~Well... some of these might've just been from my imagination. Sometimes I have fantasies of all the adventures that never were. Call me just a little overimaginative sometimes.~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-FIRK
~My grandmother once took down an ice dragon, now we've taken down a fire dragon. If anything, it just seems fitting, doesn't it?~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-KANG
~Yep. I'm glad I didn't end up imprisoned for good... or you. But don't worry, if it even does happen to you, I'll be sure to find a scroll of Freedom and get you out no matter what!~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-DEMO
~There's a story nobody will believe even if we told them. But it really did happen, and we can be proud of it, right? Minus the part where he's free to wreak havoc down in the Abyss again, that is.~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-THAX
~I don't usually do these types of paintings, but this time I really felt inspired. And it's a good thing that we did something to free that forest from the evil that corrupted it.~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-FIRE
~Hehe, I always wondered what my grandmother's companions were like. Now that I know, I just had to make something to commemorate the occasion. Maybe I'll show it to her whenever I travel to Silverymoon.~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-ICE
~I still get shivers at night thinking about that. Although we made a lovely friend at the same time... maybe one day, we'll see if she's rebuilt the garden she spoke of.~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-TOTDG
~That adventure was so vivid... I still have to convince myself that we weren't dreaming. If we never see that place again, at least I'll have something to remember it by.~
EXTERN BC0AURA2 FRIEND-10-3

CHAIN BC0AURA2 FRIEND-10-3
~Let's not forget, there's still more to come. I just wanted to show you how much we've already got to look back upon already. The journey's been so fulfilling, and it's not even close to the end yet, is it?~
= ~Here's to a bright future for the both of us, <CHARNAME>, my dear friend. I'm not even embarrassed to say things like that anymore. I know I can trust you with everything, from my thoughts to my life.~
END
  ++ ~And I can do the same for you, Aura.~ + FRIEND-10-4
  ++ ~There's even greater memories in store for us. You just wait.~ + FRIEND-10-5
  ++ ~Thank you, but we should be moving now.~ + FRIEND-10-6

CHAIN BC0AURA2 FRIEND-10-4
~Hehe, for me that will be a big responsibility. But you know what? I'm starting to think I might almost be ready to take it on now.~
EXTERN BC0AURA2 FRIEND-10-5

CHAIN BC0AURA2 FRIEND-10-5
~Oh, and don't you worry. Look at how many blank pages there are yet to be filled. I'm not even close to finished yet.~
EXTERN BC0AURA2 FRIEND-10-6

CHAIN BC0AURA2 FRIEND-10-6
~Okay, while looking back fondly on what we've done is great, we really should be thinking about... moving on to the next, right?~
= ~I'm right behind you. Never ever doubt that, <CHARNAME>.~
EXIT

//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////ROMANCE////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",2)~ THEN BC0AURA2 ROM-1
~I don't think I could ever get used to these kinds of cities... everything feels so heavy and stifling. What about you, <CHARNAME>? What do you think about Athkatla?~ [C0BLANK]
END
  ++ ~It's different. I haven't seen many cities in my life.~ + ROM-1-1
  ++ ~Athkatla's a place full of corruption and inequality. I wouldn't be here if I had a choice.~ + ROM-1-2
  ++ ~I'm not too fond of it either. Too dirty and noisy.~ + ROM-1-2
  ++ ~This is my kind of place, actually.~ + ROM-1-2
  ++ ~Not right now, Aura. We can talk some other time.~ + ROM-1-0

CHAIN BC0AURA2 ROM-1-0
~Right. Sorry.~
EXIT

CHAIN BC0AURA2 ROM-1-1
~That's right... you grew up in Candlekeep, the great library. I kind of envy you, <CHARNAME>, although I'm not sure if I'd be comfortable staying in one place for most of my life.~
EXTERN BC0AURA2 ROM-1-4

CHAIN BC0AURA2 ROM-1-2
~Oh, I didn't mean to imply it's all terrible. It's a hard place to live, but there's still good people who call it home, and they must have had a reason.~
EXTERN BC0AURA2 ROM-1-4

CHAIN BC0AURA2 ROM-1-3
~Really? ...I suppose I can understand you. Even though I'm not used to it, there's people and places I'm fond of too.~
EXTERN BC0AURA2 ROM-1-4

CHAIN BC0AURA2 ROM-1-4
~It's strange... even though there's almost nothing here that's like the place I call home in Lantan, and the people here live such hard lives, something about it still makes me feel homesick.~
= ~I don't know if it's the differences that make me long for something familiar, or if there's still some form of kinship despite all the dirt and roughness, even though I can't identify it.~
= ~Am I overthinking it, <CHARNAME>? I know I probably have a bad habit of it, but I was wondering if you felt the same way.~
END
  ++ ~I haven't thought as deeply into it, but you might be on to something. Just being here makes me think about home.~ + ROM-1-5
  ++ ~You might just have been away for too long. That would make anyone homesick.~ + ROM-1-6
  ++ ~I can't say I do. I don't have that many fond memories of my Candlekeep.~ + ROM-1-7
  ++ ~To be honest, I think you're just talking nonsense.~ + ROM-1-8

CHAIN BC0AURA2 ROM-1-5
~You know what I mean, then? That makes me happy, knowing I'm not the only one. I've been thinking about when I should visit home again, since it's been so long.~
EXTERN BC0AURA2 ROM-1-9

CHAIN BC0AURA2 ROM-1-6
~Teehee. Maybe you have a point. It hasn't crossed my mind, but it's been a good few years since I've seen Lantan.~
EXTERN BC0AURA2 ROM-1-9

CHAIN BC0AURA2 ROM-1-7
~O—oh, really...? I'm sorry. It must be terribly insensitive of me to talk about missing home in front of you, then. I just can't help it. I've been missing Lantan a lot lately.~
EXTERN BC0AURA2 ROM-1-9

CHAIN BC0AURA2 ROM-1-8
~...Maybe. I'm sorry for wasting your time.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-1-9
~In the wider perspective, a few years isn't too long for a gnome, but my homeland can change quickly. I wonder if I'll even recognize it when I finally return.~
= ~Would you like to come and see my homeland one day, <CHARNAME>? It's nothing like here, or Baldur's Gate... I promise it won't be something you can forget.~
END
  ++ ~I'd like to have a chance, after my troubles are dealt with. I'm sure it'll an enlightening experience.~ + ROM-1-10
  ++ ~Maybe one day. There's so many places I'd like to see. What about somewhere in the East, like Kara-Tur? I know you've been there too.~ + ROM-1-11
  ++ ~No, thank you. I'm not interested in your home at all.~ + ROM-1-12
  ++ ~We can think about travelling when we don't have more important things to concern ourselves with.~ + ROM-1-13

CHAIN BC0AURA2 ROM-1-10
~Hehe, you're even sounding a little like someone from home! I'm sure you'll really like it there. We'd have to start from Anchoril, without a doubt. I'll show you where I grew up!~
EXTERN BC0AURA2 ROM-1-14

CHAIN BC0AURA2 ROM-1-11
~Is that what you'd be interested in, <CHARNAME>? Well, I can't call myself an expert, but if you really want to go, I'd love to travel back there with you. There's places I'd like to see again too.~
EXTERN BC0AURA2 ROM-1-14

CHAIN BC0AURA2 ROM-1-12
~Oh. Sorry... I didn't realize you were so disinterested. That's my mistake, <CHARNAME>.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-1-13
~Right, of course. We still have our quest to think about. No time to get distracted yet.~
EXIT

CHAIN BC0AURA2 ROM-1-14
~Thank you for sparing the time to listen to me nattering on and on. It feels nice to have a chance to share my feelings with someone. And even more so to have something to look forward to!~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",4)~ THEN BC0AURA2 ROM-2
~Oh! <CHARNAME>, mind your head!~ [C0BLANK]
END
  ++ ~What—?~ EXTERN C0MUFFY2 ROM-2-1
  ++ ~Ow!~ EXTERN C0MUFFY2 ROM-2-1

CHAIN C0MUFFY2 ROM-2-1
~*squeak!*~
== BC0AURA2 ~I'm sorry, <CHARNAME>. He gets easily startled, and when he does, he'll leap off my shoulder and... he didn't hurt your head, did he?~
END
  ++ ~No, I'm fine.~ EXTERN BC0AURA2 ROM-2-2
  ++ ~Argh... he might have left a mark.~ EXTERN BC0AURA2 ROM-2-3
  ++ ~Can you take him back now?~ EXTERN BC0AURA2 ROM-2-4

CHAIN BC0AURA2 ROM-2-2
~That's good... he always seems to forget he's not a real squirrel, and it hurts when he crashes into people.~
EXTERN BC0AURA2 ROM-2-4

CHAIN BC0AURA2 ROM-2-3
~Ah, I've got salve for soothing pain if you need it! It should prevent leaving a bruise too, just in case...~
EXTERN BC0AURA2 ROM-2-4

CHAIN BC0AURA2 ROM-2-4
~I—I can put him back in my pack, <CHARNAME>, you'll just have to pull him off your head first... oh, no. He's really holding on tight, isn't he? Muffy! Hey!~
== BC0AURA2 ~Um... tickle his left hind paw, that'll loosen his grip for sure. There we go... now just hold him under his front legs, and he won't struggle that much...~
== C0MUFFY2 ~*squeak*~
== BC0AURA2 ~...or at all. Huh, Muffy likes you, <CHARNAME>. That's rare. He's usually not happy when anyone else touches him.~
END
  ++ ~Maybe he trusts me because we get along so well.~ + ROM-2-5
  ++ ~He's rather cute, now that I have a closer look.~ + ROM-2-6
  ++ ~Just take the mad creature. I hope he didn't ruin my hair.~ + ROM-2-7

CHAIN BC0AURA2 ROM-2-5
~Hey... you're probably right! That would make the most sense.~
EXTERN BC0AURA2 ROM-2-8

CHAIN BC0AURA2 ROM-2-6
~Hehe, he is, isn't he? Most people are put off by the fact he's not soft and furry, or because his tummy opens up, but he's really quite sweet and cuddly.~
EXTERN BC0AURA2 ROM-2-8

CHAIN BC0AURA2 ROM-2-7
~R—right... do you need a comb, <CHARNAME>? Because I've got one that'll fix things up quick and easy.~
DO ~ActionOverride("C0MUFFY2",DestroySelf())~ EXIT

CHAIN BC0AURA2 ROM-2-8
~You can pet him a little if you want! It'll make him happy and like you even more.~
END
  ++ ~Okay! Who's a good boy...~ + ROM-2-9
  ++ ~Alright...~ + ROM-2-9
  ++ ~Maybe another time. I'll let you take him back.~ + ROM-2-10
  ++ ~No. I'm going to make sure my hair is still intact.~ + ROM-2-7

CHAIN BC0AURA2 ROM-2-9
~Teehee. I'm almost jealous. It's been a long time since he's been this affectionate with anyone else...~
= ~Oh, he's stopped moving. Don't worry, <CHARNAME>, that just means he's asleep. It looks odd because he doesn't need to breathe, but it's normal.~
EXTERN BC0AURA2 ROM-2-10

CHAIN BC0AURA2 ROM-2-10
~I'll take him off your hands now. Here, good Muffy...~
DO ~ActionOverride("C0MUFFY2",DestroySelf())~ EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",6)~ THEN BC0AURA2 ROM-3
~I was wondering... how much do you know about Lantan, <CHARNAME>?~ [C0BLANK]
END
  ++ ~Not much beyond what you've told me.~ + ROM-3-1
  + ~!CheckStatGT(Player1,25,LORE)~ + ~It's a place where all sorts of unique inventions come from, isn't it?~ + ROM-3-2
  + ~CheckStatGT(Player1,25,LORE)~ + ~I've read some things while in Candlekeep. Your nation is known for its master artificers and devout followers of Gond.~ + ROM-3-2
  ++ ~Is there something that you'd like me to know about?~ + ROM-3-1
  ++ ~We don't have time to talk about irrelevant details, Aura.~ + ROM-3-0

CHAIN BC0AURA2 ROM-3-0
~Oh... of course. If you wanted to ask me anything, though, let me know.~
EXIT

CHAIN BC0AURA2 ROM-3-1
~I think it's more interesting to hear what other people say about Lantan than what I can tell. Some of the things I've heard really make me want to giggle, but I don't want to be rude.~
= ~Have you heard the stories of machines that breathe fire and can soar across the skies like a real dragon? Those are just unbelievably silly! I mean, how could we even hide something like that in our tiny island, and what would we use it for? I only know one real dragon that...~
= ~*ahem* Anyways... I was just thinking that, during the rare times I hear outsiders mention the name of my home, it's always about how odd we are, or the kinds of dangerous weapons we use to protect ourselves.~
= ~It wasn't always like that. When I first went on my journey, most nations simply believed our people to be unusual, but harmless. With how much the world has changed, I know it's what the leaders of my home believe is the best way to keep us safe. I just... think it's a shame.~
END
  ++ ~I know how you feel. Candlekeep is the same in a way, gathering and storing knowledge of the world for itself.~ + ROM-3-3
  ++ ~It's understandable, though. Knowledge can be used to cause as much harm as it does good.~ + ROM-3-3
  ++ ~What was that about a real dragon?~ + ROM-3-4
  ++ ~Do you think that will ever change? You could share your own knowledge, since you're here.~ + ROM-3-5

CHAIN BC0AURA2 ROM-3-2
~Well, that is what we're famous for, but there's a lot more that's special about Lantan than what we make. If I told you everything that I could, you wouldn't believe most of it without seeing it.~
EXTERN BC0AURA2 ROM-3-1

CHAIN BC0AURA2 ROM-3-3
~It's not that I'm not aware of the dangers of sharing knowledge without restraint can be. Even within Lantan, we've made plenty of mistakes, and suffered greatly for it.~
= ~But I've travelled a lot... and I can't deny I was ignorant at first. I believed that with my knowledge, I'd be able to spread my understanding to people who didn't know anything. Hehe... that seems exceptionally arrogant now.~
= ~If anything, I think I've learned more than I've taught others at this point. I might have even learned more important things than all my years studying at the academy. And I wish more of my kinsmen could gain as much of the same.~
= ~Ever since I've started exploring the realms, I've believed that we should have shared our knowledge to help others, not isolate ourselves further. It seems impossible, but... would it be wrong?~
END
  ++ ~I don't think it's wrong, or even impossible. Change takes time, and people willing to make it.~ + ROM-3-6
  ++ ~That's up to you to decide, as it's your home. But I'm confident you'll figure out the right choice.~ + ROM-3-7
  ++ ~You just sound hopelessly naive. It might be better for your people that you're not with them.~ + ROM-3-8

CHAIN BC0AURA2 ROM-3-4
~Oh. Haven't I told you about my friend Ceri? It's a long story, but I'll be sure to share it with you next time.~
EXTERN BC0AURA2 ROM-3-3

CHAIN BC0AURA2 ROM-3-5
~I've definitely been tempted sometimes... I know I can't just share what I know with just anyone, but there's been times when I've felt I could've helped, or made somebody's life better for the long run.~
EXTERN BC0AURA2 ROM-3-3

CHAIN BC0AURA2 ROM-3-6
~I know. But I definitely still needed the reminder. There's more than just me looking to improve my home for the better. I just need to play my own part, and that's enough.~
EXTERN BC0AURA2 ROM-3-9

CHAIN BC0AURA2 ROM-3-7
~Thank you, <CHARNAME>. I wasn't hoping to demand an answer, so just having your confidence is more than enough.~
EXTERN BC0AURA2 ROM-3-9

CHAIN BC0AURA2 ROM-3-8
~I didn't expect you that kind of answer. Maybe you have a point... even though I hate to think it. I'm sorry I bothered you.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-3-9
~I've always been taught that the Lantanna should abide by reason and logic, but I've never been told what the logical way to support our home has been. But I believe that for our knowledge, we still have the same wishes for our home as anyone else does. I may be too idealistic, but... I'd prefer to be that way.~
= ~Ah, there I go letting everything out again. But talking with you helped to clear my mind a lot. I'm grateful for you, <CHARNAME>, and not just for this. There's so much that I feel comfortable talking about with you, more than anyone else.~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",8)~ THEN BC0AURA2 ROM-4
~Aah... what a bother... <CHARNAME>, could I ask you for a small favor?~ [C0BLANK]
END
  ++ ~What is it?~ + ROM-4-1
  ++ ~Sure.~ + ROM-4-1
  ++ ~Unless it's important, no.~ + ROM-4-0

CHAIN BC0AURA2 ROM-4-0
~My hair is important! Fine... whatever. Hmph!~
EXIT

CHAIN BC0AURA2 ROM-4-1
~I can't see properly for myself... could you check the top of my head if there are any bluish stains? I accidentally got some solvent on me last night, and I'm not sure if I got all of it off yet.~
END
  ++ ~You got solvent on you? That's not dangerous, is it?~ + ROM-4-2
  ++ ~Alright, let me have a closer look.~ + ROM-4-3
  ++ ~That's it? I thought you'd be asking me to help you with something more important.~ + ROM-4-0

CHAIN BC0AURA2 ROM-4-2
~No, no, it's fine. I wasn't experimenting with anything bad, it just stains easily and isn't nearly as easy to clean off.~
EXTERN BC0AURA2 ROM-4-3

CHAIN BC0AURA2 ROM-4-3
~So? Is there any left on me? Make sure to check all the way to the scalp!~
END
  ++ ~Yep. Little splotch of blue right there.~ + ROM-4-4
  ++ ~I'm not sure... let me move your hair a little to check.~ + ROM-4-5

CHAIN BC0AURA2 ROM-4-4
~Ugh, I knew it!~
= ~Here, <CHARNAME>, I have some cleaning solution, put some of it on a cloth and it'll rub off. But not too much, and do it gently!~
END
  ++ ~Is this distilled spirits? That doesn't seem safe.~ + ROM-4-6
  ++ ~Okay.~ + ROM-4-7

CHAIN BC0AURA2 ROM-4-5
~Oh—~
= ~Um... so do you see any now?~
END
  ++ ~I see a bit of blue on the roots.~ + ROM-4-4
  ++ ~You have very soft hair.~ + ROM-4-5a

CHAIN BC0AURA2 ROM-4-6
~Don't worry, it's diluted. It shouldn't be stronger than fifty percent. Uh, in case you don't know, that means... oh, it's fine, just use it! Hurry!~
EXTERN BC0AURA2 ROM-4-7

CHAIN BC0AURA2 ROM-4-5a
~I... you really think so? Hehe...~
EXTERN BC0AURA2 ROM-4-7

CHAIN BC0AURA2 ROM-4-7
~Thanks, <CHARNAME>. I don't know how embarrassed I would be if it turned out I was walking around not knowing my hair was like this.~
= ~It's been so long since I've had someone else take care of this sort of thing. This might sound silly, but it almost feels sort of nostalgic. I can't remember the last time it happened.~
END
  ++ ~I take it you wouldn't just let anyone take care of your hair.~ + ROM-4-8
  ++ ~Your hair is very soft. You must spend a lot of time caring for it.~ + ROM-4-9
  ++ ~It looks like your original colour is showing. Your hair's platinum blonde normally, isn't it?~ + ROM-4-10
  ++ ~I'm done. Your hair's all clean and stain-free.~ + ROM-4-15

CHAIN BC0AURA2 ROM-4-8
~No... not really. Only my mother, and my sisters... and my mentor Reika-san, back in Kozakura... and my old friends, Liro and Ceri.~
EXTERN BC0AURA2 ROM-4-9

CHAIN BC0AURA2 ROM-4-9
~I wouldn't really consider myself vain, mind you! Well, maybe a little. I probably picked it up from my older sister, Luna. She's not usually the nicest to me, but my fondest memories of her come from when she takes care of my looks.~
= ~To be honest, when I'm doing that sort of thing myself, I feel rather clueless... sometimes I feel like I must look awfully embarrassing next to you.~
END
  ++ ~I'll help you properly with your hair when we have time.~ + ROM-4-11
  ++ ~What do you mean by that exactly? Are you saying I'm pretty?~ + ROM-4-12
  ++ ~Don't say that. I like the way you look just fine.~ + ROM-4-13
  ++ ~Alright, I'm done. Your hair looks okay now.~ + ROM-4-15

CHAIN BC0AURA2 ROM-4-10
~Ahaha. I guess that means I need to dye again soon. It's a tradition for the Glimmershines to colour their hair at this point. I could tell you the story behind it another time if you like.~
EXTERN BC0AURA2 ROM-4-9

CHAIN BC0AURA2 ROM-4-11
~You mean it? I'd love that... I've always admired the way you look, so anything you do for me would be... um, that's to say, I'll look forward to it.~
EXTERN BC0AURA2 ROM-4-14

CHAIN BC0AURA2 ROM-4-12
~Eep! I meant that... um, oh... of course you are, but... AHHH! I'm going to stop talking before I say something that humiliates myself even more, okay?~
EXTERN BC0AURA2 ROM-4-14

CHAIN BC0AURA2 ROM-4-13
~Teehee. Even if you're being nice, since it's you, I still appreciate hearing that, so... oh, I feel myself flushing.~
EXTERN BC0AURA2 ROM-4-14

CHAIN BC0AURA2 ROM-4-14
~Er... don't we have something we should be doing? Anything at all?~
EXIT

CHAIN BC0AURA2 ROM-4-15
~Thanks, <CHARNAME>. I don't think I could've brought myself to ask anyone else to help with something so silly.~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",10)~ THEN BC0AURA2 ROM-5
~*yaaawn*~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2RomanceTalk","GLOBAL",1)~
= ~Shouldn't have stayed up so late... now I'm paying the price for... oops! Sorry, <CHARNAME>. I didn't mean to stumble into you.~
END
  ++ ~Careful. If I wasn't so close, you might've fallen over completely.~ + ROM-5-1
  ++ ~Were you working all night? You're going to ruin your body like this.~ + ROM-5-2
  ++ ~It's alright. Just watch where you're walking.~ + ROM-5-2

CHAIN BC0AURA2 ROM-5-1
~Hehe... it's a good thing I have you around to lean on, isn't it? Erm, not to imply I've been intentionally staying close to you, just that...~
EXTERN BC0AURA2 ROM-5-2

CHAIN BC0AURA2 ROM-5-2
~I'm sorry, I can't help it. There's just so much material to work through on my own. If I were with a group of my fellow Lantanna, I could have someone else to rely on, but on my own, there's just so much to do to make sure everything I have is in order.~
= ~*sigh* Some days, I've forgotten that I'm not travelling alongside people like me anymore. I've become so comfortable in your company, I don't even realize how hard I'm pushing myself to make up for it anymore.~
= ~Say, <CHARNAME>? I've been thinking... what do you think about working with me once in a while? You may not be a Lantanna, but I know how clever you are, and how determined you are... I'm sure I could accomplish so much more with your help.~
END
  ++ ~You want me to be your assistant? Are you sure I won't just get in your way?~ + ROM-5-3
  ++ ~If you think it'll help you, then sure. I don't mind learning a few things for your sake.~ + ROM-5-4
  ++ ~I don't think I'm suited for your sort of work, Aura.~ + ROM-5-3
  ++ ~I'm really not interested, Aura. Leave me alone.~ + ROM-5-5

CHAIN BC0AURA2 ROM-5-3
~Don't worry, I bet you'd pick up on things faster than you expect! It might be hard to imagine, but invention isn't quite as hard as you'd think. It's just different, but all it takes is some creativity and determination, and you have plenty of both.~
= ~Besides, even if you don't feel up for doing anything complicated... I'd just like to have you around me more often. It'd make me happy.~
END
  ++ ~If that's the case, then I wouldn't mind having the excuse to share your company too.~ + ROM-5-4
  ++ ~Now you're just sounding clingy. Don't waste my time.~ + ROM-5-5

CHAIN BC0AURA2 ROM-5-4
~Then, when I'm preparing my equipment while we rest next time, I'll remember to call you to join me. Let's work together on something safe, though. I wouldn't like a surprise explosion to ruin the mood...~
EXIT

CHAIN BC0AURA2 ROM-5-5
~Oh. I... I see... I just thought, with how we've been getting along lately... maybe I've got the wrong impression. I'm sorry, <CHARNAME>. I won't get in your way from now on.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",12)~ THEN BC0AURA2 ROM-6
~There's the last parts replaced... I'll have to get new ones when I have a chance.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2RomanceTalk","GLOBAL",13)~
= ~Can you find my tin of powdered graphite, <CHARNAME>? It's made of brass, and labelled at the bottom... yes, that's the one.~
= ~I'll just put some on these cloths and we can rub it on the joints of the automaton together, and then we'll have finished its maintenance.~
= ~It's pretty simple, isn't it? At this rate, it won't be long before you could completely control and take care of this on your own. Until then, though... it's nice to have someone to work together with after so long.~
END
  ++ ~This is surprisingly tiring. And you've been doing this by yourself every night?~ + ROM-6-1
  ++ ~It's simpler than I thought. Maybe we could try something a bit more difficult next time.~ + ROM-6-2
  ++ ~I'm exhausted. You can finish the rest on your own... I need to go and get some sleep.~ + ROM-6-0

CHAIN BC0AURA2 ROM-6-0
~Alright. I've probably made you work a little too hard as it is... you deserve some rest after being forced to do my job. Hehe.~
EXTERN BC0AURA2 ROM-6-14

CHAIN BC0AURA2 ROM-6-1
~Well, not the entire process... I might've added a few steps that I wouldn't need to do so regularly, just because you were helping me... just as an excuse to work longer...~
EXTERN BC0AURA2 ROM-6-3

CHAIN BC0AURA2 ROM-6-2
~You think so? You're even quicker to understand than I thought... I'll have to think of what could stump you, hehe. Nothing explosive, though, let me just make that clear.~
EXTERN BC0AURA2 ROM-6-3

CHAIN BC0AURA2 ROM-6-3
~You know, before I met you, this big fellow was all that kept me company for long periods of time, while I was on the road... don't call me crazy, but sometimes I'd talk to it, as though it's alive like Muffy, just so I wouldn't feel so lonely.~
= ~Ever since I joined, though, I haven't really done that as much. Sometimes I wonder, maybe it really does have a soul, and feels left out because I've been depending on you instead? What if...~
= ~Oh, no! What have I been doing, <CHARNAME>? Am I getting too attached? Maybe I should be apologizing for giving it the cold shoulder all this time.~
END
  ++ ~Don't be silly. It's just a construct. It can't think like we do.~ + ROM-6-4
  ++ ~If it can hear you, I'm sure it understands. You built it to protect you, after all.~ + ROM-6-5
  ++ ~You're right. Maybe you should apologize to it. Right now.~ + ROM-6-6
  ++ ~That's enough. I'm tired after all this, so I'm going to bed.~ + ROM-6-0

CHAIN BC0AURA2 ROM-6-4
~Hehe, yeah, you're right. I'm just projecting my feelings on the things I make, the things that are lasting... I should be more appreciative for the ones who can talk to me and listen to me being ridiculous instead.~
EXTERN BC0AURA2 ROM-6-7

CHAIN BC0AURA2 ROM-6-5
~I've never really thought about it too much... but now that I'm looking at it with you, I can't help but feel grateful. Even though I know it's just a bunch of moving parts, I appreciate that it's been with me all this time, keeping me safe.~
EXTERN BC0AURA2 ROM-6-7

CHAIN BC0AURA2 ROM-6-6
~Yes, you're right! Umm...~
= ~I'm so sorry for taking you for granted all this time! Ever since I put you together piece by piece, you've been taking so many blows and done so much to keep me safe, and I haven't said a word of thanks at all. I should be treating you with as much care as if you were my child! And... um...~
EXTERN BC0AURA2 ROM-6-7

CHAIN BC0AURA2 ROM-6-7
~...~
= ~Teehee. I guess this is a side of me I haven't shown you yet, <CHARNAME>. Yep, I'm not completely an open book either, just... mostly. I'm a little too sentimental for my own good sometimes.~
= ~Everything I've built to last, I can't help but grow attached to. I can't even throw away the first, most rudimentary projects I ever worked on... if you could see my room back at my family's home, the Helianthus House, you'd probably think it's just full of complete junk... but to me, each thing I've ever made has a dear memory attached to it.~
= ~That doesn't go just for inventions, either. It's the same with people... now that I've spent time with you, I'm having a hard time imagining what it'd be like if you weren't around anymore...~
= ~If it's not just me being presumptuous... what do you think, <CHARNAME>? Is there any chance you feel anything similar?~
END
  ++ ~I do. I think I'd be much less happy without you around, Aura.~ + ROM-6-8
  ++ ~I've learned to deal with losing people. It's not easy or pleasant... but I can't afford to get attached.~ + ROM-6-9
  ++ ~Don't tell me you're growing dependent on me. I can't stand people like that.~ + ROM-6-10
  ++ ~I'm too tired, Aura. We can talk about this some other time.~ + ROM-6-0

CHAIN BC0AURA2 ROM-6-8
~Would you really? Even though there's so many things I feel useless at ever since I decided to become an adventurer, if I can at least bring happiness... I can at least call that a success.~
EXTERN BC0AURA2 ROM-6-11

CHAIN BC0AURA2 ROM-6-9
~I understand. I don't blame you for feeling that way, not with everything you've been though. It's enough to be able to appreciate the time we can share together.~
EXTERN BC0AURA2 ROM-6-11

CHAIN BC0AURA2 ROM-6-10
~Oh.~
= ~Yes, that's... my fault. I can't expect you to feel things that you don't want to, <CHARNAME>. That's on me.~
= ~I'll... go to bed now. Sorry for putting you through all of this... you don't have to go through any of it again... not if you don't want to.~
= ~Good night.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

CHAIN BC0AURA2 ROM-6-11
~Anyways, I'm glad we were able to spend this time working together. Now we'll have one more thing to bring us closer, and there'll only be more in the future, if you like.~
= ~Speaking of which, if you're not tired yet, would you like to help me prepare my arrows as well? I can try and show you how the Sunshooter works as well, while we're at it.~
END
  ++ ~Absolutely. I've been curious about that thing.~ DO ~SetGlobal("C0AuraRomanceTalk6AllNighter","GLOBAL",1)~ + ROM-6-12
  ++ ~Sure, why not.~ DO ~SetGlobal("C0AuraRomanceTalk6AllNighter","GLOBAL",1)~ + ROM-6-12
  ++ ~Sorry, Aura. I really am tired. Maybe next time.~ + ROM-6-13

CHAIN BC0AURA2 ROM-6-12
~Great! Let's get started right away then. So, here's the arrow shaft, and you start by unscrewing the end here...~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()
Interact(Player1)~ EXIT

CHAIN BC0AURA2 ROM-6-13
~Sure, no problem. I'll keep it in mind for another evening, then.~
EXTERN BC0AURA2 ROM-6-14

CHAIN BC0AURA2 ROM-6-14
~Good night, <CHARNAME>. I hope you have good dreams.~
DO ~ClearAllActions()
StartCutSceneMode()
FadeToColor([0.0],0)
Wait(2)
RestPartyEx(0,0,FALSE)
FadeToColor([0.0],0)
Wait(3)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()
Interact(Player1)~ EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",14)
Global("C0AuraRomanceTalk6AllNighter","GLOBAL",1)~ THEN BC0AURA2 ROM-7-A
~...*yawn*~ [C0BLANK]
DO ~RealSetGlobalTimer("C0AuraBG2RomanceTimer","GLOBAL",3600)
        IncrementGlobal("C0AuraBG2RomanceTalk","GLOBAL",1)~
END
  ++ ~*yawn*~ + ROM-7-A-1
  ++ ~Looks like you didn't get enough sleep either...~ + ROM-7-A-1
  ++ ~Let's not get caught up working all night again, shall we?~ + ROM-7-A-1

CHAIN BC0AURA2 ROM-7-A-1
~I'm sorry, <CHARNAME>... I asked you to help me so that I wouldn't work all night on my own, but I had such a good time that I just got lost working even harder instead... and now you're just as sleep-deprived as I am.~
= ~Kind of failed at our original goal, didn't we?~
END
  ++ ~I don't mind. I had a lot of fun.~ + ROM-7-A-2
  ++ ~Yes. Let's work on that properly next time.~ + ROM-7-A-3
  ++ ~Never put me through that again.~ + ROM-7-A-4

CHAIN BC0AURA2 ROM-7-A-2
~Hehe, that's good... maybe worth the heavy eyelids once in a while... *yaaawn*~
EXTERN BC0AURA2 ROM-7-A-5

CHAIN BC0AURA2 ROM-7-A-3
~Next time, huh? So I guess you had fun working together, then?~
EXTERN BC0AURA2 ROM-7-A-5

CHAIN BC0AURA2 ROM-7-A-4
~Hehe, sorry... I'll think of something a little less time-consuming, if you'll give me a second chance.~
EXTERN BC0AURA2 ROM-7-A-5

CHAIN BC0AURA2 ROM-7-A-5
~Well, as much as I'd like to catch a few more Z's, this isn't the academy dormitories anymore, so... back to the road, I guess?~
= ~I'll make sure not to stumble into you by accident again... I don't think you have the energy to stand straight this time...~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",14)
!Global("C0AuraRomanceTalk6AllNighter","GLOBAL",1)~ THEN BC0AURA2 ROM-7-B
~Good <DAYNIGHTALL>, <CHARNAME>. Did you have a good rest?~ [C0BLANK]
DO ~RealSetGlobalTimer("C0AuraBG2RomanceTimer","GLOBAL",3600)
        IncrementGlobal("C0AuraBG2RomanceTalk","GLOBAL",1)~
END
  ++ ~Not bad. What about you?~ + ROM-7-B-1
  ++ ~Looks like you got some actual sleep for a change.~ + ROM-7-B-1
  ++ ~Let's just get moving. We don't have time to waste.~ + ROM-7-B-2

CHAIN BC0AURA2 ROM-7-B-1
~I tidied up and went to sleep not long after you did. Somehow, I wasn't as obsessed as I normally would've been after you left... but maybe that's for the better.~
EXTERN BC0AURA2 ROM-7-B-2

CHAIN BC0AURA2 ROM-7-B-2
~Thanks for spending time with me, <CHARNAME>. Even though it wasn't for that long, I still had fun. I hope you did too... and maybe I could show you something different next time?~
= ~Anyways, it's time to get moving. I'm feeling quite full of energy today, so it'll be a different me you see today. Oh, but I am pretty hungry... shouldn't we be thinking about food first, before we had off?~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",16)~ THEN BC0AURA2 ROM-8
~Would you like to tell me a little bit about Candlekeep, <CHARNAME>?~ [C0BLANK]
END
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~You were with me when I returned there. Didn't you see it for yourself?~ + ROM-8-1
  ++ ~What would you like to know about it?~ + ROM-8-2
  ++ ~Please don't ask me about such trivial things now, Aura. It's of no use to anyone.~ + ROM-8-0

CHAIN BC0AURA2 ROM-8-0
~Oh... alright then.~
EXIT

CHAIN BC0AURA2 ROM-8-1
~Well... yes. But that experience was kinda darkened by all the doppelgangers, false accusations, and enemies in plain sight. I meant more how it's usually like.~
EXTERN BC0AURA2 ROM-8-2

CHAIN BC0AURA2 ROM-8-2
~I was thinking more about the kind of place that you remember, having grown up there. I've met a few scholars in Lantan who have visited before... but never someone who's called it home for their entire childhood.~
END
  ++ ~I think you would like it. Knowledge from all over the realms, scholars debating with each other day and night... it's your sort of thing.~ + ROM-8-3
  ++ ~It's a quiet, safe place. Some would be right at home there, others might find it a bit stifling.~ + ROM-8-4
  ++ ~I always thought Candlekeep was boring, but having seen the real world, I regret taking the peace I had for granted.~ + ROM-8-5
  ++ ~Don't make me think about Candlekeep. Leaving was the best thing I've ever done.~ + ROM-8-6

CHAIN BC0AURA2 ROM-8-3
~Hehe, I'll bet. Maybe it's for the best I'm not there right now... odds are, I might just walk into a room full of tomes and never want to come back out.~
EXTERN BC0AURA2 ROM-8-7

CHAIN BC0AURA2 ROM-8-4
~That's up to what kind of life you want, isn't it? Though a place like Candlekeep must be hard to leave behind... and just as hard to go back to, once you've seen what the rest of the world is like.~
EXTERN BC0AURA2 ROM-8-7

CHAIN BC0AURA2 ROM-8-5
~Ah... I understand in a way. When I was just a student, I was so lost in the idea of how I'd use my knowledge to help change the world... but looking back, I think I should've done more to just appreciate how simple it was to just learn things.~
EXTERN BC0AURA2 ROM-8-7

CHAIN BC0AURA2 ROM-8-6
~Oh. I'm sorry... I didn't think the memories would be that bad for you. When I look at the way you are, I was sure that the life you were raised in must have given you a lot.~
EXTERN BC0AURA2 ROM-8-7

CHAIN BC0AURA2 ROM-8-7
~To be honest, it's not the idea of being surrounded in knowledge that I'm interested in for a change. I'm thinking more about you... and being just a little bit envious. Not just because you had something I would've loved to also have, but also...~
= ~Er, actually... never mind. Maybe I'm thinking of something that's just a little too daydreamy, even for me. Forget I was about to say anything.~
END
  ++ ~Nope. You were about to start, so own up.~ + ROM-8-8
  ++ ~It's alright. You can say it, no matter what it is.~ + ROM-8-8
  ++ ~Fine. Consider it forgotten.~ + ROM-8-9

CHAIN BC0AURA2 ROM-8-8
~Oh, alright... maybe you won't laugh at me. And even if you do, I'll probably be able to live with the embarrassment, as long as it's just you.~
= ~I was thinking how envious I am towards all the people that must've been around you, who cared for you and had a hand in making you the person you are now. And it... makes me just a little sad that I can't count myself among them.~
= ~It's not as wild as I make it sound. When I was young, I wasn't always bound for the Sambaran academy in my homeland. I could've chosen to study in another land, where the academic opportunities might've fit me more... such as focusing on the interest in magic I had, for example.~
= ~Even if it wasn't on my mind at the time, I could've chosen to come to study in Candlekeep, who have had friendly exchanges with my homeland in the past. And maybe I would've met you... and gotten a chance to become friends with you sooner.~
= ~But that's too far in the past to be worth thinking about. And besides, I'm lucky just to know you now. But I can't help but wonder what it could've been like, if I had made just a few different choices a long time ago.~
END
  ++ ~It's too bad we couldn't have met sooner, but we're friends now. And there's still many years ahead of us.~ + ROM-8-10
  ++ ~I'm not sure things would've been quite the same. You would've become a different person, and so would've I.~ + ROM-8-10
  ++ ~Thinking about what might've happened can be a good lesson, but there's no point dwelling on it if it doesn't change anything.~ + ROM-8-10
  ++ ~Thank the gods you didn't study in Candlekeep. Without your current skills, you'd likely be useless.~ + ROM-8-13

CHAIN BC0AURA2 ROM-8-9
~*ahem* In any case... under normal circumstances, I might feel sorry that you had to leave a home like yours, but at the same time, if you hadn't, we would've never met.~
= ~There's a silver lining to everything. At least, from my point of view.~
EXIT

CHAIN BC0AURA2 ROM-8-10
~I know, I know. It doesn't change anything, and I couldn't ask for more than what I already have. But I just wonder, how much do I deserve to call myself someone close to you, when I've been relatively such a small part of your life so far?~
= ~There's no answer I can give, since that's for you to decide, <CHARNAME>, but... I want to know everything there is to know about you, or at least what you want to tell me. So from now on, could you tell me more about yourself? No matter if it's just one small thing at a time.~
END
  ++ ~Sure. You've told me plenty about you, it's only right I return the favor.~ + ROM-8-11
  ++ ~Well... as long as you don't expect me to spill any of my embarrassing secrets.~ + ROM-8-12
  ++ ~You are overstepping, Aura. I have no interest in becoming that close to you.~ + ROM-8-13

CHAIN BC0AURA2 ROM-8-11
~Hehe, then it's a promise. Like I said, even if it's something as simple as what you like to eat, or how you like to spend your time... I'd like to know. And maybe we'll even find more in common with each other than I expect.~
EXTERN BC0AURA2 ROM-8-14

CHAIN BC0AURA2 ROM-8-12
~Ooh, if you're going to say that, I can't help but get curious. How about we do a little tit for tat? I'll tell you one of mine, and then you can say yours. When... there's no chance anyone else might hear us, that is.~
EXTERN BC0AURA2 ROM-8-14

CHAIN BC0AURA2 ROM-8-13
~Oh. I didn't realize you had such a low opinion of me... that's a surprise, considering I thought we were becoming close friends...~
= ~Maybe I've been overthinking just what I mean to you, <CHARNAME>. My mistake. Won't happen again.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-8-14
~Erm, I might've just spent a little too long spilling my heart out to you. Now that my head's had a bit of time to catch up with everything I've said, I'm suddenly feeling a little flushed in the face...~
EXTERN BC0AURA2 ROM-8-9

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",18)~ THEN BC0AURA2 ROM-9
~'La-da-daa, la-da-daa', one, two... two, two, turn to the right, step forward...~ [C0BLANK]
= ~Oops... whoa!~
END
  ++ ~Watch out!~ + ROM-9-1
  ++ ~(Catch her)~ + ROM-9-1
  ++ ~(Let her fall)~ + ROM-9-2

CHAIN BC0AURA2 ROM-9-1
~Oof... thanks, <CHARNAME>. I guess my feet are just a little too clumsy to be stepping like that... good thing you caught me.~
EXTERN BC0AURA2 ROM-9-3

CHAIN BC0AURA2 ROM-9-2
~Oww...~
= ~I haven't fallen on my backside so embarrassingly in a long time... you didn't see that, did you, <CHARNAME>? Tell me you didn't.~
EXTERN BC0AURA2 ROM-9-3

CHAIN BC0AURA2 ROM-9-3
~*sigh* I was just trying to brush up on the dancing steps I learned a long time ago... not sure why it crossed my mind, but I haven't practiced in a long time. I wanted to see if I was as bad as it as I was before.~
= ~I'm great with using my hands to put things together, but not so much when it comes to moving my feet, it looks like.~
END
  ++ ~I didn't even know you'd learned to dance before.~ + ROM-9-4
  ++ ~Well, nobody's perfect. If it bothers you, just keep working on it.~ + ROM-9-5
  ++ ~Whatever. As long as your plan isn't to use your dancing as a strategy in battle.~ + ROM-9-6

CHAIN BC0AURA2 ROM-9-4
~It wasn't really my idea, if I had to be precise. I had to learn it on the spot, back when I was still in Lantan.~
EXTERN BC0AURA2 ROM-9-7

CHAIN BC0AURA2 ROM-9-5
~To be honest, I never really thought about improving until recently. It wasn't even something I planned to learn.~
EXTERN BC0AURA2 ROM-9-7

CHAIN BC0AURA2 ROM-9-6
~Oof. Could you imagine that? There might be the tiniest chances I confuse them with my clumsy footwork, but otherwise... yeah, I won't get anywhere with these moves.~
EXTERN BC0AURA2 ROM-9-7

CHAIN BC0AURA2 ROM-9-7
~Back at home, my sister Luna once brought me to the wedding of one of her fellow graduates from the academy. She was a bridesmaid, and I was asked to come along since some of her friends wanted to meet me for the first time. It was the first Lantanese wedding I had been to.~
= ~Our weddings aren't that different from anywhere else's, but since most Lantanna are so busy, any time we can afford to spend to share in joy together with our friends and family is precious. And after the vows are spoken, there's a special ceremony in which each guest has a chance to share whatever innovations they're focusing on, so that everyone can share the knowledge. And if their work has results, they'll even present a gift to the newlyweds.~
= ~But anyway, I was happy to go just for the ceremony alone, but I had never danced before in my life. So I—well, my sister didn't want me to embarrass myself in front of everyone. She spent five whole days trying to teach me, but somehow, even though I spent my whole life following instructions, I could just never get it quite right.~
= ~And it didn't really matter in the end anyway. On the wedding day, my partner suddenly got sick from an allergic reaction to something he ate right as I took my first step, and I spent the rest up the wedding until the ceremony concocting something to help him recover. Then, life went on, and I never really thought about dancing ever again.~
= ~Until recently, anyway. I don't know why, but spending time talking to each other made me think about that wedding again, and even though I don't think we've even talked about dancing, I just felt like I wanted to practice, so I don't mess up if I have to go to another one.~
END
  ++ ~You're not already thinking about getting married, are you?~ + ROM-9-8
  ++ ~I'd like to see a Lantanese wedding, one day. The ceremony sounds particularly interesting.~ + ROM-9-9
  ++ ~I could try to teach you, if you like. My dancing skills aren't half bad.~ + ROM-9-10
  ++ ~Before we think about weddings, how about we instead talk about what we're going to do to survive today?~ + ROM-9-11

CHAIN BC0AURA2 ROM-9-8
~Er... no! I mean, I can imagine it happening one day, but not anytime soon! Not... not unless someone really wants it as well.~
EXTERN BC0AURA2 ROM-9-12

CHAIN BC0AURA2 ROM-9-9
~Oh, the ceremony is my favorite part, at least to the few weddings I've been to. I love to see what the other minds in Lantan have created... although I think if it was my wedding in particular, I might have slightly different priorities.~
EXTERN BC0AURA2 ROM-9-12

CHAIN BC0AURA2 ROM-9-10
~Hehe, I'd love to try to learn from you. Even in a world where you were somehow as terrible as I am, I'd still probably say yes, just for the experience.~
EXTERN BC0AURA2 ROM-9-12

CHAIN BC0AURA2 ROM-9-11
~Um... good point. *sigh* But maybe one day...~
EXIT

CHAIN BC0AURA2 ROM-9-12
~But one day, when all of this is behind us... what I'd really like is to have a dance with you at a Lantanese wedding.~
= ~No matter, um... from where we might be standing at the time.~
END
  ++ ~I'd like that.~ + ROM-9-13
  ++ ~"From where we're standing?" Are you suggesting that the two of us...~ + ROM-9-14
  ++ ~Now you're really daydreaming. Let's get that little head of yours out of the clouds and focus on the real world.~ + ROM-9-11

CHAIN BC0AURA2 ROM-9-13
~Then it's a date? No, a promise! No, it's a... oh, just think of it however you want to. There's no talking my way out of this one.~
EXTERN BC0AURA2 ROM-9-15

CHAIN BC0AURA2 ROM-9-14
~Wait, what did I just say? Did I just... oh, no. I was just trying to say... urgh. You know what, just forget it. I've already put my foot far enough in my mouth as it is.~
EXTERN BC0AURA2 ROM-9-15

CHAIN BC0AURA2 ROM-9-15
~Let's just... think about how we're going to make it through the day, how about that? It's not as fun, but moving too fast is also...~
= ~I'll... just keep working on my dancing. So I don't step on your feet if you're ever my, um... partner.~
= ~'La-da-daa, la-da-daa'...~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",20)~ THEN BC0AURA2 ROM-10
~Can I treat you to a few confectioneries I've been experimenting with, <CHARNAME>?~ [C0BLANK]
= ~Er, sorry. My head's still in study mode. I mean to say, would you like to try some sweets I've been trying to make?~
END
  ++ ~Sure, I like sweets.~ + ROM-10-1
  ++ ~I think it's quite endearing when you talk in 'study mode'.~ + ROM-10-2
  ++ ~'Trying to make'? You mean, you're not sure of their quality?~ + ROM-10-3
  ++ ~I'm not usually fond of sweet foods... but I'll try one, just to make you happy.~ + ROM-10-1
  ++ ~No, thank you. I don't like sweets.~ + ROM-10-0

CHAIN BC0AURA2 ROM-10-0
~Aw... alright. I can't force you to enjoy something you don't like. Never mind, then...~
EXIT

CHAIN BC0AURA2 ROM-10-1
~I was trying to replicate the style of 'Darallie's Saccharinities' back home. Their owners, the Darallie brothers, dropped out from the academy to focus on candymaking as a profession.~
= ~Nobody expected them to make much of a name for themselves, but they were so committed to the craft, eventually they became Lantan's definitive confectionary store, and just about every Lantanna who loves sweets yearn for their creations. Now they're arguably some of the most famous Lantanna even outside of the homeland.~
= ~I was so awed when I saw them at work, I even studied under their master confectioners for a month... though I never quite figured out how they work their magic. Still, I've been trying my best.~
= ~Now I need to stop talking, and you need to try one right now. And be honest! I need to know how I can do better. There's chocolates, caramels, nougat... pick whichever you like.~
END
  ++ ~I'll try this one then...~ + ROM-10-4
  ++ ~Never mind. I don't feel like eating sweets right now.~ + ROM-10-0

CHAIN BC0AURA2 ROM-10-2
~Really? Maybe I'll speak it more often for you then... but right now, it's time for a snack!~
EXTERN BC0AURA2 ROM-10-1

CHAIN BC0AURA2 ROM-10-3
~Well... not quite, but in my defense, they're not entirely my own concept either!~
EXTERN BC0AURA2 ROM-10-1

CHAIN BC0AURA2 ROM-10-4
~...well? How did I do?~
END
  ++ ~Just a little too sweet. But I can tell you worked hard on making them.~ + ROM-10-5
  ++ ~I'm not sure I can judge the quality, but I liked it, if it means anything.~ + ROM-10-6
  ++ ~I think you need to practice a bit more.~ + ROM-10-7
  ++ ~Eugh. I just remembered why I don't like sweets.~ + ROM-10-8

CHAIN BC0AURA2 ROM-10-5
~Hehe, if you can tell that just by tasting it, then I'd say I've made some progress at least.~
EXTERN BC0AURA2 ROM-10-7

CHAIN BC0AURA2 ROM-10-6
~Of course it means something! Especially coming from you. It means I've done a little better, this time.~
EXTERN BC0AURA2 ROM-10-7

CHAIN BC0AURA2 ROM-10-7
~Well, there's always room to improve. I'm used to realizing that. I'll probably never reach the level I wish I could, to match my skill with inventing, but I guess I can settle for 'close enough'.~
= ~*sigh* Looks like candymaking at its highest level isn't any easier than artifice when it comes down to it. The flawless timing, precision and measurements... it's hard to appreciate until you've really tried it.~
= ~I just thought it's funny how my people in Lantan have crafted so much, made so many concepts that could change the world... but it's something as simple as candy that's actually managed to bring people together. I hear that the Darallie brothers have even served nobles and royalty, though that might just be rumors.~
= ~It makes sense. The things that surround you in life don't have to be unique, or majestic, or complicated. As long as they bring some joy, that gives it meaning. What do you think?~
END
  ++ ~I can see why you try to learn so many things. Inventing, dancing, candymaking... it's all to add some joy to people's lives.~ + ROM-10-8
  ++ ~Trying to make others happy is one thing, but what about yourself? What would satisfy you, if you had to think about it?~ + ROM-10-9
  ++ ~I think I'm getting a headache. Either it's the sweets, or the sudden philosophizing.~ + ROM-10-10

CHAIN BC0AURA2 ROM-10-8
~See? You understand me. The things I make might be too complex to understand, but I'm not. Really, not at all.~
EXTERN BC0AURA2 ROM-10-11

CHAIN BC0AURA2 ROM-10-9
~What would make me happy? Well... I'd imagine it's not that hard for me to say. It's not even out of my reach.~
EXTERN BC0AURA2 ROM-10-11

CHAIN BC0AURA2 ROM-10-10
~Oops, sorry. This was supposed to be a break, after all. If you don't want the sweets, though, I'll take them back. Hey, I love sweets too.~
EXTERN BC0AURA2 ROM-10-11

CHAIN BC0AURA2 ROM-10-11
~Maybe next time, I'll make you a proper meal? My specialty is desserts, but I'm quite good with vegetarian dishes too. Just don't ask me to make Kozakuran food. If it's anything other than tea and sweets, I might actually kill somebody.~
= ~Speaking of tea, would you like to have some as well, to balance out the sweetness? I've made a contraption that lets it brew easily on the go. I'll have to show you later.~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",22)~ THEN BC0AURA2 ROM-11
~'Hmm-hm-hmm-hm...'~ [C0BLANK]
END
  ++ ~You seem to be in a good mood.~ + ROM-11-1
  ++ ~What's going on? Did something nice happen?~ + ROM-11-2
  ++ ~Shh. You'll draw attention to us.~ + ROM-11-0

CHAIN BC0AURA2 ROM-11-0
~Oops... sorry. Was I being too noisy? I'll stop that now.~
EXIT

CHAIN BC0AURA2 ROM-11-1
~I just... am. There's no way for me to really explain it. Lately, I've just been more happy than usual.~
= ~Well, maybe there is a particular reason. We've been spending more time together, after all. That's more than I could possibly hope for.~
END
  ++ ~You could always ask for more.~ + ROM-11-3
  ++ ~I like being around you, as well.~ + ROM-11-4
  ++ ~Listen, paying attention to you is starting to get tiresome. I wish you'd leave me alone.~ + ROM-11-5

CHAIN BC0AURA2 ROM-11-2
~No? Nothing in particular, if you were curious. If you're wondering why I seem cheerful, I'm...~
EXTERN BC0AURA2 ROM-11-1

CHAIN BC0AURA2 ROM-11-3
~Hehe... no, I couldn't. I feel like I'm privileged enough just having you help me out on the occasional evening, and spending time talking to you when I can... even if I wanted to do more, I...~
EXTERN BC0AURA2 ROM-11-6

CHAIN BC0AURA2 ROM-11-4
~I'm relieved that you feel that way. I'd hate to think that I've been too needy or that I'm wasting your time... even if I wish I could do more with you, I feel like you've got more important things to be thinking about than how I feel.~
EXTERN BC0AURA2 ROM-11-6

CHAIN BC0AURA2 ROM-11-5
~Oh, I... I see. I'm sorry, <CHARNAME>. I should've realized when I was going too far. From now on... I won't waste your time again.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-11-6
~If it's not too much to ask, <CHARNAME>... have I been helpful to you, or a burden? Not regarding how I contribute on the road. I mean... well, you know what I mean. Emotionally, as a friend... or whatever you see me as.~
END
  ++ ~You've been more than helpful. I don't think I'd be quite the same without your positivity and support.~ + ROM-11-7
  ++ ~Well, you can be a bit overbearing... but I know you're just trying to help. I can accept you for how you are.~ + ROM-11-8
  ++ ~To be honest, I find the way you cling to me really irritating. I'd be happier if you left me alone.~ + ROM-11-5

CHAIN BC0AURA2 ROM-11-7
~You don't know how much that means to me. I've started to wonder if I'm just being selfish, always trying to keep myself in your sights.~
EXTERN BC0AURA2 ROM-11-9

CHAIN BC0AURA2 ROM-11-8
~I was worried that I might have been too eager to get your attention... but I'm glad you don't blame me for it.~
EXTERN BC0AURA2 ROM-11-9

CHAIN BC0AURA2 ROM-11-9
~Even though I'm happy that we're getting closer, I've also been worried that I'm getting more out of what we share than you do. You do so much for me, and you have power and a great destiny ahead of you.~
= ~I try my best, but I'm the one who's out of my depth, trying to fit in as much as I can. So while I... love having your attention, I often feel like I don't deserve it.~
= ~Then again, maybe I'm overthinking it, as usual. I really do like you, <CHARNAME>, and I was hoping... just maybe you might feel the same way towards me.~
END
  ++ ~Of course I do. You're very important to me.~ + ROM-11-10
  ++ ~I think you're not seeing your strong qualities. There's a lot about you that I admire.~ + ROM-11-10
  ++ ~Your friendship is important to me, Aura, but that's all that it is. I hope you understand.~ + ROM-11-11
  ++ ~Stop looking at me that way. I don't think we're as close as you seem to believe we are.~ + ROM-11-5

CHAIN BC0AURA2 ROM-11-10
~<CHARNAME>... oh, that's just what I wanted to hear. I just didn't think you'd actually see me as someone who could match up to you.~
END
IF ~OR(10)
	Global("AerieRomanceActive","GLOBAL",1)
	Global("AnomenRomanceActive","GLOBAL",1)
	Global("JaheiraRomanceActive","GLOBAL",1)
	Global("ViconiaRomanceActive","GLOBAL",1)
	Global("RasaadRomanceActive","GLOBAL",1)
	Global("DornRomanceActive","GLOBAL",1)
	Global("NeeraRomanceActive","GLOBAL",1)
	Global("HexxatRomanceActive","GLOBAL",1)
  Global("YoshimoRomanceActive","GLOBAL",1)
  Global("YoshimoRomanceActive","GLOBAL",2)~ + ROM-11-CONFLICT
IF ~True()~ + ROM-11-12

CHAIN BC0AURA2 ROM-11-11
~...I understand. I appreciate that you can be so honest with you, and I know you don't want to hurt my feelings. Let's stay the way we are now, then, as friends. I'll learn to be content with that.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-11-CONFLICT
~The truth is, even though I shouldn't be... I was actually starting to grow a little jealous. Sometimes I see you talking to our other companions, and... well, I didn't want to believe there was someone closer to you than I am.~
= ~If there is, though, please don't feel like you have to say otherwise. I'd like to know now, before it's too late.~
END
  ++ ~I do have feelings for another... but I still want to nurture our friendship, Aura. Please don't doubt that.~ + ROM-11-11
  + ~!Global("YoshimoRomanceActive","GLOBAL",1)
     !Global("YoshimoRomanceActive","GLOBAL",2)~ + ~There's no one else that's more important to me, not in the way you're thinking. I promise.~ + ROM-11-12
  + ~OR(2)
     Global("YoshimoRomanceActive","GLOBAL",1)
     Global("YoshimoRomanceActive","GLOBAL",2)~ + ~There's no one else that's more important to me, not in the way you're thinking. I promise.~ + ROM-11-12-YR

CHAIN BC0AURA2 ROM-11-12
~Then... can I give you a hug? I feel like you've needed one for a long time... and it'd make me even happier as well.~
END
  ++ ~Just a hug? I thought you'd be interested in going further.~ + ROM-11-13
  ++ ~Sure. Come here.~ + ROM-11-14
  ++ ~Not right now. Maybe later.~ + ROM-11-15
  ++ ~No, thanks. I'm not in the mood.~ + ROM-11-15

CHAIN BC0AURA2 ROM-11-12-YR
~No one? But I thought... you and Yoshimo... don't the two of you care about each other?~
END
  + ~Global("YoshimoRomanceActive","GLOBAL",1)~ + ~We're close friends, but it's different from how I see you.~ DO ~SetGlobal("YoshimoRomanceActive","GLOBAL",3)~ + ROM-11-12-YR-1
  + ~Global("YoshimoRomanceActive","GLOBAL",2)~ + ~We... do, yes. But I care about you a lot as well.~ + ROM-11-12-YR-2
  ++ ~I think you've misunderstood. He and I... we haven't even known each other for that long.~ DO ~SetGlobal("YoshimoRomanceActive","GLOBAL",3)~ + ROM-11-12-YR-1
  ++ ~Maybe... but I can't decide about whom I care for more... you, or him.~ + ROM-11-12-YR-2
  ++ ~It doesn't matter. I care about you just as much as I do about him. Is that so wrong?~ + ROM-11-12-YR-2

CHAIN BC0AURA2 ROM-11-12-YR-1
~Oh, so... that's how it is. I must have been overthinking. Maybe I was getting jealous... which isn't me at all. But then, none of this is normal for me. either.~
EXTERN BC0AURA2 ROM-11-12

CHAIN BC0AURA2 ROM-11-12-YR-2
~No, I... I can't do it, <CHARNAME>, not like this.~
= ~I'm sorry, <CHARNAME>. This was the wrong time for me to push these thoughts towards you. It isn't fair to either of you... not when it's obvious how much you think about him.~
= ~My emotions... they won't change. But I don't want to force you to decide, not now—I can't do something that selfish. These feelings I hold for you... just having them is enough for me. Whatever is in the future... that's up to you to decide.~
= ~Let's not bring this up again, <CHARNAME>... not until you know what it is you want. Thank you for listening to me.~
DO ~SetGlobal("C0AuraRomanceYRGlob","GLOBAL",1)~ EXIT

CHAIN BC0AURA2 ROM-11-13
~Well... I wouldn't object to it, but one step at a time. Also, I don't think I can muster up the courage to ask for more. Not yet. So, would you come here already?~
EXTERN BC0AURA2 ROM-11-14

CHAIN BC0AURA2 ROM-11-14
~Aw... you're so warm, <CHARNAME>. I could stay like this forever.~
= ~It's just a shame that we can't, can we? Oh, well... at least now I know what it's like. And I'm... excited to see what else is in our future.~
EXIT

CHAIN BC0AURA2 ROM-11-15
~Alright. But the choice is still there for you, <CHARNAME>. You don't even need to ask. Any time you need me, I'll be here.~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",24)~ THEN BC0AURA2 ROM-12
~Mmph...~ [C0BLANK]
DO ~IncrementGlobal("C0AuraBG2RomanceTalk","GLOBAL",1)~
= ~Mu... Muffy? Where... where are you? You're usually here when I wake up... *yawn*~
= ~Hey, <CHARNAME>? Have you seen Muffy...? I can't seem to find him anywhere...~
END
  ++ ~Don't worry. He's right here with me.~ + ROM-12-1
  ++ ~Your metal squirrel apparently decided to sleep with me instead.~ + ROM-12-1
  ++ ~Here, take him. We don't have time to waste, so let's just get packed.~ + ROM-12-0

CHAIN BC0AURA2 ROM-12-0
~Alright, just hand him over to me... now listen, Muffy, if you're going to sleep next to <CHARNAME>, at least tell me, okay? *poke poke*~
EXIT

CHAIN BC0AURA2 ROM-12-1
~Oh. That's interesting... I actually don't think he's ever done that before. It's rare that he even likes anyone other than me...~
= ~Maybe it's a sign, <CHARNAME>. We've gotten so close in such a short time, he probably knows how much I trust you.~
= ~Although I still can't help but get feel a little jealous when I see him cuddling up against you like that.~
END
  ++ ~I had quite the shock when I woke up to find him against my face, let me tell you.~ + ROM-12-2
  ++ ~I've always been curious, Aura... what's the story with Muffy, anyway? None of your other creations are anywhere near how lifelike he is.~ + ROM-12-3
  ++ ~Here, take him back. And tell him to stay with his owner from now on.~ + ROM-12-0

CHAIN BC0AURA2 ROM-12-2
~Hehe... sorry. I did my best to build him to be as cuddly as possible, but he's still brass and gears at the end of the day... well, his body, anyway. I hope he didn't make you uncomfortable at all.~
END
  ++ ~"His body"? Are you saying he's more than just a piece of clockwork?~ + ROM-12-3
  ++ ~You can have him back. Hopefully he doesn't climb onto my face again.~ + ROM-12-0

CHAIN BC0AURA2 ROM-12-3
~Haven't I told you yet? He's a tsukumogami... a yōkai, a type of spirit, that possesses objects. It's quite the story regarding how I met him and built his host body, back in Kozakura... if you're interested, I can tell you how it all happened whenever you ask.~
DO ~SetGlobal("C0AuraBG2MuffyStory","GLOBAL",1)~
= ~Anyways, I didn't even expect him to decide to sleep with anyone else for a change. But if it's you, <CHARNAME>, I shouldn't be that surprised. At this point, I feel like we're practically inseparable.~
EXTERN BC0AURA2 ROM-12-0

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",26)~ THEN BC0AURA2 ROM-13
~I was just thinking, <CHARNAME>...~ [C0BLANK]
END
  ++ ~What about?~ + ROM-13-2
  ++ ~You're always thinking.~ + ROM-13-1
  ++ ~When are you not? You should learn to appreciate the moment, once in a while.~ + ROM-13-1
  ++ ~Not now, Aura.~ + ROM-13-0

CHAIN BC0AURA2 ROM-13-0
~Oh, fine. I'll tell you before bedtime, then.~
EXIT

CHAIN BC0AURA2 ROM-13-1
~I'm not... okay, that's probably true. But this time it's different. Just hear me out!~
EXTERN BC0AURA2 ROM-13-2

CHAIN BC0AURA2 ROM-13-2
~We've got a long journey still ahead of us, but it'll have to end eventually, won't it? And... assuming all goes well, we're surely going to go on another one, aren't we? One that we can choose for ourselves, this time.~
= ~Shouldn't we think about where that next journey will take us? Maybe... just us two? It could be anywhere you want, from north to south, east to west. You can choose, and I'll be happy to follow you.~
END
  ++ ~You're really planning that far ahead? You are *that* confident that we'll succeed.~ + ROM-13-3
  ++ ~I'll leave that up to you. I've dragged you along for all my problems, I think it's only fair you get to choose.~ + ROM-13-4
  ++ ~There's all sorts of places I'd like to go. The frozen North, or Waterdeep, Calimshan, or even farther away...~ + ROM-13-5
  ++ ~What about going home? Both mine, and yours. I'd like to see Lantan with my own eyes.~ + ROM-13-6
  ++ ~This really isn't the time to be having this discussion yet, Aura. We might not even make it that far.~ + ROM-13-7

CHAIN BC0AURA2 ROM-13-3
~Well... of course I am. Why shouldn't I be? Doubting our chances would be like doubting you, don't you know that? And I've seen enough to know I shouldn't bet against you. Ever.~
EXTERN BC0AURA2 ROM-13-4

CHAIN BC0AURA2 ROM-13-4
~If you really don't know where to go, maybe I could make a suggestion? Icewind Dale, and the Ten Towns. I'd like to see the adventure that my grandmother wrote so passionately about.~
EXTERN BC0AURA2 ROM-13-8

CHAIN BC0AURA2 ROM-13-5
~I'd be excited to take the journey to the North. Not only because it's an experience I haven't had yet... but also because I want to see if I can trace the steps of my grandmother, Minerva, who had her greatest adventure there.~
EXTERN BC0AURA2 ROM-13-8

CHAIN BC0AURA2 ROM-13-6
~Oh, that goes without saying... I've already promised my family and friend that I'll introduce you to them one day. But before that, there's a few more sights to see while we're still in the adventuring mindset, don't you think?~
EXTERN BC0AURA2 ROM-13-4

CHAIN BC0AURA2 ROM-13-7
~*sigh* I know. As much as it is a downer, I haven't ruled out all the possibilities just yet. But at the same time, I wouldn't doubt you, not after all I've seen from everything we've been through together.~
EXTERN BC0AURA2 ROM-13-8

CHAIN BC0AURA2 ROM-13-8
~There's no telling what could happen, but I've chosen to stay optimistic. Even if I know there's always a chance something terrible could happen to either of us, I believe in our strength. Just like how my grandmother Minerva and her party overcame all their trials all those years ago.~
= ~That aside, I'm... shocked, <CHARNAME>. It didn't seem unnatural to you at all that I just went and talked about our future journeys together. It's like you just expected it to be the case.~
END
  ++ ~Well, why not? Like you've said before, we're practically inseparable now.~ + ROM-13-9
  ++ ~You think we'd just say our goodbyes, and that'll be that? I thought we were close.~ + ROM-13-10
  ++ ~I didn't really think about that. I just want to keep adventuring.~ + ROM-13-11

CHAIN BC0AURA2 ROM-13-9
~...oh. Hehe, you're right. Silly me, how could I have forgotten?~
EXTERN BC0AURA2 ROM-13-12

CHAIN BC0AURA2 ROM-13-10
~No, no! Of course I won't deny that we're closer than just normal companions now. I'm the one who's been wanting to go further, all this time...~
EXTERN BC0AURA2 ROM-13-12

CHAIN BC0AURA2 ROM-13-11
~Well, as long as you won't rule out the idea of me tagging along with you no matter how many adventures you go on... that's good enough for me.~
EXTERN BC0AURA2 ROM-13-12

CHAIN BC0AURA2 ROM-13-12
~It's a promise, then? After this journey, we'll stay together for the next? I'm already looking forward to it.~
= ~I know this... all of this... won't last forever. That's just what we mortals have to accept. But still... if that's the case, I want to make the most of it as possible. I want to have all the greatest memories to share with you.~
= ~You're giving me all that I could ever ask for.~
EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",28)~ THEN BC0AURA2 ROM-14
~<CHARNAME>, I want to talk to you about something. This time, it's really important... to me, at least. And hopefully to you as well.~ [C0BLANK]
END
  ++ ~Yes?~ + ROM-14-1
  ++ ~Go on, then. I'm listening.~ + ROM-14-1
  ++ ~Does it have to be right now?~ + ROM-14-2

CHAIN BC0AURA2 ROM-14-1
~We've been together for a while now. It hasn't been that long of a part of my life, but to me... it might've become the most important. Bit by bit, I've forgotten what it's like to not have you with me, to talk and hold my hand and hear me emptying my heart out... and I don't want to imagine it either.~
= ~So, I might as well just say it now... since you've given me the bravery to do it, with all your support. I'm... completely in love with you, <CHARNAME>. And... no matter what, I'm prepared to devote the rest of my life to you, whatever that means. If you can accept me, for all I am, and also all that I'm not.~
= ~It doesn't matter if how you feel is different from how I do. My heart's already made a choice, but no matter what your answer is... I just want to know.~
END
  ++ ~I love you too, Aura. I think you already realize that.~ + ROM-14-3
  ++ ~Here's my answer, then. (Kiss her)~ + ROM-14-4
  ++ ~I'm sorry, Aura, but while I care about you... it's not in that way.~ + ROM-14-5

CHAIN BC0AURA2 ROM-14-2
~Yes. I'll try not to make it too long or dramatic. But you need to hear it... please.~
EXTERN BC0AURA2 ROM-14-1

CHAIN BC0AURA2 ROM-14-3
~I... I do. I just couldn't believe what my own logic was telling me. I'm still not entirely the person I want to be yet... the person who would be courageous enough to just confess with a few clever words and kiss you like I want to.~
= ~Would you... do it for me, <CHARNAME>? I've wanted it for so long.~
END
  ++ ~Of course. Come here.~ + ROM-14-4
  ++ ~Actually... not right now. I need some time to sort my feelings out.~ + ROM-14-7

CHAIN BC0AURA2 ROM-14-4
~Mmph... finally...~
EXTERN BC0AURA2 ROM-14-7

CHAIN BC0AURA2 ROM-14-5
~I... understand. It's how you feel, and I can't change that... and I think my feelings won't change either way, not for some time. But I'll just keep it to myself... one way or another, there's still forms of happiness I can still have with you.~
= ~Please... don't let this get between us. I'll always be here to support you, no matter how I have to do it.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)~ EXIT

CHAIN BC0AURA2 ROM-14-6
~Oh. Sure, there's no rush... I've already heard the most important thing, anyway. The rest... will probably come with time.~
EXTERN BC0AURA2 ROM-14-7

CHAIN BC0AURA2 ROM-14-7
~I'm beyond happy, <CHARNAME>, don't mind the tears... I just need to let it out, like my sisters used to tell me.~
= ~Hehe, and now I'm already back to the usual me. But it won't be quite the same, will it? It's all going to be better now. It's a new future for the both of us.~
END
  ++ ~Yes. Together.~ + ROM-14-8
  ++ ~Let's go and face it, then.~ + ROM-14-8
  ++ ~Come on. We've still got a long road ahead of us.~ + ROM-14-8

CHAIN BC0AURA2 ROM-14-8
~Yes...~
= ~I'll walking right next to you, <CHARNAME>, not behind you, not anymore... I don't think I'll ever need to hesitate again.~
DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",2)~ EXIT

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",30)~ THEN BC0AURA2 ROM-15
~I've been thinking about my grandmother recently. Minerva Glimmershine, a legendary adventurer who might've even put our heroics to shame.~ [C0BLANK]
= ~Even though I've never met her, my father would sometimes tell me stories about her. Even though he doesn't have that many memories of her, since she left Lantan to go on adventures when he was still young... legends about her still reach our home once every few years.~
END
  ++ ~I've heard she was something of a hero in the North a generation ago.~ + ROM-15-1
  ++ ~It sounds like you have a lot of admiration for her.~ + ROM-15-2
  ++ ~Do you think she's still out there somewhere? There's a good chance she might still be alive.~ + ROM-15-3

CHAIN BC0AURA2 ROM-15-1
~Yes, that's right. Did you know she also fought Belhifet during that expedition? It completely caught me off guard, knowing that the two of you both fought the same enemy after this much time apart.~
EXTERN BC0AURA2 ROM-15-4

CHAIN BC0AURA2 ROM-15-2
~I do... I admire how much she was able to accomplish on her own, as a Lantanna who chose to explore the world outside of our islands, and the sort of courage it takes to live a life like hers. I just hope she never forgot that she's one of us.~
EXTERN BC0AURA2 ROM-15-4

CHAIN BC0AURA2 ROM-15-3
~*sigh* Who knows. If she was, I wish she'd come home at least once. At least for my papa's sake. Sometimes, on his birthdays, he'd get gifts from across the world with no known sender... but that's the only clue that she might remember that she had a life in Lantan, once.~
EXTERN BC0AURA2 ROM-15-4

CHAIN BC0AURA2 ROM-15-4
~I've never met her, but I like to imagine I'm similar to her in a lot of ways... and when I think of that, I wonder, did she fall in love with someone in her journey, just like I have?~
END
  ++ ~I think it's likely. We're beings of emotion. Most of us seek love, or at least some kind of attachment to others. Especially those in the lonely life of an adventurer.~ + ROM-15-5
  ++ ~What about her relationship with your grandfather? Do you know anything about that?~ + ROM-15-6
  ++ ~If she was anything like you, and had someone like me travelling with her? I could see them being just like us.~ + ROM-15-7

CHAIN BC0AURA2 ROM-15-5
~That's how I feel, too. I know, in some ways, it's illogical to look for intimacy in a life which could end at any moment... but we can't help it, and maybe we shouldn't. It's part of what makes us living beings, more than constructs.~
EXTERN BC0AURA2 ROM-15-7

CHAIN BC0AURA2 ROM-15-6
~I only know a little bit. She treated her first marriage as more of a responsibility than a decision. And even though she tried to make it work, it eventually fell apart... and she left to follow her dreams.~
= ~Then my grandfather, Arthur Dinelstrand, remarried and had two children... before he and his second wife died at sea while visiting the outerlands in a tragic accident.~
EXTERN BC0AURA2 ROM-15-7

CHAIN BC0AURA2 ROM-15-7
~My papa, Kairos, used to read the book my grandmother wrote as a bedtime story. There wasn't a clear description of who the hero in the North who she followed was, and many later editions were filled with their own interpretations... but I like to imagine they were a lot like you.~
= ~It helps me imagine that it wasn't just a lucky coincidence that we happened to come together. But that's just my own delusions... even if it was all just plain luck, I'm still nothing but thankful for it.~
= ~Do you wonder if anybody will write our story one day, <CHARNAME>?~
END
  ++ ~Without question. I'll bet Volo's already gotten started, if he hasn't made up the whole ending on his own already.~ + ROM-15-8
  ++ ~I think our story deserves to be told.~ + ROM-15-9
  ++ ~Hopefully not. I don't want the sort of attention it would give me.~ + ROM-15-10
  ++ ~You don't plan to write it yourself, like your grandmother?~ + ROM-15-11
  ++ ~Maybe it will, maybe it won't. It's not something I care about either way.~ + ROM-15-9

CHAIN BC0AURA2 ROM-15-8
~Oh... come to think of him, you did meet him during your journey, didn't you? If we ever meet him again, we'll have to tell him not to make up too much.~
EXTERN BC0AURA2 ROM-15-9

CHAIN BC0AURA2 ROM-15-9
~Well, even if someone does pen our tale, even if it's full of liberties like the story I read... at least I'll always know the full truth. And I can have the privilege of hoarding it all to myself... hehe.~
EXIT

CHAIN BC0AURA2 ROM-15-10
~To be honest, I'm sitting on the fence on it as well. It might be nice if someone's inspired by our tale one day... but I think I'd be a little embarrassed.~
EXTERN BC0AURA2 ROM-15-9

CHAIN BC0AURA2 ROM-15-11
~I've entertained the thought, but, um... I'm not sure it'd be fit for reading, if I tried to do it now. I'd probably be writing about nothing but you in the most flattering ways possible.~
EXTERN BC0AURA2 ROM-15-9

CHAIN IF ~Global("C0AuraBG2RomanceTalk","GLOBAL",32)~ THEN BC0AURA2 ROM-16
~I'm a really lucky person, aren't I?~ [C0BLANK]
END
  ++ ~What do you mean?~ + ROM-16-1
  ++ ~Did you only just realize that?~ + ROM-16-1
  ++ ~You definitely are. You have me, after all.~ + ROM-16-2
  ++ ~Not now, Aura.~ + ROM-16-0

CHAIN BC0AURA2 ROM-16-0
~Right... sorry. I don't need to make sense of everything. Sometimes just knowing the fact is enough.~
EXIT

CHAIN BC0AURA2 ROM-16-1
~I've just been thinking back on my life. Everything that's happened, good or bad...~
= ~In the past, I never considered myself that lucky of a person. There's been more than one dark moment in my past, memories I wish I didn't have... but for each of them, it always seems like I'm blessed with something in return.~
= ~When I left Lantan to see the world, I could have lost my life in the sea... but instead, I was saved by a kind priestess in Kozakura who treated me like a daughter. I suffered a great loss, but it led me to the Sword Coast where I met you. And then I was separated from you... only for us to meet again, and become closer to you than I ever was.~
= ~Isn't it truly lucky? Not simply being safe from tragedy, but always being able to come out all the better, and stronger for it?~
END
  ++ ~It isn't luck that you're describing. It's the determination to pull through, despite whatever suffering you face.~ + ROM-16-3
  ++ ~Maybe. I think it would be better if we all were spared from some of the pain we've been dealt.~ + ROM-16-4
  ++ ~I guess you are really lucky. So am I, come to think of it. There's been a lot of challenges in my life, but even more good things.~ + ROM-16-5
  ++ ~This isn't worth thinking about. All we can do is accept whatever happens in our lives, whether it's good or bad.~ + ROM-16-6

CHAIN BC0AURA2 ROM-16-2
~Well, that goes without saying. That's the luckiest part of all. But even though I value that more than anything, there's still more to it.~
EXTERN BC0AURA2 ROM-16-1

CHAIN BC0AURA2 ROM-16-3
~If you want to talk about determination, <CHARNAME>, then I don't think anyone could ever beat you. Your life has been an endless chain of trouble, and yet you somehow manage to rise above it all and keep moving forward.~
EXTERN BC0AURA2 ROM-16-7

CHAIN BC0AURA2 ROM-16-4
~I think either way, it all comes down to hope. We can hope that life is as kind to us as possible, and at the same time, when things seem to be at their worst... we can still hope that something... or someone will be there to make it all better. No matter how long it takes.~
EXTERN BC0AURA2 ROM-16-7

CHAIN BC0AURA2 ROM-16-5
~Hehe, I agree. I know we spend a lot of days surrounded by blood, death and pain... but somehow, we still have the strength to not only press on, but find some respite in the little things to make life brighter. Like sweets, dancing, or having someone to hug when the going gets rough.~
EXTERN BC0AURA2 ROM-16-7

CHAIN BC0AURA2 ROM-16-6
~You're right. I can appreciate how my life has turned out, but even if it wasn't this way... I'd still have to keep going. Though I probably wouldn't be nearly as happy if you weren't in my life.~
EXTERN BC0AURA2 ROM-16-7

CHAIN BC0AURA2 ROM-16-7
~I've never really thought about giving up, you know... not once. Not even when I was rescued by Reika-san from the Great Ice Sea, and forgot who I was... even then, I kept trying to put the pieces of myself back together, using the name and life I was given, until I remembered I had those who loved me, and a place to go back to.~
= ~That's why... <CHARNAME>, you can't ever give up, either, alright? I don't want you to ever forget that you have those behind you... or next to you, that want to make your life as full of love and joy as you deserve. Me, most of all.~
END
  ++ ~Don't worry. I won't give up, not when I have plenty of reasons to be happy as well.~ + ROM-16-8
  ++ ~Have you been worried that I've just been keeping my feelings bottled in? That's sweet, but you really shouldn't have.~ + ROM-16-9
  ++ ~There have been days where I wish my life wasn't like this, but having you here to support me makes it easier.~ + ROM-16-10
  ++ ~That's enough, Aura. You shouldn't claim to understand I feel. No one can.~ + ROM-16-11

CHAIN BC0AURA2 ROM-16-8
~That makes the both of us. After all, that's what partners are for, right? We're going to keep fighting for each other, until the day we won't have to fight anymore. Then, we'll sit side by side, and share our happiness with each other.~
EXTERN BC0AURA2 ROM-16-12

CHAIN BC0AURA2 ROM-16-9
~I was hoping for that, but I still had to be sure... you're so strong, <CHARNAME>, strong enough for me to feel jealous... but at the same time, it's always hardest to tell when strong people need help the most.~
EXTERN BC0AURA2 ROM-16-12

CHAIN BC0AURA2 ROM-16-10
~That's what I'm here for. I might be small and fragile, but I'll do my best to be someone you can lean on, if you ever need it... I can't be the one to rely on you all the time, after all.~
EXTERN BC0AURA2 ROM-16-12

CHAIN BC0AURA2 ROM-16-11
~No, I'd never claim that. I truly do love you, <CHARNAME>, but I might never completely understand you... in many ways, you're still a mystery to me, and to everyone. And I don't mind that at all. But I am here to help, and if I think I can, I will.~
EXTERN BC0AURA2 ROM-16-12

CHAIN BC0AURA2 ROM-16-12
~...Here, let me hug you for a bit. Maybe my luck will brush off onto you in the process... and I'm totally not just saying that as an excuse.~
= ~How does that feel?~
END
  ++ ~It feels great. I just wish it could last for longer.~ + ROM-16-13
  ++ ~Not enough. Come back over here and let me give you a proper squeeze.~ + ROM-16-14
  ++ ~Thank you for being here for me. I love your caring heart more than anything.~ + ROM-16-15
  ++ ~Alright, that's enough. I've had my fill of sweetness for one day.~ + ROM-16-16

CHAIN BC0AURA2 ROM-16-13
~Well, then... how about a repeat? The world's not going to leave us behind, not that quickly.~
EXTERN BC0AURA2 ROM-16-17

CHAIN BC0AURA2 ROM-16-14
~No, no... alright, fine. I just hope you don't make a habit of it. I don't think I'll be as helpful to you with the air pressed out of my lungs.~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1) !InParty("IMOEN2")~ THEN ~*sigh* You're getting almost as bad as Imoen... I'm already dreading what it'll be like when she's back with us.~
== BC0AURA2 IF ~Global("C0AuraKnowsBG1","GLOBAL",1) InParty("IMOEN2")~ THEN ~*sigh* You're getting almost as bad as Imoen... I'm surprised I haven't been smothered to death by the both of you already.~
EXTERN BC0AURA2 ROM-16-17

CHAIN BC0AURA2 ROM-16-15
~And I... love you for even more than that. But maybe one day, more of your qualities will pass onto me as well, huh?~
EXTERN BC0AURA2 ROM-16-17

CHAIN BC0AURA2 ROM-16-16
~So... I take it you're not in the mood for my newest batch of sweets, then? I think they came out much better than my last attempt. Hehe...~
EXTERN BC0AURA2 ROM-16-17

CHAIN BC0AURA2 ROM-16-17
~Well, back to the real world, then. It's hard to look forward to more conflict and fighting, but now it's more important than ever for me to succeed, so I'll keep putting in my best. For you, <CHARNAME>...~
EXIT

/// BRYNNLAW

CHAIN IF ~Global("C0AuraBG2BrynnlawTalk","GLOBAL",1)~ THEN C0AURA2J BRYNNLAW
~We're finally getting off? Ooh... thank goodness... I don't know if I could've managed another day on a ship. Even if this place looks seedy and dangerous, it'll be a relief to know we at least won't get swallowed by it.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2BrynnlawTalk","GLOBAL",2)~
END
  ++ ~I'm sorry I had to put you through that, Aura. I know you have horrible memories of the sea.~ + BRYNNLAW-1
  ++ ~Agreed. I don't enjoy being on a ship either... I'm terrified of the idea of drowning.~ + BRYNNLAW-2
  ++ ~I was hoping you'd eventually overcome your fear of sea travel.~ + BRYNNLAW-3
  ++ ~Pull yourself together. Now is the worst possible time for you to break down on me.~ + BRYNNLAW-0

CHAIN C0AURA2J BRYNNLAW-0
~I... I won't, <CHARNAME>. Break down, I mean. I know how important it is for you that we came here... I won't let it drag us down.~
EXTERN C0AURA2J BRYNNLAW-8

CHAIN C0AURA2J BRYNNLAW-1
~I thought, given how much time has passed, and how much I've grown, that maybe it wouldn't frighten me as much... and even if there was a chance I experienced something as awful as when I drowned before, I'm skilled enough to find a way out this time... but I couldn't even think of anything. I just kept shivering the whole time.~
== C0AURA2J IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~I'm glad you were close to me for the whole journey, <CHARNAME>. If not, maybe I would have fallen apart all over again. I think the only solution I could think of was that you'd be here to protect me.~
== C0AURA2J ~I should be stronger, <CHARNAME>. I know I'm stronger than I was. Why should something like this still hold me back? Am I failing you?~
END
  ++ ~Some things can't just be overcome with strength, Aura. Trauma is one of them.~ + BRYNNLAW-4
  ++ ~There'll always be something too much for you to withstand. It's nothing to be ashamed of.~ + BRYNNLAW-4
  ++ ~Stop thinking like that. You're strong. I know you're strong. You can put this behind you one day. It doesn't have to be now.~ + BRYNNLAW-4
  ++ ~If you keep snivelling like this, then yes. I'm disappointed in you.~ + BRYNNLAW-5

CHAIN C0AURA2J BRYNNLAW-2
~You too? I was a little worried you might've been disappointed that something like this would be enough to shake me up... in a strange way, I'm glad to know you're not so different from me.~
EXTERN C0AURA2J BRYNNLAW-1

CHAIN C0AURA2J BRYNNLAW-3
~I... I was hoping so, as well...~
EXTERN C0AURA2J BRYNNLAW-1

CHAIN C0AURA2J BRYNNLAW-4
~I—thank you, <CHARNAME>, that helps. I just needed a bit of encouragement... I'll be fine, really. I made it through, and I have friends with me this time.~
= ~Whatever I'm going through, I'm worried that Imoen could be facing something several times worse in that... Spellhold. Just looking at that tower frightens me.~
= ~Don't let me hold you back, <CHARNAME>. I made a promise I'd follow you through this, and I won't be a burden now.~
END
  + ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ + ~Come here. Let me hold you for a bit until you stop shaking.~ + BRYNNLAW-6
  ++ ~It's okay. We're here now, and rushing ahead won't guarantee we solve anything.~ + BRYNNLAW-7
  ++ ~Imoen's important, but so are you. We can take as much time as you need to recover.~ + BRYNNLAW-7
  ++ ~Let's get a move on, then. We've wasted enough time as it is.~ + BRYNNLAW-8

CHAIN C0AURA2J BRYNNLAW-5
~I'm... I'm sorry...~
EXIT

CHAIN C0AURA2J BRYNNLAW-6
~Yes... please...~
= ~Hehe... you're like a magical remedy, <CHARNAME>. Maybe I should be studying you instead.~
EXTERN C0AURA2J BRYNNLAW-9

CHAIN C0AURA2J BRYNNLAW-7
~I'll be okay... I just need a few deep breaths... and a bit of walking to shake off the nerves.~
EXTERN C0AURA2J BRYNNLAW-9

CHAIN C0AURA2J BRYNNLAW-8
~Yes... we should keep going.~
= ~...I'm brave... I'm brave. I'm brave.~
EXIT

CHAIN C0AURA2J BRYNNLAW-9
~See? I'm already back to normal. Once, even that might've been too much for me. Come on, <CHARNAME>. Imoen's waiting.~
EXIT

/// SPELLHOLD

CHAIN IF ~Global("C0AuraBG2SpellholdTalk","GLOBAL",1)~ THEN C0AURA2J SPELLHOLD
~This... this place is even worse from the inside, <CHARNAME>. It shouldn't exist... not the way it is now.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2SpellholdTalk","GLOBAL",2)~
END
  ++ ~You're right. This place seems more for torture than rehabilitation.~ + SPELLHOLD-1
  ++ ~Magic is dangerous. Something needs to keep them under control.~ + SPELLHOLD-2
  ++ ~We don't have time for this right now, Aura. Let's find Imoen and get out.~ + SPELLHOLD-0

CHAIN C0AURA2J SPELLHOLD-0
~Fine.~
EXTERN C0AURA2J SPELLHOLD-6

CHAIN C0AURA2J SPELLHOLD-1
~No matter how much of a danger a mage should be, they should still be treated like a person... not a dangerous animal, or an experiment. This is all wrong.~
EXTERN C0AURA2J SPELLHOLD-3

CHAIN C0AURA2J SPELLHOLD-2
~I understand that, <CHARNAME>, really, I do, but... even a mage is more than just their magic. And restraint... shouldn't be handled like this.~
EXTERN C0AURA2J SPELLHOLD-3

CHAIN C0AURA2J SPELLHOLD-3
~We in Lantan have an asylum as well... the Poenitens Sanctum. I've never seen what it's like, and my father turns quiet every time I've ever asked him about it... but even then, I hope it's nothing close to being like this. I don't ever want to think so poorly of my own people.~
= ~It's a last resort for those whose innovations are becoming too dangerous, and even then, they still have a right to free will... some of our academic works were written from within its halls, but here... it doesn't seem to matter who gets brought in.~
= ~Everybody looks so lost, either completely defeated, or broken... I hate this place, <CHARNAME>. I hate everything about it.~
END
  ++ ~I've never heard of you saying you hate something, Aura. It must be that bad from your perspective.~ + SPELLHOLD-4
  ++ ~It's extreme, but I think the idea of such a place is a necessary evil. Otherwise, we may just be allowing for something worse.~ + SPELLHOLD-5
  ++ ~We won't be here long. Once we have Imoen, we'll be out of here.~ + SPELLHOLD-6

CHAIN C0AURA2J SPELLHOLD-4
~There must be a limit to what's allowed, and some people who cross that line may be dangerous. But if they can be helped, they should. This... I don't see any attempts to help anyone here.~
EXTERN C0AURA2J SPELLHOLD-6

CHAIN C0AURA2J SPELLHOLD-5
~And how do we know a place like this won't just make them worse? What if they're made to be forced to stay here forever? Isn't that terrifying?~
EXTERN C0AURA2J SPELLHOLD-6

CHAIN C0AURA2J SPELLHOLD-6
~Let's... let's get moving, <CHARNAME>. I don't know which I want more, to get out of here or blow it all up... the only thing that might be holding me back are these poor souls here. I hope there's still a chance for them.~
EXIT

/// UNDERDARK

CHAIN IF ~Global("C0AuraBG2RomanceDrowTalk","GLOBAL",1)~ THEN BC0AURA2 ROM-DROW
~Oh, we finally have some time to ourselves. Pretending to be someone else around these drow is exhausting. How are you holding up, <CHARNAME>?~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2RomanceDrowTalk","GLOBAL",2)~
END
  ++ ~I could ask the same thing. I'm more worried about how you're holding up.~ + ROM-DROW-1
  ++ ~Don't worry about me. I'll get us through this.~ + ROM-DROW-2
  ++ ~This isn't as bad as I thought. Perhaps it's because we're females.~ + ROM-DROW-3
  ++ ~Not now. Someone might be listening in on us.~ + ROM-DROW-0

CHAIN BC0AURA2 ROM-DROW-0
~Yeah, you're right. But this might be one of the few chances we get in this place, so let me stay with you while you rest, okay?~
EXTERN BC0AURA2 ROM-DROW-9

CHAIN BC0AURA2 ROM-DROW-1
~Me? Am I not looking so great? That's not good. Maybe I've been trying too hard with keeping up my mean face. Ugh, this isn't like me at all.~
EXTERN BC0AURA2 ROM-DROW-4

CHAIN BC0AURA2 ROM-DROW-2
~I understand that, <CHARNAME>. You know I've never stopped believing in you.~
EXTERN BC0AURA2 ROM-DROW-4

CHAIN BC0AURA2 ROM-DROW-3
~I guess we should count ourselves lucky. Heh... as if I've ever needed the reminder of being lucky.~
EXTERN BC0AURA2 ROM-DROW-4

CHAIN BC0AURA2 ROM-DROW-4
~Forget me, though. I'm more concerned about you, and not just for present circumstances. Even after that horrible ordeal you went through at Spellhold, you've barely had a proper moment of rest. And when you do sleep... I can tell it's never easy, either.~
= ~I won't tell you not to push yourself, because I'm sure you know what you're capable of, but just never forget that I'm around to help you in any way I can, alright?~
END
  ++ ~I'm really surprised, Aura. I thought you'd be more frightened, and I'd need to be the one to encourage you.~ + ROM-DROW-5
  ++ ~Thank you. I'm blessed to have someone like you to support me all this time.~ + ROM-DROW-6
  ++ ~When you say things like that, I really start to miss seeing your normal, adorable self.~ + ROM-DROW-7
  ++ ~Just don't lower your guard. We're not safe as long as we're here.~ + ROM-DROW-0

CHAIN BC0AURA2 ROM-DROW-5
~Well, who said I'm not frightened? But yes, I think I've become much braver since I've known you. And it's not like at first, when I needed to depend on you for courage. Now, I need to do better so you can lean on me too for a change.~
EXTERN BC0AURA2 ROM-DROW-8

CHAIN BC0AURA2 ROM-DROW-6
~Heehee, there's nothing that I like to hear more than knowing I'm as important to you as you are to me.~
EXTERN BC0AURA2 ROM-DROW-8

CHAIN BC0AURA2 ROM-DROW-7
~Aww, this look just isn't me at all, does it? I was hoping just maybe I could put up the cool, aloof look for a change, but I know my usual, happy self suits me the best.~
EXTERN BC0AURA2 ROM-DROW-8

CHAIN BC0AURA2 ROM-DROW-8
~*sigh* I can't wait until we see the sun again, and to be done with this disguise. I've almost gotten used to your new look, and it's beautiful in its own way, especially since I can still tell you by your expression, but I've already started to miss the real you.~
= ~Well, there's nothing we can do about it right now, is there? We've still got a task ahead of us, and once we're out of this room, it'll be back to you as the mistress, and me as the servant. Until then, though...~
EXTERN BC0AURA2 ROM-DROW-9

CHAIN BC0AURA2 ROM-DROW-9
~We can be ourselves here, at least for a little while. We might not be able to trust anyone else, but we can always trust each other, and that'll never change.~
DO ~RestParty()~ EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipLetter","GLOBAL",2)~ THEN C0AUSPE1 friend-letter
~Message for Dame Aurelia Glimmershine, directly sent from Anchoril by Dame Ceriphina Copperscale.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2FriendshipLetter","GLOBAL",3)~
== C0AURA2J ~Oh! A spectator messenger from Lantan! I can't remember the last time I've seen one.~
END
  ++ ~Your people use beholders as messengers?~ EXTERN C0AURA2J friend-letter-1
  ++ ~Ceriphina Copperscale? An acquaintance of yours, I assume.~ EXTERN C0AURA2J friend-letter-2
  ++ ~Looks like they have a delivery for you.~ EXTERN C0AURA2J friend-letter-3

CHAIN C0AURA2J friend-letter-1
~Not just any type of beholders, <CHARNAME>. Spectators are creatures of law and exceptional guards. The church of Gond will contract them for particularly important deliveries.~
EXTERN C0AURA2J friend-letter-3

CHAIN C0AURA2J friend-letter-2
~That's my friend, Ceri. She uses the alias Ceriphina Copperscale when she takes a gnome's form. Introducing herself as Ce'rithalairixen the Copper Dragon wouldn't really be practical. Though she might do it anyways just to get a reaction.~
EXTERN C0AURA2J friend-letter-3

CHAIN C0AURA2J friend-letter-3
~You have something from Ceri, you said? I'll take it, then.~
== C0AUSPE1 ~Very good, ma'am. One sealed missive, received at the estimated date without error, in exact same conditions as start of delivery.~
== C0AURA2J ~Thank you! Now, if I recall correctly, there should be a receipt and proof of delivery that I should sign, right?~
== C0AUSPE1 ~Please sign here.~
== C0AURA2J ~There... oh, and have some coins for your trouble, too.~
== C0AUSPE1 ~Thank you very much, ma'am. Have a good day.~
DO ~EscapeArea()~ EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipLetter","GLOBAL",3)~ THEN C0AURA2J friend-letter2
~Well, I wouldn't normally expect this kind of messenger for a simple letter, but Ceri has always been a little eccentric. I'd love to know how she convinced the priests to allow this... knowing her, she probably tricked them somehow.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2FriendshipLetter","GLOBAL",4)~
== C0AURA2J ~Okay, I should probably see what she's written, right? I just need to get this message tube open...~
END
  ++ ~How do you open that, exactly?~ EXTERN C0AURA2J friend-letter2-1
  ++ ~Well, get on with it.~ EXTERN C0AURA2J friend-letter2-1
  ++ ~You can do that later on your own.~ EXTERN C0AURA2J friend-letter2-0

CHAIN C0AURA2J friend-letter2-0
~Oh. I was actually going to suggest that we read Ceri's letter together, but if you're not interested... I'll leave it for my own time, then.~
EXIT

CHAIN C0AURA2J friend-letter2-1
~These kinds of metal tubes are meant to protect the letters from any kind of environment, as well as make sure only Lantanna who understand the trick can open it. Although this design is a little odd... Ceri must have put it together herself, so I don't think it'll be that simple.~
= ~It's sort of her thing. She's like any other copper dragon, so she likes playing tricks whenever she finds a chance to. This thing is more like a 'puzzle box' of sorts... so I'll have to figure out the solution before I can get inside to look at her letter.~
= ~Hmm... let's see... if I turn the top three times, then the bottom should... ah, there we go. Now I just pull on the ring, and now...~
= ~Ooh, very clever, Ceri, but I'm not going to give up that easily... I should be able to push the slot two positions to the left... now one down... one right... three down, one left, one right...~
= ~Aha! Now... let me see... aaaand she's added a lock too. Okay, time to bring out the picks...~
= ~*click*~ [AMB_D21]
= ~There we go. Oh, and of course she put the key INSIDE with the letter, too. Anyways, now that I've gotten it out, time to read it.~
END
  ++ ~Wouldn't you prefer to read it privately?~ EXTERN C0AURA2J friend-letter2-2
  ++ ~Let's read it together, then.~ EXTERN C0AURA2J friend-letter2-3
  ++ ~I'm not interested in what's on there. You can read it yourself.~ EXTERN C0AURA2J friend-letter2-0

CHAIN C0AURA2J friend-letter2-2
~Actually, I'd prefer it if you read it with me. In fact, there's a good chance your name might be on here too. I've written a lot about you in my letters to home.~
EXTERN C0AURA2J friend-letter2-3

CHAIN C0AURA2J friend-letter2-3
~Okay, let's see... huh, Ceri's handwriting has improved a lot. It took us a long time to teach her how to write properly so she'd actually be accepted to the academy, so it's nice to see she hasn't forgotten everything already.~
= ~I'll just read it out loud then. *ahem* "To my favorite schoolmate, Aura..."~
DO ~ClearAllActions()
StartCutSceneMode()
CreateCreatureObjectOffset("C0ACERI2","C0Aura",[10.-20])
Wait(2)
PlaySong(%C0AUROM%)
ActionOverride("C0ACERI",StartDialogNoSet(Player1))~ EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipLetter","GLOBAL",4)~ THEN C0ACERI2 friend-letter3
~How have you been? I almost want to say it's been forever, but to me it still feels like yesterday that we were still sleeping in during our days at the Sambaran academy. I guess to a dragon, it really hasn't been that long. But I miss you!~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2FriendshipLetter","GLOBAL",5)~
== C0ACERI2 ~I'm sure you haven't gone a day without learning something new. This version of the message tube I put together surely wasn't a problem for you. Just in case, I made sure to send the key too, or I would've, if I could figure out where it went...~
== C0AURA2J ~...~
== C0AURA2J ~...Really, Ceri? Okay, next line.~
== C0ACERI2 ~Big sis Juno wanted me to tell you she said hello, and make sure you're eating well, and haven't forgotten to sleep on time instead of working all night. Luna tells you not to get killed... but I know she was blushing when she said it, hehe. I even managed to get news from Eri from Orlil! He wants to show you how much magic he's learned, and compare it with you once you get back home. Oh, and can forget uncle Kairos and auntie Gillian too. They're all waiting for you to come home, but want you to take as long as makes you happy.~
== C0ACERI2 ~I've read every letter you've sent back to Lantan since you've gone on your journey. I can't believe how much you've gone through for a relative few years! It makes me want to turn into my true form and fly out there to join you, but I'm sure I won't want to come back once I'm there, and there's no way the First Workshop is going to let me go on an extended leave. Maybe I should build another life-sized replica of myself as a decoy and then sneak off again? What do you think?~
== C0AURA2J ~*sigh* She'll never get tired of doing that...~
== C0ACERI2 ~Oh, and Liro wanted some space to write as well, so I'll hand off the pen to her now. Yep, she's standing right behind me while I'm writing this, just to stop me in case I go on for another dozen pages.~
== C0AURA2J ~Liro...~
END
  ++ ~Another friend of yours?~ EXTERN C0AURA2J friend-letter3-1
  ++ ~Go on.~ EXTERN C0AURA2J friend-letter3-2

CHAIN C0AURA2J friend-letter3-1
~Yes... one of my closest. She's actually a distant cousin... but to me, she's as close to me as any of my sisters, if not more. I practically grew up with her, and we went to the academy together.~
EXTERN C0AURA2J friend-letter3-2

CHAIN C0AURA2J friend-letter3-2
~Let's see... oh, you can see how the handwriting is completely different here, haha.~
DO ~ClearAllActions()
StartCutSceneMode()
CreateCreatureObjectOffset("C0LIRO2","C0Aura",[-10.-20])
Wait(2)
ActionOverride("C0LIRO",StartDialogNoSet(Player1))~ EXIT

CHAIN IF ~Global("C0AuraBG2FriendshipLetter","GLOBAL",5)~ THEN C0LIRO2 friend-letter4
~I hope you're well, and enjoying your travels, Aura. I've been waiting to welcome you home all this time, but I want you to do whatever you find most purposeful.~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2FriendshipLetter","GLOBAL",6)~
== C0LIRO2 ~My condition's been steadily improving. I can leave the house and take in some sunlight more often now... sometimes, I've even been able to take walks along the shore. I want you to know so that you don't have to worry about me while you're out there. I know we'll meet again when the right time comes.~
== C0LIRO2 ~I've been looking at all the schematics that you've sent, and they're ingenious, like always. They've inspired me to take more trips to the workshops and try to finish off my unfinished projects when I feel well enough to travel that far... given a bit longer, and I might even have the Thunderbolt ready for testing. Not that I'll be able to take it and go on adventures like you, with my weak body... but at least knowing it can be done will put my mind at ease.~
== C0LIRO2 ~Ceri's been pestering me about letting off some of my own worries, even though I didn't want to burden you. But she has a point, so I'll write a little about it... uncle Dedalus has been working particularly hard over the past year. I've been living at the Helianthus House with your parents at his suggestion, since he comes home so rarely nowadays.~
== C0LIRO2 ~Uncle Kairos has been telling me not to worry, because my uncle knows what's best for himself, and his work has all been for the sake of Lantan... but I can't help but but worried. He tries to hide it from me, but I can tell... I know nobody else can, but he's been taking care of me since Mother passed away, and I know him more closely than anyone.~
== C0LIRO2 ~I know you can't do much to help, Aura, but it does feel better writing it all down, knowing that you'll read this and care. When you come home, we'll have a celebration and share all our stories together in a proper way. You, me, Ceri, your sisters, the twins... I'm looking forward to it already.~
== C0LIRO2 ~We all miss you. Myself, most of all. But when I read your letters, I feel like you're right there next to me. That's more than enough.~
== C0ACERI2 ~Also, don't you dare come home without bringing the legend <PRO_HIMHER>self, <CHARNAME>, with you for a visit! The stories about <PRO_HIMHER> have been keeping the whole family on the edge of our seats!~
== C0LIRO2 ~I'm sorry, Aura, Liro stole the pen from me and wrote that in an instant. But my thoughts are the same as hers.~
== C0AURA2J IF ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~"Just like we said, we've read *all* the letters, even the ones... which..." Eep!~
== C0ACERI2 IF ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Even the ones which made me of all people blush! Hehe, I betcha she's standing right next to you while you're reading this. We're rooting for the both of you!~
== C0LIRO2 IF ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~I'm sorry, I couldn't stop Liro from writing that. But I'm curious, too... and more than a little jealous.~
== C0LIRO2 ~We all send you our deepest love, and I will pray for the blessing of the Wonderbringer to protect you always.~
== C0AURA2J ~—from Liro and Ceri, your eternal friends. Oh, they're the same as always... after all this time, I was starting to worry that they'd resent me for being away from them for so long.~
END
  ++ ~That's a sweet message.~ EXTERN C0AURA2J friend-letter4-1
  ++ ~You have some wonderful friends.~ EXTERN C0AURA2J friend-letter4-1
  ++ ~Finally done? We've stood here long enough.~ EXTERN C0AURA2J friend-letter4-2

CHAIN C0AURA2J friend-letter4-1
~Hehe, aren't they? I wish you could meet them yourself, <CHARNAME>... maybe one day, when all of this is behind us.~
EXTERN C0AURA2J friend-letter4-2

CHAIN C0AURA2J friend-letter4-2
~Thank you for listening through me reading that, <CHARNAME>... having a new friend next to me to share my happiness with made that even better.~
= ~Oh, hang on. There's a postscript...~
= ~"I've packed some of Darallie's top sweets along with the letter. I'll bet my hat you've been craving them all this time, so I've included your favorite—chocolate truffles with strawberry cream filling and topped with icing"...!~
= ~Ooh, I've missed these so much... here, you have one too, <CHARNAME>.~
END
 ++ ~Don't mind if I do.~ + friend-letter4-3
 ++ ~Sure.~ + friend-letter4-3
 ++ ~No thanks. I don't enjoy sweets.~ + friend-letter4-4

CHAIN C0AURA2J friend-letter4-3
~Mmm, it's great, isn't it? You have to come to Anchoril and see Darallie's sweet shop yourself someday, <CHARNAME>.~
EXTERN C0AURA2J friend-letter4-5

CHAIN C0AURA2J friend-letter4-4
~Hmm? Well, your loss. I'll have more to myself, then... teehee.~
EXTERN C0AURA2J friend-letter4-5

CHAIN C0AURA2J friend-letter4-5
~I'll keep the letter in a safe place... okay, let's go. There's still a long journey ahead of us before I can make good on my plans to go home again.~
DO ~ActionOverride("C0LIRO",DestroySelf())
ActionOverride("C0ACERI",DestroySelf())~ EXIT

// ToB

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBSaradush","GLOBAL",1)~ THEN BC0AUR25 tob-pocketplane
~More violence and war... it just never ends with you, does it, <CHARNAME>? I can't imagine it's an easy life when fate tells you "the place that you need to go" is right in the middle of another battle.~
DO ~SetGlobal("C0AuraToBSaradush","GLOBAL",2)~
END
++ ~Tell me about it.~ + tob-saradush-1
++ ~Just the price of being a godspawn, I guess.~ + tob-saradush-1
++ ~As far as I'm concerned, the place with people in need is exactly where I need to be.~ + tob-saradush-2
++ ~I don't mind that much. It's just another step towards getting stronger.~ + tob-saradush-3
++ ~This isn't the time right now. Let's focus on avoiding mortar shots before we talk.~ + tob-saradush-0

CHAIN BC0AUR25 tob-saradush-0
~Oh... you have a point. My ears are ringing like mad anyway. We should try to find some shelter... if there even is any.~
EXIT

CHAIN BC0AUR25 tob-saradush-1
~I've been on the road for so long, I might have forgotten what peace was like. And, truth be told, even if I could have it again... somehow it wouldn't feel right anymore.~
= ~We've fought this far, done so much and gathered so much power, that I don't know if it would be right to walk away from this life. If we're not here to do something about all this destruction, who will?~
END
  ++ ~You're going to be overburdened by responsibility if you keep thinking like that.~ + tob-saradush-4
  ++ ~There's always going to be other heroes. Some who will face challenges just as difficult. They might become even stronger than us.~ + tob-saradush-5
  ++ ~I get how you feel. I'm not sure I can acclimate into a peaceful life again, and it's an uncomfortable thought.~ + tob-saradush-6

CHAIN BC0AUR25 tob-saradush-2
~No, I get you. I don't mind things being difficult so long as I know I'm helping people. But still...~
EXTERN BC0AUR25 tob-saradush-1

CHAIN BC0AUR25 tob-saradush-3
~There's that, I guess. If we can be strong enough, maybe we can prevent tragedies like this from happening.~
EXTERN BC0AUR25 tob-saradush-1

CHAIN BC0AUR25 tob-saradush-4
~I know, I know, it's wrong and maybe even a bit arrogant to feel this way. We're not gods... well, I'll never be one, anyway.~
EXTERN BC0AUR25 tob-saradush-6

CHAIN BC0AUR25 tob-saradush-5
~And I wonder if one day, they'll have the same conversation we're having right now?~
EXTERN BC0AUR25 tob-saradush-6

CHAIN BC0AUR25 tob-saradush-6
~Maybe I'm just becoming obsessed. But I've always wanted to help people, and if I don't use every bit of skill and knowledge I have, I feel that I haven't done enough. That's how it's always been, and I've never seen anything wrong with thinking that way... but then, I never expected to gain as much as I have now.~
= ~Now that I do, I just feel... tired. Some people would be thrilled to be so powerful, I know. But not me. I just can't stop thinking about what I can, and should do next.~
= ~Like right now. I see all these people, scared, hurt, not knowing what to do... and I just want to help them. I don't know how yet, but I can't stop thinking if there's a way.~
END
  ++ ~We'll save them. No matter what we have to do.~ + tob-saradush-7
  ++ ~I'm worried that you're working and thinking too hard.~ + tob-saradush-8
  ++ ~Whether or not we can is not up to us. Let's just do what we can.~ + tob-saradush-9

CHAIN BC0AUR25 tob-saradush-7
~I hope so... the only thing worse than worrying is the thought of trying our best and still failing. I hope it doesn't come to that...~
EXTERN BC0AUR25 tob-saradush-9

CHAIN BC0AUR25 tob-saradush-8
~Maybe. But I don't think I've ever stopped doing that, <CHARNAME>. You know I can't settle for anything other than my best.~
EXTERN BC0AUR25 tob-saradush-9

CHAIN BC0AUR25 tob-saradush-9
~I'm just glad you're here, <CHARNAME>. Even as I am now, I don't think I could handle this on my own.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBSiegeCamp","GLOBAL",1)~ THEN BC0AUR25 tob-siege
~Well, here we are... right in the middle of the battlefield, ready to take on your... um, massive, terrifying Bhaalspawn brother.~
DO ~SetGlobal("C0AuraToBSiegeCamp","GLOBAL",2)~
== BC0AUR25 IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~We haven't fought together in a true war since Dragonspear Castle, have we, <CHARNAME>? I guess if I make it out of this one alive, I could really start calling myself a veteran, haha...~
== BC0AUR25 ~This may sound totally unlike me, <CHARNAME>, but... touch fists, just for luck? You never know, it might be the boost in confidence we need.~
END
  ++ ~I didn't think you believed in that sort of thing.~ EXTERN BC0AUR25 tob-siege-1
  ++ ~Sure, why not.~ EXTERN BC0AUR25 tob-siege-2
  ++ ~You can't be serious.~ EXTERN BC0AUR25 tob-siege-3
  ++ ~Now is really not the time to be foolish.~ EXTERN BC0AUR25 tob-siege-4

CHAIN BC0AUR25 tob-siege-1
~I don't... well, didn't. But I also never expected to be taken along with you for this kind of pseudo-divine venture, you know?~
EXTERN BC0AUR25 tob-siege-5

CHAIN BC0AUR25 tob-siege-2
~There! Okay, I'm all motivated. Here's to us winning this, <CHARNAME>!~
EXIT

CHAIN BC0AUR25 tob-siege-3
~I am serious! Sure, it might be just a little inappropriate, but who knows what will happen by the end of this fight?~
EXTERN BC0AUR25 tob-siege-5

CHAIN BC0AUR25 tob-siege-4
~Right... let's just get to it.~
EXIT

CHAIN BC0AUR25 tob-siege-5
~So? I think I see the enemy coming our way. This might be the last few seconds for us to catch our breath... going once... twice?~
END
  ++ ~Alright, here you go.~ EXTERN BC0AUR25 tob-siege-2
  ++ ~I think adventuring has finally gotten to you.~ EXTERN BC0AUR25 tob-siege-6
  ++ ~Stop that. Focus on the victory.~ EXTERN BC0AUR25 tob-siege-4

CHAIN BC0AUR25 tob-siege-6
~Hehe, is that so? Maybe... but you know, that's not such a bad feeling.~
EXTERN BC0AUR25 tob-siege-4

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBSwordTalk","GLOBAL",1)~ THEN BC0AUR25 tob-swordtalk
~*huff* *breathe* Hah... ah...! *pant* *gasp*...~
= ~To swing a sword... I've mastered so many things, but I still can't... but I have to keep trying.~
DO ~SetGlobal("C0AuraToBSwordTalk","GLOBAL",2)~
END
  ++ ~You're practicing swordplay? And with your uncle's sword, as well.~ + tob-swordtalk-1
  ++ ~Stop that and get some rest, already. Keep that sort of fighting to the trained ones.~ + tob-swordtalk-0

CHAIN BC0AUR25 tob-swordtalk-0
~I... no. Just a little more. Go get some rest, <CHARNAME>. I won't be at this forever.~
DO ~RestParty()~ EXIT

CHAIN BC0AUR25 tob-swordtalk-1
~I'm still trying to master this sword, <CHARNAME>... just like uncle Dedalus did. It follows my every thought perfectly, like it was made for my hands... but I just can't fully understand it yet.~
= ~Before now, I've never had an interest in swordsmanship... the only instruction I've ever gotten was from Reika-san, who once mentioned that the sword is an extension of one's will, and must always be swung with intent... but only after I saw what my uncle was willing to do, did I realize what she really meant.~
= ~My uncle hated conflict and death as much as I do, <CHARNAME>, I know that. And if we were taught to hate it, there must be countless others like us who feel the same way, and shouldn't ever have to suffer it themselves... but someone has to face it. Not everyone can hide.~
= ~I know. That's why my uncle chose to make and master a sword, despite wishing to the bottom of his heart that he would never have to draw it... and now, that sword is in my hands. I have to be ready for the same responsibility.~
END
  ++ ~You don't. You have a right to peace, just like anyone else.~ + tob-swordtalk-2
  ++ ~That doesn't mean you have to face that responsibility in the same way.~ + tob-swordtalk-3
  ++ ~Have it your way. But you'd perform better if you rested and recovered your strength.~ + tob-swordtalk-0

CHAIN BC0AUR25 tob-swordtalk-2
~Just like everyone else... but I want to protect that peace for everyone else, <CHARNAME>. I think... I have that power, now. I just need to understand... what it was like for whoever else has felt the same way.~
EXTERN BC0AUR25 tob-swordtalk-3

CHAIN BC0AUR25 tob-swordtalk-3
~This sword may never be the answer I truly want, but... I can't just rely on what I'm familiar with, <CHARNAME>, not anymore. I have to face my weaknesses and understand them, if not conquer them.~
= ~Please don't worry about me. I know my limits, and I won't push myself too far when I know what's important right now, <CHARNAME>, but... I have a long way to go. And I want to protect the things I care about, in whatever way my uncle didn't have a chance to find.~
DO ~RestParty()~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBNearEnd","GLOBAL",1)~ THEN BC0AUR25 tob-nearend
~One of these days, when this is over... I'm going to wake up in my bed, ready to pack and follow your lead, <CHARNAME>... and I'll have to remind myself you aren't there anymore.~
DO ~SetGlobal("C0AuraToBNearEnd","GLOBAL",2)~
= ~I'm going to miss you.~
END
  ++ ~I'll miss you too.~ + tob-nearend-1
  ++ ~We can still travel together, even after this.~ + tob-nearend-2
  ++ ~Thank you for supporting me all the way here.~ + tob-nearend-1
  ++ ~Don't get sentimental now. This is the wrong time for it.~ + tob-nearend-0

CHAIN BC0AUR25 tob-nearend-0
~I know, this might not be the best time... but I needed to say it. That's all. I'm glad I followed you all this way.~
EXIT

CHAIN BC0AUR25 tob-nearend-1
~The closer we come to the end, the stranger it feels to keep walking at your side... for all I know, these moments might be some of the last. You're meant for greater things.~
= ~Does it scare you, <CHARNAME>? Or are you looking forward to whatever comes?~
END
  ++ ~It's a bit of both.~ + tob-nearend-3
  ++ ~I'm just tired. I never wanted any of this.~ + tob-nearend-4
  ++ ~The path to godhood awaits me. I'm elated.~ + tob-nearend-5
  ++ ~I don't know.~ + tob-nearend-6

CHAIN BC0AUR25 tob-nearend-2
~I... I'd like that. But who knows what's in your future, <CHARNAME>?~
EXTERN BC0AUR25 tob-nearend-4

CHAIN BC0AUR25 tob-nearend-3
~As illogical as that sounds, I think I understand. Your life as you know it might be changed forever... that can be both exciting and terrifying.~
EXTERN BC0AUR25 tob-nearend-6

CHAIN BC0AUR25 tob-nearend-4
~It was cruel of fate to force this a burden as heavy as divinity on you, <CHARNAME>. Though on my part, I'm at least relieved it gave us a chance to know each other.~
EXTERN BC0AUR25 tob-nearend-6

CHAIN BC0AUR25 tob-nearend-5
~That's a prize I don't think I could ever come to comprehend, <CHARNAME>. Even though I'm not sure I'd like it, in a way I still... envy you. If it is what you're after, then I hope it'll make you happy.~
EXTERN BC0AUR25 tob-nearend-6

CHAIN BC0AUR25 tob-nearend-6
~I'm not in a position to tell you whether your destiny is a good or bad thing, <CHARNAME>. But I can assure you that I've supported you this far, and I won't stop now.~
= ~We've come so far, fought and survived, learned things no book or lecture could've taught... and we've forged friendships that might never happen a second time in a lifetime.~
= ~Thank you for everything. Even if we part ways, and the distance between us is more than what can be measured... I know a part of you will always be with me.~
END
  ++ ~We'll never be that far apart. I'll always be ready to come to your aid, or if you just want to meet again.~ + tob-nearend-7
  ++ ~I'll always value our friendship. Even if I were to become a god, that won't change.~ + tob-nearend-8
  ++ ~I don't have such deep feelings, but you have been a useful ally.~ + tob-nearend-9
  ++ ~That's enough. Save the sentimentality when we've settled things properly.~ + tob-nearend-10

CHAIN BC0AUR25 tob-nearend-7
~That goes for you too! And if you do come to Lantan, I'll be sure to show you everything I'll have been working on, as well as all that's great about my homeland!~
EXTERN BC0AUR25 tob-nearend-10

CHAIN BC0AUR25 tob-nearend-8
~Hehe, I can't imagine most people would be able to boast about being valued by a future god. I'm not the sort to ask for too much, but maybe drop a few signs of favor now and again so I know you're thinking about me, okay?~
EXTERN BC0AUR25 tob-nearend-10

CHAIN BC0AUR25 tob-nearend-9
~I don't mind if you think less of me than I do towards you. No matter why you've been willing to keep me alongside you all this time, it doesn't change how grateful I am to you.~
EXTERN BC0AUR25 tob-nearend-10

CHAIN BC0AUR25 tob-nearend-10
~We'll win, <CHARNAME>. I'll do everything I can to achieve success for you. Right now, and whenever you need me.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",2)~ THEN BC0AUR25 tob-rom-1
~From one battle, right into the next... it's always up to us in the end.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
= ~I guess some proper rest and a moment of peace was never on the table, huh? I was hoping to spend some time together in peace after everything we've been through.~
END
  ++ ~We'll have our chance eventually.~ + tob-rom-1-1
  ++ ~So did I.~ + tob-rom-1-2
  ++ ~I'd say the little bit of comfort we got was already more than expected.~ + tob-rom-1-3
  ++ ~There's no time for this right now, Aura.~ + tob-rom-1-0

CHAIN BC0AUR25 tob-rom-1-0
~Yeah... you're right. Let's find somewhere a bit safer.~
EXIT

CHAIN BC0AUR25 tob-rom-1-1
~I hope so... I've been dreaming of a day we can travel to some beautiful arcadia, just the two of us on a romantic getaway... away from all this bloodshed.~
EXTERN BC0AUR25 tob-rom-1-4

CHAIN BC0AUR25 tob-rom-1-2
~Well, it's not like this is anything new anymore... besides, I've already followed you to Hell and back. How much worse could it get?~
EXTERN BC0AUR25 tob-rom-1-4

CHAIN BC0AUR25 tob-rom-1-3
~*sigh* Well, that's been the normal way of life for you... and for me, ever since I signed on to all of this. Not that I regret it at all, though... hehe.~
EXTERN BC0AUR25 tob-rom-1-4

CHAIN BC0AUR25 tob-rom-1-4
~I'm not naive enough to think it was all over so soon, but... I really did enjoy being at Suldanessellar. I was happy just to finally be able to spend time with you, not having to worry about being hunted, or expecting another fight.~
= ~Just to sit together at the table and share a meal in peace, take walks through the district while holding your hand, greeting Queen Ellesime when we walked by the palace... after everything, it was like a dream.~
= ~Maybe I've just been spoiled by a little bit of comfort, but we'll be able to have that again, won't we, <CHARNAME>?~
END
  ++ ~Of course we will. After this journey, we'll have all the time in the world.~ + tob-rom-1-5
  ++ ~Who can say? Anything could happen.~ + tob-rom-1-6
  ++ ~I can't promise that. My destiny, and my father's throne awaits.~ + tob-rom-1-7
  ++ ~We can think about the future once we're sure we're not about to die today, Aura. Let's go.~ + tob-rom-1-0

CHAIN BC0AUR25 tob-rom-1-5
~I'm looking forward to that day. No more fighting, no corpses in our trail, no monsters or villains seeking our lives... just you and me. I want that more than anything... so why can't I be happy thinking about it?~
EXTERN BC0AUR25 tob-rom-1-8

CHAIN BC0AUR25 tob-rom-1-6
~Yes... anything *could* happen... even the things I hope with all my heart could never come true.~
EXTERN BC0AUR25 tob-rom-1-8

CHAIN BC0AUR25 tob-rom-1-7
~I really was hoping you wouldn't say that... after all this time, I've always been able to see you as a person, and I love you for it, <CHARNAME>. But I can't forget that you're more than that, even if it wasn't your choice.~
EXTERN BC0AUR25 tob-rom-1-8

CHAIN BC0AUR25 tob-rom-1-8
~*sigh* All of this chaos must be getting to me if I'm feeling so gloomy. I'm supposed to be your support, <CHARNAME>, not the one dragging you down.~
= ~I wonder if any of the others... the other Bhaalspawn out there, are going through the same things. How many of them just want a normal life, but keep having their chance cruelly taken from them.~
= ~Do you think about it, <CHARNAME>? About them?~
END
  ++ ~I have wondered sometimes. If some of them were just like me, and if we could've been friends, if not proper siblings.~ + tob-rom-1-9
  ++ ~Compared to the ones here, and those who have been hunted for their whole lives... I'd call myself one of the lucky ones.~ + tob-rom-1-9
  ++ ~I've never thought about the other Bhaalspawn, no.~ + tob-rom-1-11
  ++ ~The only thing I consider them are as obstacles in my way to power.~ + tob-rom-1-10
  ++ ~It's too late to think about that now.~ + tob-rom-1-11

CHAIN BC0AUR25 tob-rom-1-9
~When I think about us, and how far we've come together, I start wondering if they had similar people at their sides... and the evil ones, the ones we're fighting now, if things could've been different if they just had the right person at their side when they needed it.~
EXTERN BC0AUR25 tob-rom-1-11

CHAIN BC0AUR25 tob-rom-1-10
~I... I see. I guess it makes sense for you to think that way. Even if you come from the same father, they've never been a part of your life... maybe it's fair...~
EXTERN BC0AUR25 tob-rom-1-11

CHAIN BC0AUR25 tob-rom-1-11
~I guess it doesn't matter, in the end. The other Bhaalspawn started this war, and now we have to fight back, whether we like it or not.~
= ~If this is going to be the most important fight, <CHARNAME>, and maybe even the last... I'll do everything I can for you... and for our future.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",4)~ THEN BC0AUR25 AURA-POST-WRAITH
~I... what have I done, <CHARNAME>? Why have I... ruined so much?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
END
  ++ ~None of what happened was your fault.~ + AURA-POST-WRAITH-1
  ++ ~That was just a trick, Aura. A cruel, evil trick.~ + AURA-POST-WRAITH-1
  ++ ~I don't know.~ + AURA-POST-WRAITH-1

CHAIN BC0AUR25 AURA-POST-WRAITH-1
~I know. I shouldn't believe a word of what was said. But how can I do that? Those terrible, dark emotions came from myself. My own heart gave them the weapons they needed to hurt me.~
= ~I could almost admire how well those shadows played their tricks... they attacked me in the one way I could never defend myself, whether through logic or emotion...~
= ~Their intentions were all false, but I can't deny the point they've made... or, maybe, it's my own guilt surfaced. I've kept it buried all this time, believing I've been doing the right thing. Even with all the death, all those who have been hurt...~
= ~<CHARNAME>... did I deserve to be brought back? Would things have been better if my body had sunk into the ocean, all those years ago?~
END
 ++ ~No, Aura. You mustn't think that. Your mentor gave you life because she believed you deserved it, and she died for you because she felt you were worth it.~ EXTERN BC0AUR25 AURA-POST-WRAITH-2
 ++ ~Some things are outside of our control, Aura. You can't regret everything that goes wrong. Just be the best that you can.~ EXTERN BC0AUR25 AURA-POST-WRAITH-2
 ++ ~That's a question... and a burden that you'll have to bear. I can't help you.~ EXTERN BC0AUR25 AURA-POST-WRAITH-3

CHAIN BC0AUR25 AURA-POST-WRAITH-2
~I... I know that's the right way to think. I'd be betraying the memory of everyone that's ever cared for me if I felt otherwise. I need to... I need to believe in myself...~
EXTERN BC0AUR25 AURA-POST-WRAITH-3

CHAIN BC0AUR25 AURA-POST-WRAITH-3
~Oh... why am I letting that horrible apparition get to me like this?! Agh! I should be better...~
= ~At least I have you, <CHARNAME>. I don't think I would've been able to handle what just happened otherwise. Thank you for being my support... always.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",6)~ THEN BC0AUR25 tob-rom-2
~So... I guess we won. The siege is broken, and we brought down the giant, but... did we really win, <CHARNAME>?~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
= ~I know we should be glad to even be alive. And what happened to Saradush isn't our fault. But I still can't help but think that we still lost.~
= ~We... did what we could, right? <CHARNAME>, tell me this was the best we could have done.~
END
  ++ ~I want to say it, Aura. But I feel just as lost as you.~ + tob-rom-2-1
  ++ ~We destroyed the source of the evil. Saradush is gone, but at least another won't follow its fate.~ + tob-rom-2-2
  ++ ~It's not our concern. We won the battle, and that's what matters.~ + tob-rom-2-3
  ++ ~I'm tired, Aura. Don't bother me with this now.~ + tob-rom-2-0

CHAIN BC0AUR25 tob-rom-2-0
~...I'm sorry.~
EXIT

CHAIN BC0AUR25 tob-rom-2-1
~I guess this was a wake-up call for the both of us, huh?~
EXTERN BC0AUR25 tob-rom-2-4

CHAIN BC0AUR25 tob-rom-2-2
~Right. You're right, and I keep telling myself the same thing, but...~
EXTERN BC0AUR25 tob-rom-2-4

CHAIN BC0AUR25 tob-rom-2-3
~At least we stopped this chaos before it spread. If only we could've...~
EXTERN BC0AUR25 tob-rom-2-4

CHAIN BC0AUR25 tob-rom-2-4
~I—I shouldn't be diminishing our victory here. But when I heard Saradush had fallen... I couldn't help but think back, wondering, if this was perhaps the first time we've truly failed.~
= ~We've lost a few times in the past, but it was never to the point of beyond return. Each and every time, we managed to fight our way back to a victory, and I started to feel invincible. I started believing that as long as we were together, we could overcome anything.~
= ~But we can't always win, can we? We're not capable of being everywhere, of saving the day every time, no matter how powerful we become. I feel like I've forgotten that.~
END
  ++ ~I understand. We've come so far in such a short time that we've forgotten our limits.~ + tob-rom-2-5
  ++ ~People suffer and die everywhere. We can't expect to prevent every evil in the world.~ + tob-rom-2-6
  ++ ~Blame the enemy, not ourselves. We did what we could.~ + tob-rom-2-7
  ++ ~One day, that will change. When this is over, I'll have the power to protect everybody.~ + tob-rom-2-8

CHAIN BC0AUR25 tob-rom-2-5
~It's ridiculous, <CHARNAME>. I thought I'd learned more than ever, but at some point I'd already forgotten the most basic lessons. If not, maybe I wouldn't feel this ache in my heart right now.~
EXTERN BC0AUR25 tob-rom-2-9

CHAIN BC0AUR25 tob-rom-2-6
~No, we can't. But this time, it was so close... when I close my eyes, I still think about what if things were even slightly different... if we had been quicker, if, what if...~
EXTERN BC0AUR25 tob-rom-2-9

CHAIN BC0AUR25 tob-rom-2-7
~I don't want to blame or hate anyone, <CHARNAME>. I just... I just don't want to see another ending like this.~
EXTERN BC0AUR25 tob-rom-2-9

CHAIN BC0AUR25 tob-rom-2-8
~But does a power like that even really exist? I'm not so sure.~
EXTERN BC0AUR25 tob-rom-2-9

CHAIN BC0AUR25 tob-rom-2-9
~I feel so stupid, <CHARNAME>. When I was still studying, I would dream of a world of true peace, where everyone could be happily at rest... but I've started to realize that world can't exist.~
= ~Even the gods wouldn't have that power... even they can fail, and make mistakes, and even die. If that wasn't the case... none of this destruction around us would have ever occurred.~
= ~And yet even though I know the end result of what I want is impossible... for some reason, I still can't stop myself from wanting to try my best to make it happen. Isn't that foolish?~
END
  ++ ~No. You've already changed many things for the better, and that matters.~ + tob-rom-2-10
  ++ ~Don't give up. It's not like you to accept something is impossible.~ + tob-rom-2-11
  ++ ~It's foolish to think that everyone wants a peaceful world.~ + tob-rom-2-12

CHAIN BC0AUR25 tob-rom-2-10
~Does it matter, <CHARNAME>? Have I even changed anything? Or anyone?~
END
  ++ ~Well... what about me?~ + tob-rom-2-13
  ++ ~You'll have to figure that out yourself.~ + tob-rom-2-14

CHAIN BC0AUR25 tob-rom-2-11
~...~
= ~You're right. What am I doing, thinking like this? If I can achieve even half the result I wanted, then what does the rest matter?~
= ~Thank you, <CHARNAME>. I don't know how you always seem to know the right thing to say to cheer me up... but I'll never take it for granted.~
= ~But I shouldn't let my problems get in our way right now. Let's go, <CHARNAME>. The other Bhaalspawn aren't going to wait forever.~
EXIT

CHAIN BC0AUR25 tob-rom-2-12
~I do sound a little arrogant, don't I? Here I am, talking about some kind of perfect world as though everyone wants the same thing.~
EXTERN BC0AUR25 tob-rom-2-14

CHAIN BC0AUR25 tob-rom-2-13
~I...~
EXTERN BC0AUR25 tob-rom-2-11

CHAIN BC0AUR25 tob-rom-2-14
~*sigh* Never mind. I can't answer my own questions, and I don't want to waste your time either, <CHARNAME>. Let's go. There's actual important things to worry about.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",8)~ THEN BC0AUR25 tob-rom-3
~Hey, <CHARNAME>? Can we talk for a bit? I wanted to ask how you're feeling.~ [C0BLANK]
END
  ++ ~I'm fine. What about you? These past few weeks have been especially hard on you.~ + tob-rom-3-1
  ++ ~Don't worry about me.~ + tob-rom-3-2
  ++ ~I don't feel great. The challenges ahead are only getting harder, and I'm exhausted.~ + tob-rom-3-3
  ++ ~Leave me alone.~ + tob-rom-3-0

CHAIN BC0AUR25 tob-rom-3-0
~But—~
= ~...~
= ~Alright.~
EXIT

CHAIN BC0AUR25 tob-rom-3-1
~No, it—yes. Yes, it has. It's been weighing on me. Not my doubts, but the thought that they might be holding me back, and making me a burden. This is about you, not me.~
EXTERN BC0AUR25 tob-rom-3-4

CHAIN BC0AUR25 tob-rom-3-2
~How can I not worry about you? You have the weight of the world on your shoulders, and I—I've only added to that by making you listen to my own worries as well.~
EXTERN BC0AUR25 tob-rom-3-4

CHAIN BC0AUR25 tob-rom-3-3
~I know. Everyone's tired and ready for this to be all over, and I... I can't do much to help you besides be at your side, making sure you're not alone.~
EXTERN BC0AUR25 tob-rom-3-4

CHAIN BC0AUR25 tob-rom-3-4
~I've been staying with you more often, both to talk and to be close, to touch... I wanted it for myself, at first, but the more I thought about it, the closer I came to remembering that you needed it just as much.~
= ~At least... I wanted to believe it's what you wanted. Maybe it was all to alleviate my self-doubt after all, so I have to know... do you still need me, <CHARNAME>?~
END
  ++ ~Where did this come from? Of course I still need you!~ + tob-rom-3-5
  ++ ~I'll always need you. But it'd be unfair to rely on you too much.~ + tob-rom-3-6
  ++ ~Are you afraid I'm going to abandon you?~ + tob-rom-3-7
  ++ ~I don't know.~ + tob-rom-3-8

CHAIN BC0AUR25 tob-rom-3-5
~I... I just wanted to be certain. That's all.~
EXTERN BC0AUR25 tob-rom-3-8

CHAIN BC0AUR25 tob-rom-3-6
~No, it'll... it'll never be too much. As long as you're with me, I'll do anything for you...~
EXTERN BC0AUR25 tob-rom-3-8

CHAIN BC0AUR25 tob-rom-3-7
~I trust you, <CHARNAME>. I don't ever want you to think otherwise.~
EXTERN BC0AUR25 tob-rom-3-8

CHAIN BC0AUR25 tob-rom-3-8
~You've gone through so much, and suffered more than anyone ever should... and here, when your feelings should be important, the only thing that anyone seems to care about is your destiny, and whether you'll succumb to your divine blood...~
= ~I don't want you to see you hurting, <CHARNAME>, and I especially don't want you to keep it all to yourself. Even if nobody else does, I'll always see you as you are... and I'll be here to listen to you, to give you someone to lean on, or to hold you close... if that's what you need.~
END
  ++ ~I... I think I do need that.~ + tob-rom-3-9
  ++ ~Thank you, but I really am fine.~ + tob-rom-3-10
  ++ ~Is that how you see me? Someone weak and dependent?~ + tob-rom-3-11

CHAIN BC0AUR25 tob-rom-3-9
~Then I'll give you what you need, <CHARNAME>... anything. You deserve that much.~
EXIT

CHAIN BC0AUR25 tob-rom-3-10
~If you believe in your own strength, <CHARNAME>, then I'll believe in it too. But if you ever need anything... I'll be ready to hold you close and tell you it'll all be alright.~
EXIT

CHAIN BC0AUR25 tob-rom-3-11
~No! I would never... you're stronger than I could ever be. I don't... think needing someone to be there is a sign of weakness.~
END
  ++ ~I'm sorry, that was wrong. I might really need someone to be close to.~ + tob-rom-3-9
  ++ ~I understand. But I don't need it.~ + tob-rom-3-10
  ++ ~My path is towards godhood, Aura. I can't keep relying on others forever.~ + tob-rom-3-12

CHAIN BC0AUR25 tob-rom-3-12
~I understand, but I hoped—~
= ~...~
= ~I'm sorry.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",10)~ THEN BC0AUR25 tob-rom-4
~Do you have a dream for the future, <CHARNAME>?~ [C0BLANK]
END
  ++ ~Of course I do. Who doesn't?~ + tob-rom-4-1
  ++ ~Would you like to hear about it?~ + tob-rom-4-2
  ++ ~There's too much going on as it is to even think about my future, I fear.~ + tob-rom-4-3
  ++ ~Not really. My plans never seem to amount to much when fate keeps getting in the way.~ + tob-rom-4-3

CHAIN BC0AUR25 tob-rom-4-1
~Would you tell me? Even if it's the smallest or most ridiculous thing... I've been awfully curious. What do you want, <CHARNAME>?~
END
  ++ ~I plan to keep adventuring, of course, for as long as I still can.~ + tob-rom-4-4
  ++ ~When this is over, I'm absolutely prepared to settle down. I've had my fill of excitement for a lifetime.~ + tob-rom-4-5
  ++ ~I think I'd like to finally see your home. After all you've told me about Lantan, it's high time I go there myself.~ + tob-rom-4-6
  ++ ~Let's just say it involves you, me, along with a lot of flowers and a huge audience.~ + tob-rom-4-7
  ++ ~To take my rightful mantle as a god. What else could I be meant for?~ + tob-rom-4-8

CHAIN BC0AUR25 tob-rom-4-2
~I'd love to.~
EXTERN BC0AUR25 tob-rom-4-1

CHAIN BC0AUR25 tob-rom-4-3
~I guess that's true. Every time you try to take a different direction, something inevitable steers you in the way you're expected to go... it must be so difficult.~
= ~Still, let's suppose you could do anything you wanted, once this is all over... let's say just to humor me. Would you be able to think of something?~
EXTERN BC0AUR25 tob-rom-4-1

CHAIN BC0AUR25 tob-rom-4-4
~You still haven't experienced enough, after everything? I'm a little envious. I guess this was what you were meant for all along.~
EXTERN BC0AUR25 tob-rom-4-9

CHAIN BC0AUR25 tob-rom-4-5
~I want to as well. Even if it's just for a little bit... having some time that we can finally spend in peace is like a fantasy at this point.~
EXTERN BC0AUR25 tob-rom-4-9

CHAIN BC0AUR25 tob-rom-4-6
~Oh. Well, of course if you want that, I'll definitely have to go with you... I can't wait to let you meet my whole family. They'll love you.~
EXTERN BC0AUR25 tob-rom-4-10

CHAIN BC0AUR25 tob-rom-4-7
~Hey, are you suggesting—oh, <CHARNAME>! It's still too early to even think about that, don't you know? I feel my face burning up already... but I can't say I don't like the idea...~
EXTERN BC0AUR25 tob-rom-4-10

CHAIN BC0AUR25 tob-rom-4-8
~I guess it's not my place to try and understand what that means for you, <CHARNAME>... I'm not destined for that sort of greatness.~
EXTERN BC0AUR25 tob-rom-4-9

CHAIN BC0AUR25 tob-rom-4-9
~I was just hoping... hoping that there'd always be a place for me, with you. Even if it's just to keep following your footsteps. That'd be enough.~
END
  ++ ~You're more important than that. I want you at my side, not behind me.~ + tob-rom-4-10
  ++ ~Are you having doubts? You shouldn't. My feelings for you haven't changed, nor will they ever.~ + tob-rom-4-10
  ++ ~It's hard to say what will happen. As important as our time together has been, I may have to leave you one day.~ + tob-rom-4-11

CHAIN BC0AUR25 tob-rom-4-10
~And that's all I wanted to know. I don't think there's anything I want more than to see the end of this, <CHARNAME>.~
EXTERN BC0AUR25 tob-rom-4-12

CHAIN BC0AUR25 tob-rom-4-11
~I know. I've... thought about every thing that could happen once we come to the end of this journey. Even the things I fear the most.~
EXTERN BC0AUR25 tob-rom-4-12

CHAIN BC0AUR25 tob-rom-4-12
~Because... I have my own dreams too. There's so many things I still want to do, and every single one of them includes you.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",12)~ THEN BC0AUR25 tob-rom-5
~Heehee...~ [C0BLANK]
END
  ++ ~You're finally smiling again.~ + tob-rom-5-1
  ++ ~What's put you in a good mood?~ + tob-rom-5-2

CHAIN BC0AUR25 tob-rom-5-1
~Have I not been myself lately? I guess...~
EXTERN BC0AUR25 tob-rom-5-3

CHAIN BC0AUR25 tob-rom-5-2
~Nothing. I'm just... feeling happy.~
EXTERN BC0AUR25 tob-rom-5-3

CHAIN BC0AUR25 tob-rom-5-3
~I've been thinking about a lot of things. About what we've talked about, about the battles, the ones we've won and the ones waiting for us... but today, I thought of something else that I was also taught once.~
= ~Sometimes, when it feels like you're overwhelmed by what you're expected to do, you should just try to appreciate what's within reach instead... I was trying to remember who taught me that, then I realized... it was Reika-san's words.~
= ~When I had lost my memory, and I felt lost in the world, all I could think of was trying to remember everything, and being frustrated with myself that I couldn't. I wasn't doing myself any favors... all I was doing was making myself suffer.~
= ~So, like the days I'd just take walks around the forest, seeing the beauty around me... I think I should take some time to appreciate what I have right now. Such as... having you with me.~
END
  ++ ~Living in the present is a good thing, but it's not wrong to keep the future in mind, either.~ + tob-rom-5-4
  ++ ~I'm glad you're managing to keep it together. Things have been hard for you.~ + tob-rom-5-5
  ++ ~If you're feeling better, then that's good enough. Just try to keep it up.~ + tob-rom-5-6

CHAIN BC0AUR25 tob-rom-5-4
~I know, I know. I wouldn't be able to stop imagining what could happen even if I wanted to. But right now, I don't want to think about that.~
EXTERN BC0AUR25 tob-rom-5-6

CHAIN BC0AUR25 tob-rom-5-5
~Isn't it the same for you, if not more? That's the other thing that was on my mind... I figured that if I could be happy again, then maybe you would as well.~
EXTERN BC0AUR25 tob-rom-5-6

CHAIN BC0AUR25 tob-rom-5-6
~<CHARNAME>, can I... hold your hand for a while? Just for the sake of it, nothing else.~
END
  ++ ~Of course.~ + tob-rom-5-7
  ++ ~I think you need more than that. Let me give you a hug.~ + tob-rom-5-8
  ++ ~Not right now, Aura. I need some space.~ + tob-rom-5-9

CHAIN BC0AUR25 tob-rom-5-7
~I'm so glad I had this chance to be with you. No matter what happens, what we've already had together... has meant everything.~
EXIT

CHAIN BC0AUR25 tob-rom-5-8
~Oof! Hehe, you really do know how to make me feel better, <CHARNAME>. This is nice...~
EXTERN BC0AUR25 tob-rom-5-7

CHAIN BC0AUR25 tob-rom-5-9
~Alright. But, <CHARNAME>?~
EXTERN BC0AUR25 tob-rom-5-7

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",14)~ THEN BC0AUR25 tob-rom-6
~I've been thinking about Lantan lately. While we're here in the middle of a war, my kinsmen are working hard, trying to improve upon the future.~ [C0BLANK]
= ~It's almost like I've lived in two different worlds by now. Do you think they even know what's been happening here, <CHARNAME>?~
END
  ++ ~I'd assume they would.~ + tob-rom-6-1
  ++ ~What brings this up?~ + tob-rom-6-2
  ++ ~Maybe not. We're a long way from Lantan.~ + tob-rom-6-3
  ++ ~Please don't waste time on small talk now, Aura.~ + tob-rom-6-0

CHAIN BC0AUR25 tob-rom-6-0
~Okay. If you want.~
EXIT

CHAIN BC0AUR25 tob-rom-6-1
~There's a good chance they've heard the news, at least. We're not so isolated that we ignore everything that happens on the other side of the sea. Especially if it has the potential to change the world.~
EXTERN BC0AUR25 tob-rom-6-2

CHAIN BC0AUR25 tob-rom-6-2
~I was just thinking about how strange this all is. We're here, fighting for our lives and the future. This is practically our entire world. And yet... somewhere, in the distance, people close to us might be living their lives, none the wiser to all this chaos.~
= ~Once this is all over, I could go home and realize that everything's been moving along as normal without me... and I wouldn't be able to tell if it's things are different or not, with how much I've changed.~
= ~What do you think, <CHARNAME>? Do you think you could go back to Candlekeep and live like you did before, like nothing's changed?~
END
  ++ ~I don't think so. Even if everything is the same there, I've become too different.~ + tob-rom-6-4
  ++ ~Maybe not. But that doesn't mean I won't belong in Candlekeep again.~ + tob-rom-6-5
  ++ ~What about you? Are you worried you won't fit in with your people in Lantan?~ + tob-rom-6-6
  ++ ~Let's leave that discussion for when going home is an option again.~ + tob-rom-6-7

CHAIN BC0AUR25 tob-rom-6-3
~We really are, aren't we? All this time, I've been thinking about my home... and at this point I'm so far away that I can only imagine what's happening there now.~
EXTERN BC0AUR25 tob-rom-6-2

CHAIN BC0AUR25 tob-rom-6-4
~That's what I'm scared of, too. I miss Anchoril so much... but I'm also worried that even if I go back, everything... the markets, the ships, even my family's home... it'll all feel so strange and unfamiliar to me.~
EXTERN BC0AUR25 tob-rom-6-6

CHAIN BC0AUR25 tob-rom-6-5
~I hope so. What our homes mean to us might have changed, but... the things that make them important won't.~
EXTERN BC0AUR25 tob-rom-6-6

CHAIN BC0AUR25 tob-rom-6-6
~I'm not afraid that I won't feel at home in Lantan. I'll always have my family—mother, father, Juno, Luna, Eri, the twins... all of them to accept and welcome me no matter how much I've changed. There's nothing that will change the fact I have a place with them.~
= ~Even so... I don't think I'll be able to go back and live my former, carefree life anymore... not when I can accomplish so much if I wanted to. When I could make things that could change the world...~
= ~When this is over, <CHARNAME>, I want to go home. Not only because I miss it, but because I think I need to do my part for my people. And I hope you'll come with me.~
END
  ++ ~Of course I will. We're partners in every sense of the word, aren't we?~ + tob-rom-6-8
  ++ ~I hope you'll come with me to Candlekeep, too.~ + tob-rom-6-9
  ++ ~Only because it's important to you.~ + tob-rom-6-10
  ++ ~What if I can't?~ + tob-rom-6-11

CHAIN BC0AUR25 tob-rom-6-7
~If you want, <CHARNAME>. You're right that it's more important to think of what's important now.~
EXIT

CHAIN BC0AUR25 tob-rom-6-8
~Yes... the very best partners, and more.~
EXTERN BC0AUR25 tob-rom-6-12

CHAIN BC0AUR25 tob-rom-6-9
~How could I not? Even if it weren't the great library most scholars would offer anything to enter... I'd still want to understand the place that raised you.~
EXTERN BC0AUR25 tob-rom-6-12

CHAIN BC0AUR25 tob-rom-6-10
~You're what's important to me, <CHARNAME>. I don't want to be a burden on you, I just... want to finally make a change for once.~
EXTERN BC0AUR25 tob-rom-6-12

CHAIN BC0AUR25 tob-rom-6-11
~I... I said "I hope". I can't know for certain what will happen, but my hopes won't change.~
= ~...Maybe you should pretend I never said anything, <CHARNAME>. I'm sorry.~
EXIT

CHAIN BC0AUR25 tob-rom-6-12
~As for what comes between now and then... well, we'll have plenty of time for ourselves when this journey's over, right? Hehe...~
= ~Maybe we could even travel to Kozakura together, so I can pay my respects to Reika-san's grave... I feel like if we make it through this, I can finally hold my head high and tell her I've achieved something to be proud of.~
= ~And... I know she'd be happy to see that I've found someone like you to stay at my side.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",16)~ THEN BC0AUR25 tob-rom-7
~*scribble scribble*... <DAYANDMONTH>, <YEAR>.~ [C0BLANK]
= ~That's today's date, according to my journal. I've never told you, but I've been recording everything. Down to the finest detail. Just in case... I have to try and convince myself one day that it all wasn't a dream.~
= ~It feels like it's been a long journey, but it hasn't really. A lot has just happened in that time... hasn't it?~
END
  ++ ~About as much as someone might expect in a normal lifetime.~ + tob-rom-7-1
  ++ ~You're not getting tired of adventuring, are you?~ + tob-rom-7-2
  ++ ~I don't know. Some days I feel like our lives are going by too quickly.~ + tob-rom-7-3
  ++ ~I'm too tired to talk about this right now, Aura.~ + tob-rom-7-0

CHAIN BC0AUR25 tob-rom-7-0
~Alright. I don't want my thoughts to add more to your burdens... don't worry about it.~
EXIT

CHAIN BC0AUR25 tob-rom-7-1
~I think it could be more than just one. Sometimes I feel like I've done enough in these last couple of years to make all the decades before it completely obsolete.~
EXTERN BC0AUR25 tob-rom-7-4

CHAIN BC0AUR25 tob-rom-7-2
~No... I'm not sure? Maybe I am, a little... that's not to say that I've had enough, just that...~
EXTERN BC0AUR25 tob-rom-7-4

CHAIN BC0AUR25 tob-rom-7-3
~I can't argue with that, either. There's things about our adventure that I wish could just keep going forever. But still...~
EXTERN BC0AUR25 tob-rom-7-4

CHAIN BC0AUR25 tob-rom-7-4
~*sigh* I just don't think it's fair. Nobody should have been forced to go through so much, not you, not any of the Bhaalspawn.~
= ~I had a dream last night, you know. I was at home again. My parents, my sisters, my uncle... they were all there. I hadn't forgotten about all of this, yet... as strange as it was, things felt just like they were before I left home.~
= ~The only difference was you. There, when I thought I had just woken up and gotten out of bed, and this life was the dream... I realized you were next to me. And it felt so normal.~
= ~I... really want that, <CHARNAME>. I know things may never be the way I remember them, but still... I want to have a chance at peace, and I want to have you there to live it with me.~
= ~Can—can you promise me, <CHARNAME>? Will we be able to have that, one day?~
END
  ++ ~I'm sure of it. We'll win, and then finally we'll be able to choose the life we live, together.~ + tob-rom-7-5
  ++ ~I wish it were up to me, but I have to accept whatever destiny has in store for me.~ + tob-rom-7-6
  ++ ~There's a throne waiting for me, Aura. I can't give that up so easily.~ + tob-rom-7-7
  ++ ~It's still too early to think that far ahead. Let's focus on making it through what's in front of us.~ + tob-rom-7-0

CHAIN BC0AUR25 tob-rom-7-5
~...~
= ~I believe you.~
EXTERN BC0AUR25 tob-rom-7-8

CHAIN BC0AUR25 tob-rom-7-6
~I know. Whatever happens, I'll never blame you or hold a grudge. But like I said... it's just not fair.~
EXTERN BC0AUR25 tob-rom-7-8

CHAIN BC0AUR25 tob-rom-7-7
~If that's what's important... I'll do my best to help you achieve your own dream, <CHARNAME>. Your happiness is more important than mine.~
EXTERN BC0AUR25 tob-rom-7-8

CHAIN BC0AUR25 tob-rom-7-8
~In any case... we can only keep moving forward, and doing the best we can. I can't ever forget what I am—a researcher. I have to accept the outcome, even if it's not what I want...~
= ~Don't worry about me, <CHARNAME>. Keep looking forward. I'll keep supporting you until the very end.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",18)~ THEN BC0AUR25 tob-rom-8
~I never thought I'd receive a message from my grandmother now of all times. And I really thought nothing would surprise me anymore...~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
= ~For my whole life, I've wanted to meet her, the legendary adventurer who my father's always talked about... and I never found the slightest trace. And now she's found me instead.~
= ~There's a lot I would've liked to say to her face to face, both for my own sake, and for my father who's missed her greatly. There was a long while where I wondered if she even knew I existed... but I guess she's looking out for me in her own way.~
END
  ++ ~Why won't she see you, when you've wanted to meet her for so long?~ + tob-rom-8-1
  ++ ~I'm impressed that she's even managed to be on friendly terms with Elminster.~ + tob-rom-8-2
  ++ ~Those things she left you are powerful. I'd assume it means she wants you to be safe.~ + tob-rom-8-3

CHAIN BC0AUR25 tob-rom-8-1
~Who knows? She's always been a free spirit. I don't think she means to disappoint anyone... but she's always thought about the next adventure ahead of everything else.~
EXTERN BC0AUR25 tob-rom-8-4

CHAIN BC0AUR25 tob-rom-8-2
~Hehe, you have no idea, <CHARNAME>. She's likely been around the whole world by now. I wouldn't be surprised by anyone saying they knew her, if I asked.~
EXTERN BC0AUR25 tob-rom-8-4

CHAIN BC0AUR25 tob-rom-8-3
~I know, I know. These are legendary artifacts—I recognize them from the way they were described in her book. It's just so frustrating that she can't hold her wanderlust in long enough to come and deliver them herself.~
EXTERN BC0AUR25 tob-rom-8-4

CHAIN BC0AUR25 tob-rom-8-4
~I wonder just how much she knows about everything... but she's been involved in things that might've been just as great as what we've been through. So maybe she feels these things that helped her once might do the same for me.~
= ~Sometimes when I think about the story... the one where these artifacts once came from, I can't help but imagine she... and the person she followed... were just like us. They walked, and fought, and laughed at the lightest moments alongside each other, and depended on each other when they needed each other.~
= ~Maybe they even fell in love the same way as we did... can you imagine that, <CHARNAME>? If we're actually the sequel to a greater story, with the same connections and ending?~
END
  ++ ~That seems a bit of a reach.~ + tob-rom-8-5
  ++ ~I could see that, if we're so similar to the heroes of that story.~ + tob-rom-8-6
  ++ ~Did that story have a happy ending?~ + tob-rom-8-7
  ++ ~Maybe our tale won't be the last.~ + tob-rom-8-8
  ++ ~Enough of that. We've spent long enough here.~ + tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-5
~Maybe... hehe, but I wouldn't mind if there really was such a coincidence... if it wasn't actually something greater putting it all into place.~
EXTERN BC0AUR25 tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-6
~Sometimes, I wonder if we're almost the same... I'm not as carefree as my grandmother, but this journey's shown me that I might be more like her than I thought.~
EXTERN BC0AUR25 tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-7
~That depends on which publication of the book you read... but I prefer to think that the original had a perfect ending for everyone in the end.~
EXTERN BC0AUR25 tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-8
~Maybe not... I wonder what the next one will be like, then? Will we have a part to play in it, too?~
EXTERN BC0AUR25 tob-rom-8-9

CHAIN BC0AUR25 tob-rom-8-9
~Let's go, <CHARNAME>. I'll follow your lead, and we'll find our ideal ending to this story together.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBLoveTalk","GLOBAL",20)~ THEN PLAYER1 tob-final
~You feel a pair of arms wrapping around you from behind, hands holding yours, and then a face pressed against your back.~ [C0BLANK]
DO ~IncrementGlobal("C0AuraToBLoveTalk","GLOBAL",1)~
== C0AUR25J ~Mmph...~
END
  ++ ~Hey, what's wrong?~ EXTERN C0AUR25J tob-final-1
  ++ ~You don't have to hold so tightly. I'm not going anywhere.~ EXTERN C0AUR25J tob-final-1a
  ++ ~Let go. I can't move like this.~ EXTERN C0AUR25J tob-final-1

CHAIN C0AUR25J tob-final-1
~Please stay... just for now. Don't make me let go of you.~
= ~I just... wanted to feel you close again, <CHARNAME>. I don't want to forget what it feels like... after all, who knows how many more chances I'll get?~
= ~Oh, I didn't want to show you this side of me... but I can't stand it anymore... the thought that you might disappear, and I won't even realize until it's too late... sometimes it's hard to even sleep, or I'll wake up fearing that I won't see you with me...~
= ~I'm sorry, <CHARNAME>. I'm so sorry. I'm not strong enough to accept it, even though I should...~
END
  ++ ~I don't care about being a god, Aura. I care about you.~ EXTERN C0AUR25J tob-final-3
  ++ ~Are you that worried that I'll take Bhaal's throne?~ EXTERN C0AUR25J tob-final-2
  ++ ~I told you, I'm not leaving you.~ EXTERN C0AUR25J tob-final-3
  ++ ~Maybe you're right. We won't have a lot of time left together.~ EXTERN C0AUR25J tob-final-3

CHAIN C0AUR25J tob-final-1a
~Promise you won't? At least right now, I can still...~
EXTERN C0AUR25J tob-final-1

CHAIN C0AUR25J tob-final-2
~I'm not just worried. I'm terrified, <CHARNAME>... I thought I'd conquered all my old fears, but now I've grown a new one, and I can't... I can't fight it alone.~
EXTERN C0AUR25J tob-final-3

CHAIN C0AUR25J tob-final-3
~<CHARNAME>, I want you to stay. Ever since I've known you, I haven't been able to imagine what it'd be like for you to really be gone.~
= ~The journey's almost over, and there's so much I still haven't done together with you... I wanted to bring you to see my home, to build an airship together and see the rest of the realms from the skies, to travel east and walk through the sakura gardens in Kozakura hand in hand, just the two of us...~
= ~I would be so happy... and I wanted you to be too, just as much. I've been able to learn so many things, things that I never would've imagined possible... with what I have now, I could change the world, but what's ahead of you had to be the only thing I can't possibly give!~
= ~I... I know this is selfish... that's why I didn't want to say anything all this time... but I don't... I don't want...~
END
  ++ ~Shh... it's okay, it'll all be okay... I'll always be here for you.~ EXTERN C0AUR25J tob-final-4
  ++ ~I'm conflicted too. But I can't deny I also want what's being offered to me.~ EXTERN C0AUR25J tob-final-5
  ++ ~There's no telling what'll happen once things are over. But know that I'll always love you.~ EXTERN C0AUR25J tob-final-6
  ++ ~I'm sorry. I can't give up on the chance of godhood, not after all I've done to get this far.~ EXTERN C0AUR25J tob-final-7
  
CHAIN C0AUR25J tob-final-4
~I believe you. I'll never stop believing in you, <CHARNAME>, never. But, still...~
EXTERN C0AUR25J tob-final-7

CHAIN C0AUR25J tob-final-5
~W–wait, <CHARNAME>, let me finish. There's more that I want you to know...~
EXTERN C0AUR25J tob-final-7

CHAIN C0AUR25J tob-final-6
~I... I love you too, <CHARNAME>. No matter how much changes, or what happens... I'll never stop loving you.~
EXTERN C0AUR25J tob-final-7

CHAIN C0AUR25J tob-final-7
~Even though I don't want to lose you, I still want you to do what you think is right. If you were truly asked to become a god, it'd be a great responsibility... and there's so much good you could do, if you wanted to. I can't think of anyone else who'd be more worthy.~
= ~And... I hate to imagine it, but who's to say you might even have a choice? I... I didn't just come to hold you and cry, <CHARNAME>, even though that's all I want to do... I just wanted to assure you that I wouldn't blame you, no matter what happens.~
= ~That's why... that's why I'm telling you now, instead of whenever the time comes, if you're even allowed to choose... if I can't be given any more time together with the most important person in my life, I'll treasure everything we already have, and the short time ahead of us.~
= ~So... please don't let me hold you back from whatever you want. I'd hate myself if you made a choice you regret because of me. As long as I still can... I'm here to support you, in any way I can. Because... you're the one I love more than anything, ever.~
END
  ++ ~You're more important to me than anything, Aura. Why would I give you up for anything, even godhood?~ + tob-final-8
  ++ ~Trust in me. I'll make the right choice.~ + tob-final-9
  ++ ~I won't forget or abandon you. Even if I become a god, that won't change.~ + tob-final-10
  ++ ~Thank you. I'm lucky to have had someone like you at my side all this time.~ + tob-final-11

CHAIN C0AUR25J tob-final-8
~Y–you wouldn't? Ha... haha... that'd be the greatest achievement for me... someone worth giving up eternal life and power for. I'll happily consider myself the luckiest girl in the world.~
EXTERN C0AUR25J tob-final-11

CHAIN C0AUR25J tob-final-9
~Of course you will, <CHARNAME>... I wouldn't expect anything else...~
EXTERN C0AUR25J tob-final-11

CHAIN C0AUR25J tob-final-10
~I know. Even if it won't be the same... I know you'll always remember me. Even just being remembered forever would make me a little happy.~
EXTERN C0AUR25J tob-final-11

CHAIN C0AUR25J tob-final-11
~I'm... I'm relieved to finally get these feelings off my shoulders. I've been dragging my feet in anticipation for this moment... but no more. I don't have anything holding me back anymore, <CHARNAME>. I'm with you to the end, no matter what that might be.~
EXIT