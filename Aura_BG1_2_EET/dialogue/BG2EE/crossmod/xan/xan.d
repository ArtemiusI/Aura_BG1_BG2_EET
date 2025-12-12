I_C_T O#XAN 0 C0AuraBG2XanStart
== C0AURA2J IF ~Global("C0AuraKnowsBG1","GLOBAL",1) IsValidForPartyDialog("C0Aura")~ THEN ~Hey, <CHARNAME>, look! It's Xan!~
== O#XAN ~Ah... and Aurelia is with you as well. It's a relief to see you haven't fallen prey to some overreaching experiment.~
== C0AURA2J ~Teehee. Coming from you, Xan, I'll just take it to mean you've been worried about my safety. Thanks.~
== O#XAN ~*sigh* Still as positive-minded as ever. That is good too, I suppose...~
END

I_C_T O#TAIRA 8 C0AuraBG2XanTairaQuest1
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Look at the poor child! We need to help her, right, Xan?~
END

I_C_T O#TAIRA 9 C0AuraBG2XanTairaQuest2
== C0AURA2J IF ~Global("C0AuraKnowsBG1","GLOBAL",1) IsValidForPartyDialog("C0Aura")~ THEN ~Oh dear. Kozah, as in the Netherese god? I knew I shouldn't have fiddled with that horrible idol back then...~
END

CHAIN
IF ~InParty("O#XAN")
Range("O#XAN",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("O#XAN",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraO#Xan","GLOBAL",0)~ THEN BO#XAN banter1
~I cannot deny my respect for your ingenious art, Aurelia. A pity you were not born an elf. Perhaps then, your legacy would be more lasting.~ [C0BLANK]
DO ~SetGlobal("C0AuraO#Xan","GLOBAL",1)~
== BC0AURA2 ~Thank you, Xan. But I have faith that whatever discoveries I leave behind will be followed by greater minds.~
== BO#XAN ~Oh, I do not doubt your name will be remembered long after your time. But can you guarantee the soul behind your works will be be eternal?~
== BC0AURA2 ~It... it doesn't matter. As long as whatever I leave behind makes the world better, I'm content.~
== BO#XAN ~Who can say that will be the case? Many things made with the purest intentions have been corrupted for darker ends, far from what their creators intended.~
== BC0AURA2 ~I know. But that's inevitable, isn't it? We can hold onto our knowledge and use it to serve only our own intentions, but that can only apply as long as we're alive. No matter how long we live, whether it be ten years, a hundred, or even a thousand... we have to let it go eventually.~
== BO#XAN ~Touché. Even my people are far from infallible. We created the mythal believing it to be the infallible protection of our kind, and yet, examples of where it was inevitably corrupted led to our downfall. We have Myth Drannor to serve as our eternal warning.~
== BO#XAN ~In retrospect, perhaps my initial belief was wrong—it will not matter what lifespan you have, whether it be an elf, gnome or human. Sooner or later, your aspirations will be forgotten by your successors, and they will use what you have left behind as they see fit, whether it be for good or ill.~
== BC0AURA2 ~...~
== BO#XAN ~Forgive me. I know it may be difficult to accept. Perhaps it is a mistake to even think on it—after all, we can do nothing to change what comes after our deaths.~
EXIT

CHAIN
IF ~InParty("O#XAN")
Range("O#XAN",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("O#XAN",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraO#Xan","GLOBAL",1)~ THEN BC0AURA2 banter2
~Xan, would you allow me to examine your moonblade?~ [C0BLANK]
DO ~SetGlobal("C0AuraO#Xan","GLOBAL",2)~
== BO#XAN ~That is impossible, I fear. Not that I distrust you, of course, but I cannot promise you will be unscathed, should the blade perceive your tampering as a threat.~
== BC0AURA2 ~I don't intend to tamper, Xan. I just wanted to learn... no Lantanna's ever had a chance to study the ancient craft of elvenkind before. And here we are, and I believe that you trust me... even if I learned a little, I'd be satisfied.~
== BO#XAN ~And what good would such knowledge do you, Aurelia? You cannot replicate the works of High Elven Magic, even had you the wisdom of a hundred lifetimes, nor would any facsimile that could be forged by your hands be of any more worth than any other magical blade. It would be pointless.~
== BC0AURA2 ~Is knowledge for its own sake not something meaningful?~
== BO#XAN ~I sympathize, and I do not mean to disrespect your skill. But I would much prefer that your knowledge be used for more meaningful purposes, whether it be designing the next trap to keep us safe during dangerous nights, or the next potion that may save any one of our lives, if only for a little longer.~
== BO#XAN ~Devoting yourself to a hopeless study is not merely wasteful, but detrimental. And as I hold the position to stop you, I will.~
== BC0AURA2 ~But—no, I understand. You have the right to refuse, Xan. I'm sorry for insisting.~
EXIT

CHAIN
IF ~InParty("O#XAN")
Range("O#XAN",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("O#XAN",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraO#XanToB","GLOBAL",0)~ THEN BO#XAN25 bantertob
~If I may have a moment, Aurelia... there is something I've been meaning to ask you.~ [C0BLANK]
DO ~SetGlobal("C0AuraO#XanToB","GLOBAL",1)~
== BC0AUR25 ~Of course, Xan. What is it?~
== BO#XAN25 ~It is regarding your grandmother, Minerva. She was one of the heroes who ventured to the Ten Towns, if I am not mistaken. I believe she wrote a book on her experiences?~
== BC0AUR25 ~That's right. The tales of the devil invasion. It was the first record of the fiend Belhifet's attempt to conquer the North.~
== BO#XAN25 ~Before we even met, I had some intention of reading that particular book for myself, yet between my misfortunes followed by joining <CHARNAME>'s cause, I never had a chance to find it. But you know the tale well, do you not?~
== BC0AUR25 ~I do, yes. I'm sorry I don't have a copy with me, but if there's any part of the story you want to know, just ask.~
== BO#XAN25 ~Perchance... was my cousin Erevain mentioned within, at all?~
== BC0AUR25 ~Xan...~
== BO#XAN25 ~To tell you the truth, I am not even sure I wish to know. But he was among those who was lured to the North by his thirst for adventure. And I learned that he died there. I went to see his resting place, and to pay my respects. None knew of him beyond the name on his grave.~
== BO#XAN25 ~I believed that was the end of it. But when I learned of your lineage, I held a weak hope that your kin, who may have met him, would have paid some respect to his memory.~
== BC0AUR25 ~His... his name was mentioned. But it was very brief. He wasn't one of the heroes who had been with my grandmother to the very end.~
== BO#XAN25 ~That much I already knew. But I care less of the glory associated with his name, and more of whether he was remembered well. No, less than that. I care whether he was remembered at all.~
== BC0AUR25 ~My grandmother met him. It was in Easthaven. I don't think they were as close as friends, but she dedicated a chapter to him, early in the book... "it was a sunny morning, and Minerva Glimmershine was perched atop a fisherman's home, feasting on trout and singing an old halfling tune she once heard and liked."~
== BC0AUR25 ~"She sang alone, and believed it would remain so, but as though beckoned, her voice was matched by a gentle male soprano. Pleasantly surprised, she searched in the fields of snow, hoping to see the source of the sudden duet. And there he stood—an elf, golden-haired and earnest-faced, meeting her eyes with a pleasant smile. She waved, and the elf waved back."~
== BC0AUR25 ~"For a moment, she hoped the elf would approach, and she would surprise him with a display of supreme acrobatics, and a new friendship, to add to those soon to come, would be born. But the elf merely nodded politely, and turned towards his intended path. Minerva did not resume her song, and her eyes followed the elf's back as it faded into the distance. She wondered if she would see him again."~
== BO#XAN25 ~Ah.~
== BC0AUR25 ~Sorry. I'm not the best storyteller, and... to be honest, my grandmother was a better inventor than she was a writer.~
== BO#XAN25 ~No, it is... better than I expected. Even the recounting of his appearance and mannerisms is as I knew him.~
== BC0AUR25 ~That's good. I hope it helped, Xan. I understand why you wanted to ask.~
== BO#XAN25 ~I thank you for this.~
== BC0AUR25 ~Not at all, Xan. I wouldn't do any less for a friend.~
EXIT