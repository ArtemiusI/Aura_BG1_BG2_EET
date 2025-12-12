CHAIN
IF ~InParty("E3Fade")
Range("E3Fade",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraE3Fade","GLOBAL",0)~ THEN BE3FADE banter1
~You're a strange one, Aura, do you know that?~
DO ~SetGlobal("C0AuraE3Fade","GLOBAL",1)~
== BC0AURA2 ~It's because of all the contraptions and gear, isn't it? I've heard it a million times. Well, not that many. More like... 8,582 times, as I can recall.~
== BE3FADE ~No, those I can get used to. They seem pretty damn useful, and I'd filch a couple for my own use if I could make heads or tails of them... er, scratch that. You didn't hear me say anything.~
== BC0AURA2 ~Note to self: draft some better preventative measures for my tools in case of sticky fingers from friends.~
== BE3FADE ~Easy, there. What I mean is, you have all these skills a thief would envy, and you don't take advantage of it at all? Now that's what I would call strange.~
== BC0AURA2 ~Well, I'm not a thief!~
== BE3FADE ~Oh, come on. You can spot a trap from a mile away, crack locks like you see right through them, and even I'd never want to get on the wrong end of your traps. If you were a Shadow Thief, I'd be jealous of you.~
== BC0AURA2 ~Ehehe... you're flattering me, but I'll say it again. I'm not a thief. You have nothing to be jealous about.~
== BE3FADE ~Never looked at a closed chest and felt the urge to break it open? Or looked at a conspicuously-shaped pocket and decided you must have what's inside?~
== BE3FADE ~You can tell me. I won't spread your naughty secrets around. Maybe.~
== BC0AURA2 ~No!~
== BE3FADE ~*sigh* And without a moment's hesitation. And here I was hoping I could rope you into being my partner-in-crime for some future heist. No dice, it seems. I can respect that... kind of.~
EXIT

CHAIN
IF ~InParty("E3Fade")
Range("E3Fade",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraE3Fade","GLOBAL",1)~ THEN BE3FADE banter2
~Ugh, the problem with having hair this long is how much of a pain it is to maintain sometimes... I need to get a better brush. This one's getting messier than a dwarf's beard.~
DO ~SetGlobal("C0AuraE3Fade","GLOBAL",2)~
== BKORGAN IF ~InParty("KORGAN")~ THEN ~What was that, fiendling? Care ter say it again?~
== BE3FADE IF ~InParty("KORGAN")~ THEN ~I said what I said, Korgan. Not my fault your ears are full of pus.~
== BE3FADE ~Hmm... although now that I think about it, you've never seemed to have that problem, Aura. You're not keeping any special secrets, are you? Come on, share a little, from one girl to another.~
== BC0AURA2 ~Not... really? I usually just use this special brush made from home. I've never thought of it as being anything special though, it's just a different design.~
== BE3FADE ~That is very special! Can I give it a try? I'll lend you whatever you want in exchange. What'll it be? Knives, lockpicks, a new...~
== BC0AURA2 ~Um... you can just take it. I trust you to give it back.~
== BE3FADE ~Ooh... now this feels great. It takes care of all the tangles without any struggle at all. You people from Lantan really know how to do things right.~
== BC0AURA2 ~Hehe, you're teasing me.~
== BE3FADE ~I'm serious! If I had known you had something like this packed in that bag of yours, I would've snuck it out a long time ago.~
== BC0AURA2 ~Huh?~
== BE3FADE ~Wait, you didn't just hear me say that!~
== BC0AURA2 ~Sure, whatever... do you want some hair oil too? Now that your head's turned down, I can see a bit of dryness at the scalp, maybe this'll take care of it... this is all I have, but I can make more.~
== BE3FADE ~You have that as well?! Is there anything you can't do? Oh, we're going to get along great, I can already tell...~
EXIT

CHAIN
IF ~InParty("E3Fade")
Range("E3Fade",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraE3Fade","GLOBAL",2)~ THEN BC0AURA2 banter3
~Fade, can I ask you a few things about the fey'ri? This is the first time I've been lucky enough to meet one, and a friendly one as well. I've got questions I can think of no one better to answer.~
DO ~SetGlobal("C0AuraE3Fade","GLOBAL",3)~
== BE3FADE ~If it were anyone else, I'd give them a cold look and start walking away. You, though... alright, fine. Just don't get carried away.~
== BC0AURA2 ~No, of course not... I've just been thinking that you aren't anything like the books say. Even your appearance is so... unique. All the drawings of fey'ri I've seen are so fearsome, with copper skin, horns, batlike wings... but you're so... well, normal, relatively speaking.~
== BE3FADE ~My tail doesn't disturb you at all?~
== BC0AURA2 ~Well... I was startled when I saw it lashing for the first time, I'll be honest about that. But I've kind of just accepted it now. Plus, it's the least scary thing I could imagine you having. In some ways, it's kind of cute.~
== BE3FADE ~It's... ha ha ha! You know, I'm usually annoyed by these kinds of conversations, but having my tail called cute is a new one. I'll let it slide. People rarely appreciate the 'special' parts of me, so thank you for that.~
== BC0AURA2 ~Would you mind letting me make a drawing of you sometime? I'm not an amazing artist, but there's some things that I see that I just want to keep on paper.~
== BE3FADE ~You're not going to add it to some catalog of otherworldly creatures and publish it, are you? I like you, Aura, but there's a few things I won't stand for, and being displayed like an oddity is one of them.~
== BC0AURA2 ~Of course not! I just want to make a sketch of a pretty friend for the memories, how about that?~
== BE3FADE ~That's much better. I'll be your model, Aura, but you'll have to wait for me to figure out the best attire. And the pose. That's even more important.~
EXIT

CHAIN
IF ~InParty("E3Fade")
Range("E3Fade",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("E3Fade",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraE3FadeToB","GLOBAL",0)~ THEN BC0AUR25 bantertob
~Agh, this stupid strap is being really annoying today... if I didn't still need it, I'd just cut it with my knife... Aura, could you help me out a little?~
DO ~SetGlobal("C0AuraE3FadeToB","GLOBAL",1)~
== BC0AUR25 ~Hm? Oh, sure. Right here, yep?~
== BE3FAD25 ~Yep. Right there... just reach up a little... a little more... and... aha! Gotcha!~
== BC0AUR25 ~Oof—! Hey, hey! Knock that off, and put me down, Fade!~
== BE3FAD25 ~Ahaha! Nope, not while your indignation is just so adorable. This make my mood better every time I do it.~
== BC0AUR25 ~It definitely doesn't improve my mood... okay, okay, put me down now, I'm not going to be able to feel my legs at this rate...~
== BE3FAD25 ~Mmh... fine.~
== BC0AUR25 ~*sigh* Don't you think you're just being a little too much with your teasing? I know it's not mean-spirited, but at this rate, I might be afraid to approach you anymore.~
== BE3FAD25 ~Point taken. I just... mm, I'm sorry. It's just, who knows for how much longer I'll be able to, you know? We'll go our separate ways eventually, and I can make you remember me with a little mischief, it's better than nothing.~
== BC0AUR25 ~I'm not going to forget about you, Fade. You're good at hiding, but you're even better at make people remember you when you want it.~
== BE3FAD25 ~I know, I know. You won't. I don't think you ever forget a thing, Aura. But, wherever we end up after this, we'll make sure meet again someday, right? I promise, I won't play a trick on you every time.~
== BC0AUR25 ~Hehe... I'll think about it, but... you might want to take a look at your tail first.~
== BE3FAD25 ~Huh? What about my t... ack! What is this thing? By the Abyss, it's ugly, and makes such an irritating tinkling noise! When did you clasp this onto me? And why?~
== BC0AUR25 ~Hmm... who knows? I'll ask the person who's been such a bad influence, I guess.~
== BE3FAD25 ~Ooh... impaling me on my own sword, are you?~
== BC0AUR25 ~Don't you regret it now?~
== BE3FAD25 ~Yes! Well... maybe not? Argh, I don't know, just take it off! I can't do any thieving with this on! Please?~
== BC0AUR25 ~Heehee. You don't even need to ask.~
EXIT