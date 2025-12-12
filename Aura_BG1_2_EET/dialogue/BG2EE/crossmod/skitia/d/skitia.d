I_C_T X3REB 1 C0AuraX3REB1
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Oh! Hello, Recorder!~
== X3REB ~Aura! It's so nice to see you. Have you come looking for another tome or manual? I might know what you want.~
== C0AURA2J ~Not today, but thank you. I can always count on you to find what I need.~
END

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("X3Emi",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraX3Emi1","GLOBAL",0)~ THEN BX3Emi C0AuraEmily1
~Hey, Aura? Could I ask just a tiny favor from you?~ [C0BLANK]
DO ~SetGlobal("C0AuraX3Emi1","GLOBAL",1)~
== BC0AURA2 ~Sure thing! It could be a big favor too, if you need. I don't mind.~
== BX3Emi ~Thanks, but just a little one will do. Could I try shooting with your bow?~
== BC0AURA2 ~With my Sunshooter? Umm... that's...~
== BX3Emi ~A little too much to ask? Never mind, then. I understand that bow means a lot to you.~
== BC0AURA2 ~Well... yes, but I do trust you, Emily, so... it's just that it's not easy to use.~
== BX3Emi ~I'm sure I can figure it out. You make it look so easy, after all. I'll just hold it like any other bow and...~
== BX3Emi ~Oh, dear. Is this where the arrow goes? That's so strange. And the way these limbs bend is completely different. And what are these little wheels supposed to do?~
== BC0AURA2 ~Those are... they're for adjusting the configuration of the... no, wait! Don't pull it like that!~
== BX3Emi ~Ah! Umm... it, it snapped. I'm so sorry.~
== BC0AURA2 ~No, the parts aren't broken. I can put them back together. Are you okay, though? The axle sprang awfully close to your face.~
== BX3Emi ~I think I'm fine. But I guess I should leave this sort of instrument to the expert. *sigh* I really wanted to try shooting with it, too...~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("X3Vie",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraX3Vie1","GLOBAL",0)~ THEN BC0AURA2 C0AuraVienxay1
~Vienxay, do you have a moment?~ [C0BLANK]
DO ~SetGlobal("C0AuraX3Vie1","GLOBAL",1)~
== BX3Vie ~So long as you promise not to go on one of your long-winded explanations about some irrelevant matter... what is it?~
== BC0AURA2 ~I was just hoping you could clarify on some parts of this Elvish text I was translating. Just for... uh, academic purposes. I've got most of it, but there's a few parts here and there... "faerzress", "Adoessuour", and "leva"... "levarithen"...~
== BX3Vie ~Levari-*thin*. By the Seldarine, if the words of my people must come from your tongue, at least make a better effort not to mangle the pronunciation.~
== BC0AURA2 ~Oops. Yep, I understand. Sorry for that. Could you help me with these other passages too? I'll make it up to you with the best tea and baked treats I have.~
== BX3Vie ~It sounds like a tiresome task. I've other things I would sooner do in my spare time... ugh, very well. Do not look at me like that. It is disturbing, how effective those wide eyes can be.~
== BC0AURA2 ~Thank you!~
== BX3Vie ~I will hold you to that promise of tea and desserts. And should this translated work become a widespread publication, I expect to be appropriately credited.~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraX3Rec1","GLOBAL",1)~ THEN BX3Reb C0AuraRecorder1
~"Hmm-hm-hmm-hmm..."~ [C0BLANK]
DO ~SetGlobal("C0AuraX3Rec1","GLOBAL",2)~
== BX3Reb ~"Free of the Dungeons Deep, to be wet by rain's boon." 
Then sun gave night away, clouds hiding rising moon.
Colder than dungeon depths, By campfire we all lay.
To rest our weary heads, until break ere of day."~
== BC0AURA2 ~Care for a spot of tea, Recorder? I just finished brewing some on the kettle, and there's more than enough to go around.~
== BX3Reb ~Oh, how kind. I just realized how parched my throat was. I'll have it with lemon and a teaspoon of honey, if we have any.~
== BC0AURA2 ~Lemon and honey, coming up! Here you go. Let's drink up while it's still nice and hot.~
== BX3Reb ~Mmm, valerian tea from Anchoril. I haven't had this in far too long... the relaxing scent is so nostalgic.~
== BC0AURA2 ~Wow, and you even know where it came from? Although... you were born in Lantan, weren't you, Recorder? Then it would make sense.~
== BX3Reb ~Indeed. I lived close to Hyacinth Fields, where valerian tea was harvested. The breeze would often carry the fragrance through our home. That's why I called it nostalgic.~
== BC0AURA2 ~You're from Anchoril too? I didn't even know that! We grew up so close to each other. It's such a shame we never met! I wish we did.~
== BX3Reb ~I agree, that would have been a lovely coincidence. But did you not leave to Sambar to study under the academy at a young age? I don't believe we would have been there at the same time for long.~
== BC0AURA2 ~That's true. Still, I would've been happy to know you sooner.~
== BX3Reb ~I believe I have met one of your sisters, however. She was a Seeker-in-training at the High Holy Crafthouse of Inspiration, I believe. Luna, was it? Violet hair?~
== BC0AURA2 ~Heehee, that's her. Hasn't ever tried a different colour as far as I remember. Oh... she wasn't, um, rude to you in any way, was she?~
== BX3Reb ~No, not at all. She wasn't the friendliest, I admit, but she was as accomodating as anyone could ask for. She seemed worthy of her station.~
== BC0AURA2 ~That's... good to hear. I remember she was never particularly happy about joining the clergy... not that she ever complained, but...~
== BX3Reb ~Aura... if this is a family matter, you don't have to tell me.~
== BC0AURA2 ~Thank you, Recorder. It's not that big of a deal. I just... wasn't thinking of it at all until now.~
== BX3Reb ~I'm so sorry. I didn't mean to bring up unhappy memories.~
== BC0AURA2 ~It's okay. I'm glad we talked anyway. After I learned we share a birthplace, I feel like we're closer than before.~
== BX3Reb ~Heehee, absolutely. It's wonderful to find such connections among friends.~
== BC0AURA2 ~Anyways, let's get back to finishing this tea before it gets cold. We should spend more time together like this, don't you agree?~
EXIT

CHAIN
IF ~InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("X3Rec",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraX3Rec2","GLOBAL",0)~ THEN BX3Reb C0AuraRecorder2
~Pardon me, Aura, but I had a question... your grandmother was Minerva Glimmershine, correct?~ [C0BLANK]
DO ~SetGlobal("C0AuraX3Rec2","GLOBAL",1)~
== BC0AURA2 ~That's right. We're related on my father's side. Although I never met her...~
== BX3Reb ~It just crossed my mind to ask because of a book I recently had the chance to revisit. It was written by her, and it spoke of her adventures in Icewind Dale, in distant Frozenfar.~
== BC0AURA2 ~Ooh, that... haha, yep. I've read that one too. My father has so many copies in his study, mother actually had to order him to stop collecting them. I think it's his way of remembering her. What do you think of the book?~
== BX3Reb ~Such a thrilling read. If all those tales were true, of serpents and demons and white dragons, your grandmother must have been an incredible adventurer.~
== BC0AURA2 ~That's what father told me, too. She was as adventurous as her mind was brilliant. She hasn't returned to Lantan in decades, though... that book was the last time she was heard from at all, eighty years ago.~
== BX3Reb ~Eighty years... even for our kin, that is too long to spend apart. I hope she returns to Lantan one day.~
== BC0AURA2 ~Kinda funny how she didn't give her book a name, though. I've seen it under at least eight different titles. That's just like her... I've been told so many stories of how lackadaisical she was with things like that.~
== BX3Reb ~Truly? She must have had an interesting character. Now I want to meet her even more.~
== BC0AURA2 ~That makes both of us. If either of us do one day, let's tell the other about it. She must have even more stories to tell than in that book!~
== BX3Reb ~I concur. I'll be there with pen and parchment in hand, ready to scribe down every tale.~
EXIT
