// Verr

CHAIN
IF ~InParty("L#2VERR")
Range("L#2VERR",15)
!StateCheck("L#2VERR",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Verr1","GLOBAL",0)~ THEN BC0AURA2 C0AuraVerr1
~Care for a biscuit, Verr'Sza?~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Verr1","GLOBAL",1)~
== L#2VERRB ~I do not care for your crumbly, nauseatingly-sweet pastries, no.~
== BC0AURA2 ~Your loss. Though you probably don't have the molars for them anyway, right?~
== L#2VERRB ~You're never going to grow any muscles when all you crave are sweets, girl. All they'll do is rot your teeth.~
== BC0AURA2 ~Hey, rude! My mother drilled the practice of dental care right in the middle of my head, I'll have you know. Otherwise she'd never let me eat sugary foods at all.~
== L#2VERRB ~It's a wonder you haven't gotten as fat as the rest of your kind yet. If you cared to get stronger, add some meat to your diet.~
== BC0AURA2 ~I'm a vegetarian, Verr.~
== L#2VERRB ~That would explain the pathetic meals whenever you're on cooking duty. And I had thought you simply lacked the talent to hunt.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2VERR",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Verr1","GLOBAL",0)~ THEN L#2VERRB C0AuraVerr2
~You are far too kind, little gnome.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Verr1","GLOBAL",1)~
== BC0AURA2 ~What do you mean, "too kind"? Would you rather I be cruel and heartless?~
== L#2VERRB ~There's a place for cruelty when it comes to our enemies. When you hesitate to kill those with the intent to kill you, it is nothing more than stupidity.~
== BC0AURA2 ~I don't believe it's stupid to not want a world where the only way to be safe is to kill anyone who's dangerous.~
== L#2VERRB ~You'll regret your words when you or someone else in this group suffers from your inaction.~
== BC0AURA2 ~No. That will never happen. I'll protect my friends with all that I have. I just won't kill others if I can avoid it.~
== L#2VERRB ~Bah. We are living in reality, not some idealistic fantasy land. But I think only a taste of what life is really like will wake you up.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2VERR",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2VerrToB","GLOBAL",0)~ THEN L#2VE25B C0AuraVerrToB
~No.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2VerrToB","GLOBAL",1)~
== BC0AUR25 ~But it's—~
== L#2VE25B ~I said no!~
== BC0AUR25 ~Oh, come on! It'll make your fur nice and silky! You've needed grooming for ages.~
== L#2VE25B ~I am not a housecat, you ridiculous creature! I do not need my fur brushed!~
== BC0AUR25 ~You'll like it! Don't tell me you enjoy having loose hairs and dust on that mangy coat?~
== L#2VE25B ~My coat is not mangy!~
== BC0AUR25 ~It's not that bad, I promise! At most, it'll tickle you.~
== BC0AUR25 IF ~IsValidForPartyDialog("L#2PHAL")~ THEN ~Phalh liked being brushed so much, he was basically purring!~
== L#2VE25B IF ~IsValidForPartyDialog("L#2PHAL")~ THEN ~I was doing nothing of the sort!~
== L#2VE25B ~I don't know if you're delusional or just suicidal, but do not treat me like your pet. My patience for you is thin enough as it is. Now go away!~
== BC0AUR25 ~Fine. Then I'll do it when you're asleep.~
== L#2VE25B ~Don't you dare. I've practiced sleeping with one eye open. You come anywhere close to me with that, you'll breathe just long enough to regret it.~
== BC0AUR25 ~*pout* Bluuuueeh. You mean cat.~
EXIT

// Phalh

CHAIN
IF ~InParty("L#2PHAL")
Range("L#2PHAL",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",0)~ THEN BC0AURA2 C0AuraPhalh1
~Hey there, Phalh... are you really Phalh?~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",1)~
== L#2PHALB ~I... am, yes. Is this some kind of trick question?~
== BC0AURA2 ~Oh, no. It's just... goodness, you grew up fast! I can't believe you're taller than me now.~
== L#2PHALB ~Maybe, but I'm still below average as far as my people go. It's a little disappointing.~
== BC0AURA2 ~I know what you mean. I've always been one of the smallest in my family. Even my brother's got an inch over me, and he's fifteen years younger than I am!~
== L#2PHALB ~Uncle Verr says my growth's slowed down, but it hasn't stopped yet. I might even be bigger than him one day, if I'm lucky and eat well enough.~
== BC0AURA2 ~Oh, come on, do you really have to rub it in? At this rate everyone I know is going to outgrow me soon!~
== L#2PHALB ~Ahaha... sorry.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",1)~ THEN L#2PHALB C0AuraPhalh2
~Do you think you could teach me how to craft things like you can, Aura?~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",2)~
== BC0AURA2 ~I'm not very good at teaching, Phalh. If you want to learn, why not study at the Sambaran academy for a year or two?~
== L#2PHALB ~Meh... going to school sounds boring. Not to mention, I don't think I'd be very welcome.~
== BC0AURA2 ~Well... I don't think I can help you any more than I did when you were still young. Remember when I tried to teach you the principle theories of alchemical equilibrium and you ended up falling asleep?~
== L#2PHALB ~Oh. Um... yes. I also drooled a little on your book too. You weren't too happy about that.~
== BC0AURA2 ~Really, Phalh, I don't think it'd be that difficult for you to learn artifice if you tried. You just need to find something you're interested in. How about you borrow my Manual of Wondrous Crafts for a few days and see what you can do with that?~
== L#2PHALB ~Sure, I'll give it a read when I have time. And I'll take good care of it this time.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",2)~ THEN L#2PHALB C0AuraPhalh3
~*yaaaawn* ..."imbue the... elemental essence on the chosen item for enchantment... then..." oh, I can't remember.~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",3)~
== BC0AURA2 ~Phalh, you okay? You look like you're about to fall asleep on your feet! Don't tell me you've been reading all night!~
== L#2PHALB ~Zzz... *snort* I couldn't help it, I really... wanted to know how to make something powerful. But it's hard.~
== BC0AURA2 ~*sigh* I told you, don't try to memorize everything at once! Take it easy, otherwise you'll remember it wrong. Then if you actually try to make something, you could end up seriously hurting yourself!~
== L#2PHALB ~This crafting magical artifacts stuff is hard.~
== BC0AURA2 ~Well, yes. Of course. It's magic, after all. Didn't you also work hard to learn how to use spells yourself?~
== L#2PHALB ~With Uncle Verr, who barely knows any magic, being of no help on that end? Yep, it was hard work alright.~
== L#2VERRB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~I heard that!~
== L#2PHALB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~I know, uncle. That's the point.~
== L#2VERRB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~*grin* You cheeky brat.~
== BC0AURA2 ~I think you're just a practical learner, Phalh. Maybe the best way for you to learn is to actually make something.~
== L#2PHALB ~Really? I agree I'd learn more quickly like that, but I thought you just said I could hurt myself.~
== BC0AURA2 ~Don't worry, I'll keep an eye on you while you're working. It'll be fun!~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",3)~ THEN L#2PHALB C0AuraPhalh4
~And now, I'm supposed to cast the spell I want, right? I've been wanting to do this step for ages!~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",4)~
== BC0AURA2 ~Patience, Phalh. But yep, it's time to apply the enchantment.~
== L#2PHALB ~Aha, I've done it! I can feel the magic imbuing itself into the gauntlets. It worked!~
== BC0AURA2 ~Nice work, Phalh! Now you've learned the basics of magical crafting, so you'll pick up the rest in no time.~
== L#2PHALB ~This was easy, thanks to your help. But I thought you said you'd make sure I didn't get hurt. I burned my hand earlier...~
== BC0AURA2 ~Well, you were the one who decided it'd be faster to draw the glyphs directly on the metal instead of using the parchment like I told you to. You're still too impatient.~
== L#2VERRB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~I've told you the same before, kid. I can't believe I'm agreeing with the gnome.~
== L#2PHALB ~Mmph... okay, I'll admit that was my own fault. But I was excited!~
== BC0AURA2 ~It's okay, I get it. But I wouldn't try making anything without supervision from now on.~
== L#2PHALB ~So... we're done now, right? I'm pretty tired.~
== BC0AURA2 ~No, there's one step left!~
== L#2PHALB ~Ugh, still another step? I thought enchanting this thing would be the end!~
== BC0AURA2 ~You'll like this, silly. You still have to try the enchantment out, remember?~
== L#2PHALB ~Oh! That's what you meant. Yes, I'd absolutely like to do that. Let me just make sure they fit first.~
== BC0AURA2 ~You, uh, didn't make sure the gauntlets were your size before you chose them?~
== L#2PHALB ~...I got too excited.~
DO ~GiveItemCreate("c0abracz","l#2phal",1,0,0)~ EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#2PHAL",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#2Phalh1","GLOBAL",4)~ THEN L#2PHALB C0AuraPhalh5
~*hissss* Ow, it burns! Hot, hot, hot!~ [C0BLANK]
DO ~SetGlobal("C0AuraL#2Phalh1","GLOBAL",5)~
== L#2VERRB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~What happened, boy?!~
== L#2PHALB IF ~IsValidForPartyDialog("L#2VERR")~ THEN ~Nothing, uncle. I just... ow, burned myself by accident.~
== BC0AURA2 ~Phalh? Hey, what are you doing? I told you not to try any crazy experiments on your own!~
== L#2PHALB ~You would never have agreed if I asked you what I wanted to try...~
== BC0AURA2 ~Is that... charcoal? And powder? You're trying to make an explosive, Phalh! I said you can't do that!~
== L#2PHALB ~See? This is why I didn't ask you. I just wanted to try making the smoke bombs mentioned in the alchemy book. I didn't think it'd be this dangerous.~
== BC0AURA2 ~I told you, Phalh, explosives aren't to be messed with. They're tools of destruction—that's all they're good for. Even the person who makes them isn't certain to be safe. I wouldn't ever make them if I didn't think they were needed.~
== L#2PHALB ~But I thought when our lives are so dangerous, maybe we needed some power like this. Even you can't argue with that... still, I'm sorry I tried making them behind your back.~
== BC0AURA2 ~*sigh* It's okay. Just... let me see where you went wrong, so I can teach you how to do it properly. I don't want you burning yourself even worse. And use this ointment for your hands.~
== L#2PHALB ~Okay. Thanks... and, sorry.~
== BC0AURA2 ~I said it's okay. You're just like my little brother, always hurting himself trying to do things before he's ready. I just have to take care of you the same way.~
== L#2PHALB ~Ugh... you're scratching behind my ears again? I thought you'd stop doing that now that I've grown up.~
== BC0AURA2 ~Heehee. Only because you've gotten so tall. Now that you're sitting down, I have to take the chance!~
== L#2PHALB ~Fine...~
DO ~AddSpecialAbility("c0aphalb")~ EXIT