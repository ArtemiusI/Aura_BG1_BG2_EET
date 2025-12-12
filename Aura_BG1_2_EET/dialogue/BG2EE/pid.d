CHAIN IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Global("C0AuraInsulted","GLOBAL",0)~ THEN C0AURA2J pid
~Yep?~ [C0AU022]
END
 + ~!AreaCheck("C0AU01") Global("NoCraftOnlyOnce","LOCALS",0)~ + ~I'd like you to craft something for me.~ DO ~SetGlobal("NoCraftOnlyOnce","LOCALS",1)~ + NOCRAFT
 + ~AreaCheck("C0AU01")~ + ~I'd like you to craft something for me.~ + CRAFT
 + ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Flirt)~ + FLIRT
 ++ ~Do you have any advice?~ + ADVICE
 ++ ~What are you thinking about?~ + RANDTALK
 ++ ~Can I ask you something?~ + QUESTIONS
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT

CHAIN C0AURA2J NOCRAFT
~Oh, well... I'd love to, but you know, I don't have my important tools with me right now. Let's get back to my workshop, and then we can talk.~
EXIT

CHAIN C0AURA2J CRAFT
~Sure thing! Remember, if I'm going to make anything, I need both the schematics and components. Let's see what I can do with what you've got...~
== C0AURA2J IF ~PartyHasItem("c0anotea")~ THEN ~There's that schematic Jan wrote for improving his launcher. I'm, uh, not sure how successful it will be, but it's worth a shot.~ [C0SCROLL]
== C0AURA2J IF ~PartyHasItem("c0anote3")~ THEN ~The Runic Armor of Grounding... my great-granduncle designed that, you know. Just a heads-up, though... it's a little more technical than just wearing the armor. If you aren't intelligent enough to understand how it works, you're more in danger of getting shocked by it than the enemy.~ [C0SCROLL]
== C0AURA2J IF ~PartyHasItem("c0anote4")~ THEN ~Ooh, Blinking Boots. Those are real fun to make, and a lot more reliable to wear on your feet than the Boots of Phasing. Not too expensive, either.~ [C0SCROLL]
== C0AURA2J IF ~PartyHasItem("c0anote5")~ THEN ~There's the Greater Bracers of Archery. Anyone who wears those won't miss a shot. Very tricky to make, but powerful.~ [C0SCROLL]
== C0AURA2J IF ~PartyHasItem("c0anote6")~ THEN ~Aah... there's master Galarin's orb. I've never tried making it, but it's a powerful antimagic tool. A little expensive to make, though.~ [C0SCROLL]
== C0AURA2J IF ~PartyHasItem("c0anote7")~ THEN ~The Ring of the Ram, huh? That's a neat magical item. With the improvements detailed on the schematics, I can make its magic a lot more impactful.~ [C0SCROLL]
== C0AURA2J IF ~PartyHasItem("c0anote8")~ THEN ~The Headband of Intellect! Uncle Marius had one with unique enhancements that he designed. I think I managed to theorize his technique, so I could replicate it with the right components.~ [C0SCROLL]
== C0AURA2J IF ~PartyHasItem("c0anote9")~ THEN ~And there's the Spellbreaker, patented by Craftmistress Avalee... the design is restricted knowledge within Lantan because of people abusing their powers, but I, uh... learned the technique on my own. Don't ask how. It'll break any magical defense.~ [C0SCROLL]
END
IF ~OR(8)
PartyHasItem("c0anote3")
PartyHasItem("c0anote4")
PartyHasItem("c0anote5")
PartyHasItem("c0anote6")
PartyHasItem("c0anote7")
PartyHasItem("c0anote8")
PartyHasItem("c0anote9")
PartyHasItem("c0anotea")~ + CRAFT-SCHEMATICS
IF ~!PartyHasItem("c0anote3")
!PartyHasItem("c0anote4")
!PartyHasItem("c0anote5")
!PartyHasItem("c0anote6")
!PartyHasItem("c0anote7")
!PartyHasItem("c0anote8")
!PartyHasItem("c0anote9")
!PartyHasItem("c0anotea")~ + CRAFT-NO-SCHEMATICS

CHAIN C0AURA2J CRAFT-NO-SCHEMATICS
~Hmm... it doesn't look like you have any design schematics with you. When you find one, gather the components needed to make the item and I'll do my part, okay?~
EXIT

CHAIN C0AURA2J CRAFT-SCHEMATICS
~If you've got the components for any of those, we can get right to work. What do you think?~
END
+ ~PartyHasItem("c0anotea")
PartyHasItem("xbow12")
PartyHasItem("xbow06")
PartyHasItem("scrl1n")
PartyHasItem("misc43")
PartyHasItem("misc42")
PartyGoldGT(5999)~ + ~I've got the components for the Flasher Launcher mk.II. Let's work on that.~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",8)
ActionOverride("CraftForge",TakePartyItemNum("xbow12",1))
ActionOverride("CraftForge",TakePartyItemNum("xbow06",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl1n",1))
ActionOverride("CraftForge",TakePartyItemNum("misc43",1))
ActionOverride("CraftForge",TakePartyItemNum("misc42",1))
ActionOverride("CraftForge",TakePartyGold(6000))
ActionOverride("CraftForge",TakePartyItem("c0anotea"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote3")
PartyHasItem("chan12")
NumItemsPartyGT("scrl05",1)
PartyHasItem("wand07")
PartyHasItem("misc6z")
PartyGoldGT(9999)~ + ~I've got the components for the Runic Armor of Grounding. Let's work on that.~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",1)
ActionOverride("CraftForge",TakePartyItemNum("chan12",1))
ActionOverride("CraftForge",TakePartyItemNum("wand07",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl05",2))
ActionOverride("CraftForge",TakePartyItemNum("misc6z",1))
ActionOverride("CraftForge",TakePartyGold(10000))
ActionOverride("CraftForge",TakePartyItem("c0anote3"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote4")
PartyHasItem("boot08")
PartyHasItem("scrl6q")
PartyHasItem("scrl1h")
PartyHasItem("misc45")
PartyGoldGT(4999)~ + ~I've got the components for the Blinking Boots. Let's work on that.~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",2)
ActionOverride("CraftForge",TakePartyItemNum("boot08",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl6q",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl1h",1))
ActionOverride("CraftForge",TakePartyItemNum("misc45",1))
ActionOverride("CraftForge",TakePartyGold(5000))
ActionOverride("CraftForge",TakePartyItem("c0anote4"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote5")
PartyHasItem("brac04")
PartyHasItem("helm20")
PartyHasItem("potn41")
NumItemsPartyGT("misc42",1)
PartyGoldGT(7499)~ + ~I've got the components for the Greater Bracers of Archery. Let's work on that.~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",3)
ActionOverride("CraftForge",TakePartyItemNum("brac04",1))
ActionOverride("CraftForge",TakePartyItemNum("helm20",1))
ActionOverride("CraftForge",TakePartyItemNum("potn41",1))
ActionOverride("CraftForge",TakePartyItemNum("misc42",2))
ActionOverride("CraftForge",TakePartyGold(7500))
ActionOverride("CraftForge",TakePartyItem("c0anote5"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote6")
NumItemsPartyGT("misc41",1)
PartyHasItem("scrl07")
PartyHasItem("amul19")
PartyGoldGT(7999)~ + ~I've got the components for Galarin's Orb of Warding. Let's work on that.~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",4)
ActionOverride("CraftForge",TakePartyItemNum("misc41",2))
ActionOverride("CraftForge",TakePartyItemNum("scrl07",1))
ActionOverride("CraftForge",TakePartyItemNum("amul19",1))
ActionOverride("CraftForge",TakePartyGold(8000))
ActionOverride("CraftForge",TakePartyItem("c0anote6"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote7")
NumItemsPartyGT("scrl91",2)
PartyHasItem("ring33")
PartyHasItem("scrl8q")
NumItemsPartyGT("misc42",1)
PartyGoldGT(4999)~ + ~I've got the components for the Improved Ring of the Ram. Let's work on that.~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",5)
ActionOverride("CraftForge",TakePartyItemNum("scrl91",3))
ActionOverride("CraftForge",TakePartyItemNum("ring33",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl8q",1))
ActionOverride("CraftForge",TakePartyItemNum("misc42",2))
ActionOverride("CraftForge",TakePartyGold(5000))
ActionOverride("CraftForge",TakePartyItem("c0anote7"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote8")
PartyHasItem("ring40")
PartyHasItem("amul16")
PartyHasItem("misc44")
PartyGoldGT(9999)~ + ~I've got the components for the Headband of Intellect. Let's work on that.~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",6)
ActionOverride("CraftForge",TakePartyItemNum("ring40",1))
ActionOverride("CraftForge",TakePartyItemNum("amul16",1))
ActionOverride("CraftForge",TakePartyItemNum("misc44",1))
ActionOverride("CraftForge",TakePartyGold(10000))
ActionOverride("CraftForge",TakePartyItem("c0anote8"))~ + CRAFT-CUTSCENE
+ ~PartyHasItem("c0anote9")
PartyHasItem("scrl9m")
NumItemsPartyGT("scrl7m",2)
NumItemsPartyGT("misc44",1)
PartyGoldGT(11999)~ + ~I've got the components for the Spellbreaker. Let's work on that.~ DO ~SetGlobal("C0AuraCraftItem","C0AU01",7)
ActionOverride("CraftForge",TakePartyItemNum("scrl9m",1))
ActionOverride("CraftForge",TakePartyItemNum("scrl7m",3))
ActionOverride("CraftForge",TakePartyItemNum("misc44",2))
ActionOverride("CraftForge",TakePartyGold(12000))
ActionOverride("CraftForge",TakePartyItem("c0anote9"))~ + CRAFT-CUTSCENE
++ ~I'd rather not work on anything right now.~ + CRAFT-EXIT

CHAIN C0AURA2J CRAFT-CUTSCENE
~Sure thing! I'll guide you through the process on the schematics, and we'll make the item together. Let's get started!~
DO ~StartCutSceneMode()
StartCutScene("C0ACRAFT")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraFinishedCrafting","GLOBAL",1)~ THEN C0AURA2J FINISH-CRAFT
~Ta-da! Isn't it perfect? I'm sure we'll make great use of it, too. I'll leave it up to you how exactly to use it, of course. I'm exhausted, though... who wants some tea?~
DO ~SetGlobal("C0AuraFinishedCrafting","GLOBAL",0)~
EXIT

CHAIN C0AURA2J CRAFT-EXIT
~Okay. If you want me to craft anything, come back here and we can discuss it again.~
EXIT

CHAIN C0AURA2J stringfix
~Ick. I'll have to see what I can do about that. *ahem* 'La, la...'~
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0areset")~ EXIT

CHAIN C0AURA2J ADVICE
~You're asking me for advice? Umm, let me think...~
END
IF ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-DEFAULT-1
IF ~RandomNum(4,1)
Global("TalkedToMadeen","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-MAGE
IF ~RandomNum(4,2)
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
Global("HaerDalisPlotStarted","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-BARD
IF ~RandomNum(4,3)
Global("GaalSpoke","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-CLERIC
IF ~RandomNum(4,4)
Global("TMAcceptance","GLOBAL",1)
Global("loganjob1","GLOBAL",0)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-DRUID
IF ~PartyGoldGT(14999)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + CHAPTER-2-ALLGOLD
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%)
Global("WorkingForBodhi","GLOBAL",0)~ + CHAPTER-3-ARAN
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%)
Global("WorkingForBodhi","GLOBAL",1)
Global("C0AuraTalksAboutBodhi","GLOBAL",0)~ DO ~SetGlobal("C0AuraTalksAboutBodhi","GLOBAL",1)~ + CHAPTER-3-BODHI-1
IF ~Global("Chapter","GLOBAL",%bg2_chapter_3%)
Global("WorkingForBodhi","GLOBAL",1)
Global("C0AuraTalksAboutBodhi","GLOBAL",1)~ + CHAPTER-3-BODHI-2
IF ~Global("Chapter","GLOBAL",%bg2_chapter_4%)
GlobalLT("AsylumPlot","GLOBAL",11)~ + CHAPTER-4-BEFORE-SPELLHOLD
IF ~Global("Chapter","GLOBAL",%bg2_chapter_4%)
GlobalGT("AsylumPlot","GLOBAL",10)~ + CHAPTER-4-IN-SPELLHOLD
IF ~Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + CHAPTER-5
IF ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
!Dead("C6Bodhi")~ + CHAPTER-6-BODHI-ALIVE
IF ~Global("Chapter","GLOBAL",%bg2_chapter_6%)
Dead("C6Bodhi")~ + CHAPTER-6-BODHI-DEAD
IF ~Global("Chapter","GLOBAL",%bg2_chapter_7%)
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")~ + CHAPTER-7-SULDAN
IF ~Global("Chapter","GLOBAL",%bg2_chapter_7%)
OR(6)
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")~ + CHAPTER-7-HELL

CHAIN C0AURA2J CHAPTER-2-DEFAULT-1
~Oh, I don't know. Athkatla's not a very friendly place, so I don't go outdoors much. But I'm sure there's plenty of tasks for us to earn some gold if you look hard enough.~
EXIT

CHAIN C0AURA2J CHAPTER-2-MAGE
~You know that big Sphere in the Slums, close to where the Jansen home is? I've heard the Cowled Wizards have been looking into a way to get inside it. I think they have a representative in the Government District. Why don't we meet them and see if there's something for us to do?~
EXIT

CHAIN C0AURA2J CHAPTER-2-BARD
~You know the Five Flagons, <CHARNAME>? The Sigil troupe are a band of actors who perform at the stage beneath the tavern. I've been to a few of their plays... they're amazing. Why don't we check them out when we have a chance?~
EXIT

CHAIN C0AURA2J CHAPTER-2-CLERIC
~I was out at the Temple District this one time and got screeched at by a creepy man with his eyes gouged out, can you believe it? They were going on about some god called the Unseeing Eye. Freaky. I hear the churches aren't so happy about them.~
EXIT

CHAIN C0AURA2J CHAPTER-2-DRUID
~I've wanted to go to Trademeet ever since I came to Amn. It's supposed to be one of the wealthiest trade centers outside of the city. Maybe we could even find some Lantanese crafts!~
EXIT

CHAIN C0AURA2J CHAPTER-2-ALLGOLD
~I think we've all the gold we need now, so why don't we go and find out who our mysterious ally might be?~
EXIT

CHAIN C0AURA2J CHAPTER-3-ARAN
~I'm not worried about the Shadow Thieves betraying us. I'm more worried they'll force us to do their dirty work. But it's not like we have any other choice... do we?~
EXIT

CHAIN C0AURA2J CHAPTER-3-BODHI-1
~Do you think Bodhi really means to help us, <CHARNAME>?~
END
++ ~I think so.~ + CHAPTER-3-BODHI-1-1
++ ~Who knows.~ + CHAPTER-3-BODHI-1-2
++ ~Do you distrust her?~ + CHAPTER-3-BODHI-1-2

CHAIN C0AURA2J CHAPTER-3-BODHI-1-1
~Really? I mean... I think I can trust in your leadership, so it's not just because you're too trusting. Still...~
EXTERN C0AURA2J CHAPTER-3-BODHI-1-2

CHAIN C0AURA2J CHAPTER-3-BODHI-1-2
~It's just that... I can believe she has a reason to help us right now. But afterwards... aren't you worried she might work against our best interest if she gets... whatever it is she wants?~
END
++ ~We'll worry about that when the time comes. For now, we need her help.~ + CHAPTER-3-BODHI-1-3
++ ~This is a temporary alliance. I'm fully prepared for any sort of treachery.~ + CHAPTER-3-BODHI-1-3
++ ~I guess we'll just have to hope for the best.~ + CHAPTER-3-BODHI-1-3

CHAIN C0AURA2J CHAPTER-3-BODHI-1-3
~*sigh* Guess that's the best answer I can hope for. Maybe I'm just a little too on edge. I can't help but get goosebumps every time she speaks.~
EXIT

CHAIN C0AURA2J CHAPTER-3-BODHI-2
~You've heard my piece, <CHARNAME>. I'm not too comfortable with the sort of help we're getting, but I have to put my trust in you... so follow what course you think is right.~
EXIT

CHAIN C0AURA2J CHAPTER-4-BEFORE-SPELLHOLD
~I'm... still getting my bearings after getting off the ship, <CHARNAME>. I'm sorry... I can't put my thoughts in order right now. Maybe later.~
EXIT

CHAIN C0AURA2J CHAPTER-4-IN-SPELLHOLD
~Well... we're in now. And I absolutely hate every inch of it. Please, let's just... do our part and get out of here.~
EXIT

CHAIN C0AURA2J CHAPTER-5
~The Underdark is a strange, terrifying, yet... mystifying place. This is the first time I've ever been here, and I know it's dangerous... but I can't help but want to see more of it. And maybe some of my underground cousins, if they're willing to talk to us...~
EXIT

CHAIN C0AURA2J CHAPTER-6-BODHI-ALIVE
~After everything Bodhi's done to us and others, I'm not even going to pretend I'm not glad we'll have a chance to stop their evil. Even if it's just another task left to us, let's... do our best and finish this.~
EXIT

CHAIN C0AURA2J CHAPTER-6-BODHI-DEAD
~<CHARNAME>, I think you know better than I do what the next step should be. I'll just follow your lead.~
EXIT

CHAIN C0AURA2J CHAPTER-7-SULDAN
~Suldanessellar, it's... beautiful. It's so beautiful, I could compare it to my homeland... I only wish there wasn't this much destruction and death. I want to stop it. Please, let's save them. All of them.~
EXIT

CHAIN C0AURA2J CHAPTER-7-HELL
~This won't be the end of the road for us, <CHARNAME>... not if we keep looking out for each other. I'm ready for our last stand.~
EXIT

CHAIN C0AURA2J RANDTALK
~Right now? Well...~
END
IF ~RandomNum(9,1)~ + RANDTALK-1
IF ~RandomNum(9,2)~ + RANDTALK-2
IF ~RandomNum(9,3)~ + RANDTALK-3
IF ~RandomNum(9,4)~ + RANDTALK-4
IF ~RandomNum(9,5)~ + RANDTALK-5
IF ~RandomNum(9,6)~ + RANDTALK-6
IF ~RandomNum(9,7)~ + RANDTALK-7
IF ~RandomNum(9,8)~ + RANDTALK-8
IF ~RandomNum(9,9)~ + RANDTALK-9
IF ~RandomNum(9,9) Global("C0AuraKnowsBG1","GLOBAL",1) GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + RANDTALK-9a
IF ~RandomNum(9,9) Global("C0AuraKnowsBG1","GLOBAL",1) GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%) InParty("IMOEN2")~ + RANDTALK-9b
IF ~CheckStatGT(Myself,8,FATIGUE)~ + RANDTALK-TIRED

CHAIN C0AURA2J RANDTALK-1
~Have you ever heard that myth that trolls were once walking trees? I thought it was rather ridiculous, but sometimes I wonder...~
EXIT

CHAIN C0AURA2J RANDTALK-2
~I think Muffy needs to have his rivets replaced. His tail fell off again yesterday... actually, maybe he just picked a fight with another live squirrel. *sigh*~
EXIT

CHAIN C0AURA2J RANDTALK-3
~Is my natural hair colour showing at the roots again, <CHARNAME>? I wonder if I should leave it like that. Do you think platinum blonde and pink go together well?~
EXIT

CHAIN C0AURA2J RANDTALK-4
~I've been trying to figure out if I can nock and fire with the Sunshooter using just my left hand. But then I'd have to draw the arrow with my teeth... hmm, I could build something to get around that.~
= ~Maybe a shoulder-mounted third arm? Nah, that's too obvious. I'll have to think...~
EXIT

CHAIN C0AURA2J RANDTALK-5
~I want strawberry tarts. Yum... strawberry tarts! Let's go pick berry-picking when we have time, <CHARNAME>! I'll get my hands on some tarts even if I have to bake them myself!~
EXIT

CHAIN C0AURA2J RANDTALK-6
~Nandemo-nai... nothing much.~
EXIT

CHAIN C0AURA2J RANDTALK-7
~I've been thinking of dyeing my hair a different colour. Change things up once in a while. Do you think lavender would look good? Or how about azure? Maybe lime green? Hmm...~
EXIT

CHAIN C0AURA2J RANDTALK-8
~I was just thinking about how nice it'd be if we had a chance to stop for tea and a picnic. But that isn't really possible right now, is it?~
EXIT

CHAIN C0AURA2J RANDTALK-9
~Nah, just some random thoughts. Don't we have something to do?~
EXIT

CHAIN C0AURA2J RANDTALK-9a
~*sigh* Nothing... I was just thinking about poor Imoen, probably locked up in a cell somewhere, scared and lonely... we'll be there for her soon, right?~
EXIT

CHAIN C0AURA2J RANDTALK-9b
~I'm glad we've got Imoen back. I just hope we'll be able to see her smile like she used to again. Even if I have to endure her really tight hugs again... a-haha...~
EXIT

CHAIN C0AURA2J RANDTALK-TIRED
~*yawn* I'm exhausted... do you think it's be childish if I let my automaton carry me for a bit?~
EXIT

CHAIN C0AURA2J QUESTIONS
~Oh... sure. What about?~
END
++ ~I'd like to know a little more about Lantan.~ + LANTAN
+ ~NumInPartyGT(2)~ + ~What do you think of our companions?~ + COMPANIONS
++ ~Never mind.~ EXIT

CHAIN C0AURA2J LANTAN
~I'd be happy to talk about my homeland! What were you curious about in particlar?~
END
++ ~Can you tell me about the different parts of Lantan?~ DO ~SetGlobal("C0AuraTalkLantanIslands","GLOBAL",1)~ + TOWNS
+ ~Global("C0AuraTalkLantanIslands","GLOBAL",1)~ + ~What are the settlements of Lantan like?~ + SETTLEMENTS
+ ~Global("C0AuraTalkLantanWorkshops","GLOBAL",1)~ + ~Tell me about the workshops.~ + LANTAN-WORKSHOPS
++ ~How is magic viewed as by the people of Lantan?~ + LANTANMAGIC
++ ~What is the ruling government of Lantan like?~ + RULERS
++ ~Why is it we don't see many of your people outside of the islands?~ + OUTSIDE
++ ~Never mind. There's nothing I wanted to know.~ EXIT

CHAIN C0AURA2J TOWNS
~Sure. Let's see... you'll probably want to know about the most interesting places, right? Well, to start off, there's Sambar—that's our capital city. The Sambaran Academy is the main institute of study in the whole nation. Anyone who's ever wanted a place in the major guilds of Lantan is going to learn from there—yours truly included, of course!~
= ~Next is Anchoril. That's where I was born, by the way. It's a lovely town that's right by the eastern coast of the island. It's not as grand as the bigger cities, but it's known as the center of foreign trade for the nation. That makes it quite a lively place, too!~
= ~Illul is the western side of Lantan, and it's home to the High Holy Crafthouse of Inspiration, which makes it the centerpiece of the church of Gond. I haven't been there all too often, but my sister Luna serves there as a Seeker... that's sort of like a cross of an artificer and a priestess.~
= ~The rest are mostly settlements where our clans make their homes—Darluj, Dtakkar, and others. Oh, and the island of Orlil... that's the least inhabited place in Lantan, but it's where our bards and arcanists reside.~
END
++ ~What are the settlements of Lantan like?~ + SETTLEMENTS
++ ~I see. There's something else I wanted to know.~ + LANTAN
++ ~Very interesting. That's all for now, though.~ EXIT

CHAIN C0AURA2J SETTLEMENTS
~Ooh, you'd have to see for yourself to understand... it's nothing like the cities you'd see anywhere else. Lantan is full of lush jungle that gets thicker the closer you get to the center of the islands. It's not possible to build settlements on the ground without harming the ecosystem, so we build our homes up high among the trees.~
= ~You might not even realize you're in a Lantanese city unless you thought to look up. Then you'd see the platforms on which our houses are built, all connected to each other via bridges and ladders. It's really something unique.~
= ~I grew up in Anchoril, though, which is right by the coast. It's much closer to the kind of port town you might be familiar with. Our community is focused on fishing, agriculture and foreign trade, so we're a bit more connected to the outside world than the other settlements.~
END
++ ~I see. There's something else I wanted to know.~ + LANTAN
++ ~Very interesting. That's all for now, though.~ EXIT

CHAIN C0AURA2J LANTANMAGIC
~That's... a difficult question to answer. Not everyone has the same views on magic, even within the same settlements. It really depends on who you're asking.~
= ~Most Lantanese don't think too much about magic in general. Our clans mostly all have specialized fields of study that they focus on for their entire lives, so they wouldn't even think about studying something different like magic.~
= ~The church of Gond is rather divided on their stance on magic, but their views aren't entirely opposed for the most part. Some believe magic should be treated like any other tool or craft, while others believe everything done by magic has a non-magical alternative. There are some Lantanese who oppose magic entirely, but they're... rare, and not looked upon favorably.~
= ~Although we don't have any proper institution for studying magic, so anyone who has an interest in it has to travel to other regions like Neverwinter, Waterdeep or Silverymoon, or be apprenticed to the few arcanists who live in Orlil. My younger brother Eridanus was born a sorcerer, but is too sickly to travel away from Lantan, so he studies under my uncle Marius instead.~
END
++ ~I see. There's something else I wanted to know.~ + LANTAN
++ ~Very interesting. That's all for now, though.~ EXIT

CHAIN C0AURA2J RULERS
~We have the Ayrorch. They're a council of twelve that consist of the most knowledgable and influencial people in Lantan. One member is elected as the Ayrar, the speaker, while another is the Lantar, who acts as our representative to other nations. The rest are known as Santar.~
= ~My uncle on my father's side, Dedalus, used to be the Lantar of the Ayrorch, but he left the position years ago to serve as Head Artificer of the Eleventh Workshop, which specializes in developing weapons to protect the nation.~
DO ~SetGlobal("C0AuraTalkLantanWorkshops","GLOBAL",1)~
END
++ ~Lantan has an entire workshop dedicated to weapons development?~ + LANTAN-WEAPONS
++ ~Tell me about these workshops.~ + LANTAN-WORKSHOPS
++ ~I see. There's something else I wanted to know.~ + LANTAN
++ ~Very interesting. That's all for now, though.~ EXIT

CHAIN C0AURA2J LANTAN-WEAPONS
~Oh... yeah. We're not really supposed to talk about what they make there, since our weapons affect our national security. Most Lantanese don't have a positive opinion of using artifice as a weapon, but the Eleventh Workshop is agreed to be a necessity.~
= ~I've actually been there. When I was working on inventing my Sunshooter. It's... about what you'd expect, really. Some of the most serious and dedicated inventors in the nation, working on destructive inventions made for the safety of the nation.~
= ~My father isn't too fond of it—he's always worried about my uncle's health and wellbeing, with how dangerous and stressful his role as the Head Artificer is. Having to personally supervise all those dangerous experiments can't be an easy job.~
END
++ ~I see. There's something else I wanted to know.~ + LANTAN
++ ~Very interesting. That's all for now, though.~ EXIT

CHAIN C0AURA2J LANTAN-WORKSHOPS
~The workshops are where the greatest specialists in Lantan work together to focus on specific studies for the advancement of Lantan. They design, manufacture and compose treatises on their works which then become officially sanctioned by the Ayrorchs.~
= ~Each specializes in their own facet of design. The First Workshop is composed of experts in Metallurgy, the Second on Botany and Zoology, the Third specializes in Alchemy, the Fifth, Sixth, and Seventh on harnessing different types of natural energies, and so on. The Eleventh specializes in inventions meant for use as weapons.~
END
++ ~What about the Fourth Workshop? What do they specialise in?~ + LANTAN-4TH-WORKSHOP
++ ~Lantan has an entire workshop dedicated to weapons development?~ + LANTAN-WEAPONS
++ ~I see. There's something else I wanted to know.~ + LANTAN
++ ~Very interesting. That's all for now, though.~ EXIT

CHAIN C0AURA2J LANTAN-4TH-WORKSHOP
~I... don't know. The Fourth Workshop has been inactive for several decades now, I think, and as far as I know there's never been any talk among the Ayrorchs or the church about restoring it.~
= ~There's also no collections or documents that detail what it used to do in any of the libraries. Actually, for that matter, nobody I've talked to even seems to know where it is. Even my father doesn't know.~
END
++ ~Strange. Let's talk about something else.~ + LANTAN
++ ~Very interesting. That's all for now, though.~ EXIT

CHAIN C0AURA2J OUTSIDE
~That... well, for starters, what you're hearing is mostly just from me, okay? I don't speak as a proper authority on my people and their thoughts, but I can try my best to give you a loose idea.~
= ~The Lantanna are... well, I wouldn't go as far as to say isolationists, but we've lived our way of life with minimal influence from the outside for generations now, and... well, it's not an easy thing for us to acclimate to life elsewhere.~
END
IF ~Global("C0AuraTalkLantanOutsiders","GLOBAL",0)~ DO ~SetGlobal("C0AuraTalkLantanOutsiders","GLOBAL",1)~ + OUTSIDE-1
IF ~!Global("C0AuraTalkLantanOutsiders","GLOBAL",0)~ + OUTSIDE-1

CHAIN C0AURA2J OUTSIDE-1
~It'd be like... well, what was it like for you, <CHARNAME>? I remember you spent almost your entire life in Candlekeep. Did the whole world outside seem strange and difficult when you left?~
END
++ ~It did. I couldn't take trusting anyone for granted, and I've encountered dangers I never even imagined.~ + OUTSIDE-2
++ ~I felt like I had a lot to learn, but the culture and people weren't as unfamiliar as it would be to travel to a different land. I got used to it quickly.~ + OUTSIDE-2

CHAIN C0AURA2J OUTSIDE-2
~I guess it's an unfair comparison. Most people aren't thrown into the kind of life you've had. It's actually inspiring when I think about everything you've accomplished so quickly.~
= ~And people called me talented while I was growing up... haha, I guess I've been in need of a humbling this entire time.~
EXTERN C0AURA2J OUTSIDE-3

CHAIN C0AURA2J OUTSIDE-3
~Anything else you wanted to talk about?~
END
++ ~Let's go back to my previous questions.~ + LANTAN
++ ~No, that's all for now.~ EXIT

CHAIN C0AURA2J COMPANIONS
~I really shouldn't gossip, but... oh, go on then. Which one?~
END
+ ~InParty("AERIE")
Global("C0AuraAerieFriendship","GLOBAL",0)~ + ~What do you think of Aerie?~ + AERIE-NOFRIEND
+ ~InParty("AERIE")
GlobalGT("C0AuraAerieFriendship","GLOBAL",0)~ + ~What do you think of Aerie?~ + AERIE-FRIEND
+ ~!Global("AnomenIsKnight","GLOBAL",1)
!Global("TalkedCor","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
InParty("ANOMEN")~ + ~What do you think of Anomen?~ + ASKANOMEN-LN
+ ~!Global("AnomenIsKnight","GLOBAL",1)
Global("TalkedCor","GLOBAL",1)
!Global("AnomenIsNotKnight","GLOBAL",1)
InParty("ANOMEN")~ + ~What do you think of Anomen?~ + ASKANOMEN-LN-AFTERDAD
+ ~Global("AnomenIsKnight","GLOBAL",1)
InParty("ANOMEN")~ + ~What do you think of Anomen?~ + ASKANOMEN-LG
+ ~Global("AnomenIsNotKnight","GLOBAL",1)
InParty("ANOMEN")~ + ~What do you think of Anomen?~ + ASKANOMEN-CN
+ ~InParty("CERND")~ + ~What do you think of Cernd?~ + ASKCERND
+ ~InParty("DORN")~ + ~What do you think of Dorn?~ + ASKDORN
+ ~InParty("C0DRAKE")~ + ~What do you think of Drake?~ + ASKDRAKE
+ ~Gender("EDWIN",MALE)
InParty("EDWIN")~ + ~What do you think of Edwin?~ + ASKEDWIN-MALE
+ ~!Gender("EDWIN",MALE)
InParty("EDWIN")~ + ~What do you think of Edwin?~ + ASKEDWIN-FEMALE
+ ~InParty("E3FADE")~ + ~What do you think of Fade?~ + ASKFADE
+ ~InParty("L#FOU")~ + ~What do you think of Foundling?~ + ASKFOUNDLING
+ ~InParty("C0GLEY")~ + ~What do you think of Gleya?~ + ASKGLEYA
+ ~InParty("HAERDALIS")~ + ~What do you think of Haer'Dalis?~ + ASKHAERDALIS
+ ~InParty("OHHFAK")~ + ~What do you think of Hexxat?~ + ASKCLARA
+ ~InParty("HEXXAT")~ + ~What do you think of Hexxat?~ + ASKHEXXAT
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1) InParty("IMOEN2")~ + ~What do you think of Imoen?~ + ASKIMOEN-NOBG1
+ ~Global("C0AuraKnowsBG1","GLOBAL",1) InParty("IMOEN2")~ + ~What do you think of Imoen?~ + ASKIMOEN-BG1
+ ~InParty("JAHEIRA")~ + ~What do you think of Jaheira?~ + ASKJAHEIRA
+ ~InParty("JAN")~ + ~What do you think of Jan?~ + ASKJAN
+ ~InParty("KELDORN")~ + ~What do you think of Keldorn?~ + ASKKELDORN
+ ~InParty("C0KERAH")~ + ~What do you think of Kerahn?~ + ASKKERAHN
+ ~InParty("KORGAN")~ + ~What do you think of Korgan?~ + ASKKORGAN
+ ~InParty("MAZZY")~ + ~What do you think of Mazzy?~ + ASKMAZZY
+ ~InParty("MINSC")~ + ~What do you think of Minsc?~ + ASKMINSC
+ ~InParty("NALIA") Global("C0AuraNalia1","GLOBAL",0)~ + ~What do you think of Nalia?~ + ASKNALIA
+ ~InParty("NALIA") GlobalGT("C0AuraNalia1","GLOBAL",0)~ + ~What do you think of Nalia?~ + ASKNALIA-2
+ ~InParty("NEERA")~ + ~What do you think of Neera?~ + ASKNEERA
+ ~InParty("C0OPHEL")~ + ~What do you think of Ophelia?~ + ASKOPHELIA
+ ~InParty("C0PAINA")~ + ~What do you think of Pai'Na?~ + ASKPAINA
+ ~InParty("L#2PHAL")~ + ~What do you think of Phalh?~ + ASKPHALH
+ ~InParty("RASAAD")~ + ~What do you think of Rasaad?~ + ASKRASAAD
+ ~InParty("C0SIREN")~ + ~What do you think of Sirene?~ + ASKSIRENE
+ ~!InParty("L#2PHAL")
InParty("L#2VERR")~ + ~What do you think of Verr'Sza?~ + ASKVERRSZA-NOPHALH
+ ~InParty("L#2PHAL")
InParty("L#2VERR")~ + ~What do you think of Verr'Sza?~ + ASKVERRSZA-PHALH
+ ~InParty("VICONIA")~ + ~What do you think of Viconia?~ + ASKVICONIA
+ ~InParty("VALYGAR") !Dead("lavok") !Dead("lavok02")~ + ~What do you think of Valygar?~ + ASKVALYGAR
+ ~InParty("VALYGAR") OR(2) Dead("lavok") Dead("lavok02") Global("C0AuraVALYGARJ107","GLOBAL",1)~ + ~What do you think of Valygar?~ + ASKVALYGAR-AFTERQUEST-INPARTY
+ ~InParty("VALYGAR") OR(2) Dead("lavok") Dead("lavok02") !Global("C0AuraVALYGARJ107","GLOBAL",1)~ + ~What do you think of Valygar?~ + ASKVALYGAR-AFTERQUEST-NOTINPARTY
+ ~InParty("L0WILL")~ + ~What do you think of Will?~ + ASKWILL
+ ~InParty("YOSHIMO")
Global("C0AuraYoshimoFriendship","GLOBAL",0)~ + ~What do you think of Yoshimo?~ + ASKYOSHIMO-NOFRIEND
+ ~InParty("YOSHIMO")
GlobalGT("C0AuraYoshimoFriendship","GLOBAL",0)~ + ~What do you think of Yoshimo?~ + ASKYOSHIMO-FRIEND
+ ~Global("C0AuraYoshimoBetrayal","GLOBAL",0)
Dead("YOSHIMO")
!GlobalGT("C0AuraYoshimo2","GLOBAL",4)
Global("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",0)~ + ~What do you think of Yoshimo?~ DO ~SetGlobal("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",-1)~ + ASKYOSHIMO-DEAD-NOFRIEND
+ ~Global("C0AuraYoshimoBetrayal","GLOBAL",1)
Dead("YOSHIMO")
GlobalGT("C0AuraYoshimo2","GLOBAL",4)
OR(2)
Global("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",0)
!GlobalTimerExpired("C0AuraYoshimoFriendshipDeadTimer","GLOBAL")~ + ~What do you think of Yoshimo?~ DO ~SetGlobal("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",1) SetGlobalTimer("C0AuraYoshimoFriendshipDeadTimer","GLOBAL",THREE_DAYS)~ + ASKYOSHIMO-FRIEND-BEFORETIMER
+ ~Global("C0AuraYoshimoBetrayal","GLOBAL",1)
Dead("YOSHIMO")
GlobalGT("C0AuraYoshimo2","GLOBAL",4)
Global("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",1)
GlobalTimerExpired("C0AuraYoshimoFriendshipDeadTimer","GLOBAL")~ + ~What do you think of Yoshimo?~ DO ~SetGlobal("C0AuraYoshimoFriendshipDeadTalk","GLOBAL",2)~ + ASKYOSHIMO-FRIEND-AFTERTIMER
+ ~InParty("YXYVE")~ + ~What do you think of Yvette?~ + ASKYVETTE
++ ~Never mind.~ EXIT

CHAIN C0AURA2J COMPANIONS-NEXT
~Anything else you wanted to know?~
END
+ ~NumInPartyGT(3)~ + ~There was another companion I wanted your opinion on.~ + COMPANIONS
++ ~I wanted to ask something else.~ + QUESTIONS
++ ~Nothing right now.~ EXIT

CHAIN C0AURA2J AERIE-NOFRIEND
~She's very shy, so I haven't had many chances to talk to her yet. But I'd like to.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J AERIE-FRIEND
~I really like her. She's so kind and dependable. And she's stronger than you'd think too, <CHARNAME>.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKANOMEN-LN
~Anomen's kinda prickly, but I try not to take it too personally. He doesn't really mean any harm by it... I think.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKANOMEN-LN-AFTERDAD
~After what happened between him and his father, I think I've been a little hard on him. Someone like me, who came from a loving family, can't possibly understand the sort of hardship he's been through. I hope he can make it through though.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKANOMEN-LG
~He's a pretty good person after all. I don't have any problems with him anymore, not since he got knighted. I think he's genuinely happier now.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKANOMEN-CN
~I'm actually a little afraid of him, <CHARNAME>. He's so... angry and bitter, and doesn't seem to want to be consoled either.~
== C0AURA2J IF ~Global("AnomenChasesAerie","GLOBAL",1) Global("C0AuraAboutAngryAnomen","GLOBAL",1)~ THEN ~After he lashed out at Aerie, I don't even think I can talk to him anymore. I just try to stay out of sight and hope he doesn't notice me.~ 
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKCERND
~There's something really soothing about talking with Cernd. Don't you think so? Oh, you probably don't... I get it, but I quite like him. Plus, he's got great taste in tea.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKDORN
~I don't like him, <CHARNAME>... I get the feeling he's never really one of us, even if he's with us... you know?~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKDRAKE
~There's something about him... I can't quite put my finger on it, but I can't shake the feeling he's cleverer than he comes off as. Half the time, I think he's just pretending not to understand things.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKEDWIN-MALE
~Heehee, I really shouldn't like him, but he's so much fun to tease. Plus, his knowledge of magical theory is astounding. If you know the right words around him, you can learn a lot.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKEDWIN-FEMALE
~Pfft... heehee, he's become even more fun to tease ever since the Nether Scroll went awry on him. Serves him right, though. I wonder when he'll figure out a way to turn back?~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKFADE
~She's a lot nicer than I thought she'd be, seeing the tail and eyes and all. I'm more than a little relieved... especially since she's so pretty, as well. At least when she's not angry.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKFOUNDLING
~He's interesting. I have to wonder sometimes if he's really human, though. The Plane of Shadow can really change you a lot, huh?~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKGLEYA
~You know, the more I talk to her, the more I wish I had another big sister like her. She's just so easy to talk to.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKHAERDALIS
~His stories make my head spin. So much drama and excitement and tension... it's all so romanticized that I have a hard time believing any of it's real. But still, they're fun to listen to.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKCLARA
~She's... I dunno, she's kinda weird. Something about her just seems off, you know? It's like she's not really herself.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKHEXXAT
~I... wish she wasn't here. That sounds awful, I know. But... it's just hard to wake up and see that she's so close to you, always awake, with that look in her eyes... *shudder* Don't tell her I said any of that.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKIMOEN-NOBG1
~Imoen's great. I could talk to her for days. Actually, the more I think about it, the more envious I am that you've known her your whole life, <CHARNAME>. You're really lucky.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKIMOEN-BG1
~She's... oh, come on, do I really need to say anything, <CHARNAME>? She's *Imoen*. I just don't feel like our circle's complete without her.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKJAHEIRA
~I can't get over how serious Jaheira is, but then I think about every time she's helped me when I fall over, or take an injury, and how kind she is under that frown she always wears... oh, she's glaring at me. I'll shut up now.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKJAN
~Jan is... *sigh* oh, I really don't know. I can't shake the feeling he's just as good as I am, but his mind goes in just about every direction at once, it's crazy. I'm surprised he never gets tired.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKKELDORN
~He's so different from my parents, but I still can't help but get that fatherly vibe from him. It's so hard to get over the fact that he's actually not much older than I am.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKKERAHN
~He doesn't talk much. But he seems pretty nice. Just don't try playing cards with him. His face never changes.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKKORGAN
~I used to meet a lot of dwarves in the Western Heartlands, and they were always very kind to me, once I got to know them a little. Korgan... well, he's rough around the edges, and kills a little too easily, but I don't dislike him.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKMAZZY
~I never thought I'd meet someone who was so much like my big sister Juno. Even their faces look kinda similar... but maybe that's just my own bias showing.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKMINSC
~*giggle* Oh, Minsc... he makes me wish I had a hamster. But I really shouldn't... Muffy would get jealous. Or maybe he'd like having a little brother around to pick on? I'll have to think about it...~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKNALIA
~She's... I don't know. I can't help but be reminded of the upper-class girls back in the academy, always so intimidating to talk to, but I'm not sure Nalia's anything like that. I need to work up the courage to talk to her some time if we're going to work together...~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKNALIA-2
~Nalia's pretty great. I thought she'd be harder to connect with, being a noble and all, but we have more common interests than I thought. Books, magic, helping others... I've grown to like having her around.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKNEERA
~Her magic really gives me a headache. Not just from seeing it, even thinking about how it's supposed to work is so... argh. She tells me I think too hard on it. I can't help it! It's just what I've been raised to do.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKOPHELIA
~I think the dark aesthetic she has looks great. Wouldn't work on me, of course, I'm just not the type... what, you weren't asking about that? Oh, I don't know... she's been very friendly to me since we met. I don't really have anything bad to say about her.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKPAINA
~I know this sounds strange, but I actually kind of like her. If you've seen her talk to her spiders like a mom, you'd understand... I think it's kind of cute. Especially when she turns around and acts all frosty towards us afterwards.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKPHALH
~Phalh's actually really clever. I think he'd be the type to do well in the academies back home, if he went. He didn't seem too interested when I brought it up, though. Oh well.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKRASAAD
~He makes me wish I could balance myself upside down. And climb up a tree without using my hands. And shatter rocks using my cranium... well, maybe not that last one. But I do envy how he's managed to take his body to levels most would never achieve.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKSIRENE
~I feel a lot safer with her around. Not just because she's strong and protective, either. She's just so gentle, I feel like I could talk to her about anything.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVERRSZA-NOPHALH
~*sigh* I wish he were friendlier and cuddlier, like Koko-chan, but I guess he's not too bad. At least I can trust him to have my back, most of the time... although I'm not sure he likes me all that much.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVERRSZA-PHALH
~I can't stop calling him 'Phalh's crazy uncle' in my head. Don't tell him that! I mean, Phalh turned out okay, so he can't be all bad either, I guess.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVALYGAR
~It's a little disheartening to see his aversion to magic, but I'm glad he doesn't have anything against me personally. I wish I could learn more about him, honestly. He seems so interesting under all that secrecy.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVALYGAR-AFTERQUEST-INPARTY
~I'm still a little sad that Master Lavok ended up dying the way he did... obviously I didn't know him, but if he and Valygar had more time to understand each other... I think it'd have been easier for Valygar to let go of that weight on his shoulders.~
= ~But maybe that's just wishful thinking. I'm just glad we were able to help Valygar through his burdens.~
DO ~SetGlobal("C0AuraVALYGARJ107","GLOBAL",2)~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVALYGAR-AFTERQUEST-NOTINPARTY
~Valygar's a little quiet, but I think he's strong and reliable. He's fairly kind to me too, from the few times we've talked.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKVICONIA
~She still scares me a little. I wish I could see her gentle face once in a while, though... I've always wondered what she looks like when she's not scowling.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKWILL
~Ooh, there's a lot I'd love to ask him. I've never seen a spirit like him that hasn't tried to kill me, so it's an opportunity I can't pass up.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-NOFRIEND
~He's very different from the people I knew while living in Mikedono. I guess venturing out in the world really changes your habits.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-FRIEND
~Yoshi-san? He's great. Even though he's not what I expected at all, I'm still glad he's with us.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-DEAD-NOFRIEND
~I–I'm still a little shaken, but... to be honest, I feel like I deserve it. Somehow, I thought I could trust him even though I didn't really know anything about him. I knew I shouldn't have.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-FRIEND-BEFORETIMER
~He... well...~
= ~I–I'm sorry, <CHARNAME>, I don't want to talk about it right now.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J ASKYOSHIMO-FRIEND-AFTERTIMER
~I still can't believe what happened... it was bad enough to know that Yoshi-san betrayed us, but then... I thought I'd never get the chance to ask him his reasons, but seeing him face us after Irenicus... somehow, that was worse.~
= ~Did you believe him when he said he was bound by a geas, <CHARNAME>? I... I think it was the truth. If anything I thought I knew about Yoshi-san was real, he wouldn't have fought a battle he had no chance of winning. But he couldn't. No matter how much he may have wanted to... I don't know, take it all back, or run away... he couldn't. Isn't that just horrifying?~
= ~N–not saying that absolves him of guilt, though! What he did was absolutely wrong, no question about it. But I can't help but know what would drive him to... to give so much up to betray us. And now we'll never know...~
= ~If only... *sigh* I wish it hadn't happened. Neither the beginning nor the end of it. I should probably feel betrayed, but right now... I just regret what happened. I wish I had a chance to do something.~
= ~I... I'm feeling a little tired now, <CHARNAME>. Could we talk later?~
EXIT

CHAIN C0AURA2J ASKYVETTE
~She's even lovelier in person than she was in the drawing—I mean, as the drawing. That's such a strange thing to say.~
EXTERN C0AURA2J COMPANIONS-NEXT

CHAIN C0AURA2J FLIRT
~Hmm?~
END
+ ~RandomNum(4,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Kiss her lips)~ + FLIRT-2-1A
+ ~RandomNum(4,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Kiss her lips)~ + FLIRT-2-1B
+ ~RandomNum(4,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Kiss her lips)~ + FLIRT-2-1C
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Kiss her lips)~ + FLIRT-2-1D
+ ~RandomNum(4,1)~ + ~(Kiss her cheek)~ + FLIRT-1-1A
+ ~RandomNum(4,2)~ + ~(Kiss her cheek)~ + FLIRT-1-1B
+ ~RandomNum(4,3)~ + ~(Kiss her cheek)~ + FLIRT-1-1C
+ ~RandomNum(4,4)~ + ~(Kiss her cheek)~ + FLIRT-1-1D
+ ~RandomNum(3,1)~ + ~(Kiss her nose)~ + FLIRT-1-2A
+ ~RandomNum(3,2)~ + ~(Kiss her nose)~ + FLIRT-1-2B
+ ~RandomNum(3,3)~ + ~(Kiss her nose)~ + FLIRT-1-2C
+ ~RandomNum(4,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2A
+ ~RandomNum(4,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2B
+ ~RandomNum(4,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2C
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2) !InParty("IMOEN2")~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2A
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2) InParty("IMOEN2")~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2D
+ ~RandomNum(3,1) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~(Lift her up and hug her)~ + FLIRT-1-3A
+ ~RandomNum(3,2) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~(Lift her up and hug her)~ + FLIRT-1-3B
+ ~RandomNum(3,3) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~(Lift her up and hug her)~ + FLIRT-1-3C
+ ~RandomNum(3,1) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~(Hug her)~ + FLIRT-1-3A
+ ~RandomNum(3,2) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~(Hug her)~ + FLIRT-1-3B
+ ~RandomNum(3,3) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~(Hug her)~ + FLIRT-1-3D
+ ~RandomNum(3,1)~ + ~(Wink at her)~ + FLIRT-1-4A
+ ~RandomNum(3,2)~ + ~(Wink at her)~ + FLIRT-1-4B
+ ~RandomNum(3,3)~ + ~(Wink at her)~ + FLIRT-1-4C
+ ~RandomNum(3,1)~ + ~(Tickle her)~ + FLIRT-1-5A
+ ~RandomNum(3,2)~ + ~(Tickle her)~ + FLIRT-1-5B
+ ~RandomNum(3,3)~ + ~(Tickle her)~ + FLIRT-1-5C
+ ~RandomNum(3,1)~ + ~(Pinch her cheeks)~ + FLIRT-1-6A
+ ~RandomNum(3,2)~ + ~(Pinch her cheeks)~ + FLIRT-1-6B
+ ~RandomNum(3,3)~ + ~(Pinch her cheeks)~ + FLIRT-1-6C
+ ~RandomNum(3,1)~ + ~(Poke her nose)~ + FLIRT-1-7A
+ ~RandomNum(3,2)~ + ~(Poke her nose)~ + FLIRT-1-7B
+ ~RandomNum(3,3) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~(Poke her nose)~ + FLIRT-1-7C
+ ~RandomNum(3,3) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~(Poke her nose)~ + FLIRT-1-7D
+ ~RandomNum(3,1)~ + ~(Stroke her hair)~ + FLIRT-1-8A
+ ~RandomNum(3,2)~ + ~(Stroke her hair)~ + FLIRT-1-8B
+ ~RandomNum(3,3)~ + ~(Stroke her hair)~ + FLIRT-1-8C
+ ~RandomNum(3,1)~ + ~(Playfully tug her ear)~ + FLIRT-1-9A
+ ~RandomNum(3,2)~ + ~(Playfully tug her ear)~ + FLIRT-1-9B
+ ~RandomNum(3,3)~ + ~(Playfully tug her ear)~ + FLIRT-1-9C
/*+ ~RandomNum(3,1)~ + ~(Tease her)~ + FLIRT-1-10A
+ ~RandomNum(3,2)~ + ~(Tease her)~ + FLIRT-1-10B
+ ~RandomNum(3,3)~ + ~(Tease her)~ + FLIRT-1-10C
+ ~RandomNum(3,1)~ + ~Care for a spot of tea?~ + FLIRT-1-11A
+ ~RandomNum(3,2)~ + ~Care for a spot of tea?~ + FLIRT-1-11B
+ ~RandomNum(3,3)~ + ~Care for a spot of tea?~ + FLIRT-1-11C
+ ~RandomNum(3,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I love you, Aura.~ + FLIRT-2-3A
+ ~RandomNum(3,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I love you, Aura.~ + FLIRT-2-3B
+ ~RandomNum(3,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I love you, Aura.~ + FLIRT-2-3C
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~Sweetie, there's something I need to tell you...~ + FLIRT-TALK
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~Sweetie, there's something I need to tell you...~ + FLIRT-TALK*/
++ ~No, nothing.~ EXIT

CHAIN C0AURA2J FLIRT-2-1A
~Mmm...~
= ~I could never get enough of that. *giggle* One more?~
EXIT

CHAIN C0AURA2J FLIRT-2-1B
~(Aura closes her bright eyes in contentment in response to your kiss. When you finally part, she opens them slowly with a shy smile.)~
EXIT

CHAIN C0AURA2J FLIRT-2-1C
~(You feel Aura's small hands holding you as closely as your bodies will allow as you hold the kiss. There is a pleading look on her face when she reluctantly releases you.)~
EXIT

CHAIN C0AURA2J FLIRT-2-1D
~(You hold Aura closely as your lips touch hers, faintly tasting the sweetness of sugar and wildberries.)~
END
++ ~(Teasingly brush your tongue against her lips)~ + FLIRT-2-1D1
++ ~Mmm, now nice... strawberry tarts, hmm?~ + FLIRT-2-1D2
++ ~(Break away from her)~ EXIT

CHAIN C0AURA2J FLIRT-2-1D1
~Hey... *giggle* hey, stop that! That tickles!~
EXIT

CHAIN C0AURA2J FLIRT-2-1D2
~(She laughs and licks her lips with a flustered expression on her face.) They're my favorite...~
EXIT

CHAIN C0AURA2J FLIRT-1-1A
~(As you lay a soft peck on Aura's dimpled cheek, a pink flush immediately rises at the spot you kissed.)~
EXIT

CHAIN C0AURA2J FLIRT-1-1B
~(Aura's skin is soft, smooth and warm, without the slightest trace of roughness. She remains perfectly still, perhaps overwhelmed by the straightforwardness of your affection.)~
EXIT

CHAIN C0AURA2J FLIRT-1-1C
~(When you press your lips against Aura's cheek, she gives a contented sigh and then a look of endearment in response.)~
= ~Ahaha... I can't help but feel warm every time you do that.~
EXIT

CHAIN C0AURA2J FLIRT-1-1D
~(As you lean forward, Aura presses a hand against your shoulder to stop you.)~
= ~No, no, not right now, I've got a spot of grease on my face. Wait until I've had a chance to wash up, okay?~
EXIT

CHAIN C0AURA2J FLIRT-1-2A
~(You taste faintly of sweat on the bridge of Aura's nose. She makes a small gasp and pulls back, wiping her face hurriedly.)~
= ~S–sorry! I should've paid more attention before you... well... you can go again now. Please?~
EXIT

CHAIN C0AURA2J FLIRT-1-2B
~(As your lips touch Aura's nose, you feel her breath upon your neck, drawn from no small amount of nervousness. She tilts her head slightly forward, however, laying a faint kiss on your chin before you part.)~
EXIT

CHAIN C0AURA2J FLIRT-1-2C
~(As close as you are to Aura's face, you notice how her nose, despite being slightly larger than average by any other race's standards, is unusually smaller and fey-like, with a sharper, more defined shape that complements her youthful features.)~
= ~(When you finally pull away, Aura smiles at you, only for a strange expression to suddenly take over as her nose twitches. A second later, she sneezes.)~
EXIT

CHAIN C0AURA2J FLIRT-2-2A
~(While Aura sighs in resignation at first when you take her in your arms, as you hold her closely she lays her face against your chest, giving a hum of contentment while resting in your embrace.)~
EXIT

CHAIN C0AURA2J FLIRT-2-2B
~(Aura barely struggles as you cuddle her tightly, finally giving up and wrapping her arms around your neck.)~
EXIT

CHAIN C0AURA2J FLIRT-2-2C
~H–hey...! This again...? I'm not a doll!~
END
++ ~I can't help it... you're just too adorable!~ + FLIRT-2-2C1
++ ~Okay, okay... I'll let go...~ + FLIRT-2-2C2

CHAIN C0AURA2J FLIRT-2-2C1
~Hmph, okay... I guess I can deal with it...~
EXIT

CHAIN C0AURA2J FLIRT-2-2C2
~I–I didn't say you *had* to let go... I didn't mind it that much.~
EXIT

CHAIN C0AURA2J FLIRT-2-2D
~Oof! Goodness, i–it's so hard to decide whether you or Imoen gives the tighter hugs...~
EXIT

CHAIN C0AURA2J FLIRT-1-3A
~M-hmmmm... that's nice. You're so nice and warm, <CHARNAME>.~
EXIT

CHAIN C0AURA2J FLIRT-1-3B
~(As you wrap your arms around Aura's waist and bring her close, she presses herself against you, and you enjoy the softness of her body closely against yours.)~
EXIT

CHAIN C0AURA2J FLIRT-1-3C
~(Aura gives a cry of shock as you lift her from the ground, her arms reaching for you as you pull her close to you for an embrace. She nuzzles your neck as you hold her by the waist.)~
EXIT

CHAIN C0AURA2J FLIRT-1-3D
~Hmm, it's so comforting to be held like this...~
= ~(She nuzzles her face against your neck as you hold onto her, sighing in contentment.)~
EXIT

CHAIN C0AURA2J FLIRT-1-4A
~(Aura blinks bemusedly in response to your gesture.)~
= ~Uh oh... what are you planning this time?~
END
++ ~I'm not telling.~ + FLIRT-1-4A1
++ ~Nothing... I just wanted to see how your smile.~ + FLIRT-1-4A2

CHAIN C0AURA2J FLIRT-1-4A1
~A-haha... I'm already terrified... *shudder*~
EXIT

CHAIN C0AURA2J FLIRT-1-4A2
~Oh. Well then...~
= ~(She gives you a gentle, slightly teasing smile and winks back at you in response.)~
EXIT

CHAIN C0AURA2J FLIRT-1-4B
~What? Is there something on my face? Or is my hair mussed up again? C'mon, tell me what's going on!~
EXIT

CHAIN C0AURA2J FLIRT-1-4C
~(Aura giggles and grins sheepishly for a moment, before nervously running her fingers along her long hair expectantly.)~
EXIT

CHAIN C0AURA2J FLIRT-1-5A
~Oh... no, nononono! A-hahaha! Stop it, <CHARNAME>―no, not there! Hahahahaha―aah!~
EXIT

CHAIN C0AURA2J FLIRT-1-5B
~Eep! Ahahahah, not the waist, not the waist... eeek!~
EXIT

CHAIN C0AURA2J FLIRT-1-5C
~(Surprisingly, Aura puts up a meager resistance as you playfully attack her ticklish spots. When you detect a glint of mischief in her eyes, you realize―a little too late―that you've made a careless mistake.~
= ~Haha! You've fallen for my trap! Get her, Muffy!~
= ~(The small squirrel construct leaps onto you and runs crazily over your body in circles from head to toe, its tiny metal paws tickling you endlessly as you struggle to capture it.)~
END
++ ~Eeeeek! Call him off, Aura!~ + FLIRT-1-5C1
++ ~Okay, okay, I surrender!~ + FLIRT-1-5C1
++ ~No, you don't, you little... ah ha, gotcha!~ + FLIRT-1-5C2

CHAIN C0AURA2J FLIRT-1-5C1
~*giggle* Looks like I win this time, <CHARNAME>!~
EXIT

CHAIN C0AURA2J FLIRT-1-5C2
~Aww. I never get one over you, do I, <CHARNAME>?~
= ~Er, can you give him back now?~
EXIT

CHAIN C0AURA2J FLIRT-1-6A
~Oof! My goodness, you're worse than my sisters, <CHARNAME>...~
EXIT

CHAIN C0AURA2J FLIRT-1-6B
~*sigh* Sometimes I wish I'd outgrow my own face so my cheeks wouldn't be so tempting to other people.~
EXIT

CHAIN C0AURA2J FLIRT-1-6C
~(Aura gives an unconvincingly disapproving pout as you gently rub her cheek using two fingers, while struggling to hide her approval with contented eyes and a barely-restrained smile.)~
EXIT

CHAIN C0AURA2J FLIRT-1-7A
~(Aura flushes furiously as you lay a finger teasingly on her nose.)~
EXIT

CHAIN C0AURA2J FLIRT-1-7B
~(Aura gives a nervous giggle at the affectionate touch. You notice a glint of excitement in her eyes for a brief moment, and as you withdraw, she catches your hand and gently kisses your finger.)~
EXIT

CHAIN C0AURA2J FLIRT-1-7C
~(As you raise a finger to the tip of Aura's nose, she beckons you to lean closer with a candid smile on her face and raises a finger to touch your cheek in return.)~
EXIT

CHAIN C0AURA2J FLIRT-1-7D
~(As you bend down and raise a finger to the tip of Aura's nose, she beckons you to lean closer with a candid smile on her face and lifts her own finger to touch your cheek in return.)~
EXIT

CHAIN C0AURA2J FLIRT-1-8A
~(As you tenderly stroke the long, straight strands of Aura's hair, you notice how well-tended it is. Her hair is clean, even, and smells faintly of rose and lavender. You cannot help but wonder just how much time she spends tending to her hair at night to make up for the roughness of your daily travels.)~
EXIT

CHAIN C0AURA2J FLIRT-1-8B
~(After you brush against Aura's hair for a while, she clasps your hand and holds it against her cheek, gently caressing your fingers with a slight smile.)~
= ~(Suddenly she blushes, and with a flustered expression, reaches in her pack hurriedly to take out a small wooden brush.)~
= ~Umm... would you mind brushing my hair a bit, <CHARNAME>? I'd like that.~
EXIT

CHAIN C0AURA2J FLIRT-1-8C
~(As you trace a strand of Aura's rose-colored hair to its roots on her head, you see the faint change of colour to its natural pale―almost silvery―blonde.~
= ~Aura lets off a giggle as your finger slides against her head, clearly ticklish.)~
END
++ ~You have very lovely hair, Aura.~ + FLIRT-1-8C1
++ ~I want to see your normal hair colour one day.~ + FLIRT-1-8C2

CHAIN C0AURA2J FLIRT-1-8C1
~*giggle* Thank you, <CHARNAME>... I'm really glad you like it.~
EXIT

CHAIN C0AURA2J FLIRT-1-8C2
~Really? I'll let my hair grow out without dyeing it for a while then, if that's what you'd like.~
EXIT

CHAIN C0AURA2J FLIRT-1-9A
~(You sneak up on Aura from behind and teasingly nip on the point of her ear that is slightly sticking out from under her hair. She makes a startled squeak and turns to face you.)~
= ~Eep! Oh, it's just you, <CHARNAME>... um, I don't mind you doing something like that... *blush* ...but could you give me some warning first?~
EXIT

CHAIN C0AURA2J FLIRT-1-9B
~(You give a few teasing pinches to Aura's small, elfin ears.)~
EXIT

CHAIN C0AURA2J FLIRT-1-9C
~No fair, <CHARNAME>! Let me pull your ears once in a while.~
EXIT

CHAIN IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY]) Global("C0AuraInsulted","GLOBAL",0)~ THEN C0AUR25J pid
~Yep?~ [C0AU022]
END
 + ~PartyHasItem("c0aubo6") PartyHasItem("COMPON10")~ + ~I'll give you the Bowstring of Gond, Aura. See how you can enhance the Sunshooter.~ + TOB-SUNSHOOTER
 + ~OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Flirt)~ + FLIRT
 ++ ~I think there's a problem with your voice.~ + stringfix
 ++ ~I need nothing at the moment.~ EXIT

CHAIN C0AUR25J TOB-SUNSHOOTER
~You... you're really giving me this opportunity, <CHARNAME>? I'm, I'm honored twice over!~
= ~Alright... let's see what I can do...~
DO ~SetGlobal("C0AuraToBBowstring","GLOBAL",3)
ClearAllActions()
StartCutSceneMode()
CreateCreatureObject("C0MUFFY2",Myself,0,0,0)
SmallWait(1)
ActionOverride("C0MUFFY2",TakePartyItem("COMPON10"))
ActionOverride("C0MUFFY2",DestroySelf())
Wait(2)
CreateVisualEffectObject("spcrtwpn",Myself)
TransformItem("c0aubo6","c0aubo7")
EquipRanged()
Wait(2)
SetSequence(SEQ_SHOOT)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN C0AUR25J FLIRT
~Hmm?~
END
+ ~RandomNum(4,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Kiss her lips)~ + FLIRT-2-1A
+ ~RandomNum(4,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Kiss her lips)~ + FLIRT-2-1B
+ ~RandomNum(4,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Kiss her lips)~ + FLIRT-2-1C
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Kiss her lips)~ + FLIRT-2-1D
+ ~RandomNum(4,1)~ + ~(Kiss her cheek)~ + FLIRT-1-1A
+ ~RandomNum(4,2)~ + ~(Kiss her cheek)~ + FLIRT-1-1B
+ ~RandomNum(4,3)~ + ~(Kiss her cheek)~ + FLIRT-1-1C
+ ~RandomNum(4,4)~ + ~(Kiss her cheek)~ + FLIRT-1-1D
+ ~RandomNum(3,1)~ + ~(Kiss her nose)~ + FLIRT-1-2A
+ ~RandomNum(3,2)~ + ~(Kiss her nose)~ + FLIRT-1-2B
+ ~RandomNum(3,3)~ + ~(Kiss her nose)~ + FLIRT-1-2C
+ ~RandomNum(4,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2A
+ ~RandomNum(4,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2B
+ ~RandomNum(4,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2C
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2) !InParty("IMOEN2")~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2A
+ ~RandomNum(4,4) Global("C0AuraRomanceActive","GLOBAL",2) InParty("IMOEN2")~ + ~(Hold her close and squeeze tightly)~ + FLIRT-2-2D
+ ~RandomNum(3,1) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~(Lift her up and hug her)~ + FLIRT-1-3A
+ ~RandomNum(3,2) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~(Lift her up and hug her)~ + FLIRT-1-3B
+ ~RandomNum(3,3) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~(Lift her up and hug her)~ + FLIRT-1-3C
+ ~RandomNum(3,1) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~(Hug her)~ + FLIRT-1-3A
+ ~RandomNum(3,2) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~(Hug her)~ + FLIRT-1-3B
+ ~RandomNum(3,3) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~(Hug her)~ + FLIRT-1-3D
+ ~RandomNum(3,1)~ + ~(Wink at her)~ + FLIRT-1-4A
+ ~RandomNum(3,2)~ + ~(Wink at her)~ + FLIRT-1-4B
+ ~RandomNum(3,3)~ + ~(Wink at her)~ + FLIRT-1-4C
+ ~RandomNum(3,1)~ + ~(Tickle her)~ + FLIRT-1-5A
+ ~RandomNum(3,2)~ + ~(Tickle her)~ + FLIRT-1-5B
+ ~RandomNum(3,3)~ + ~(Tickle her)~ + FLIRT-1-5C
+ ~RandomNum(3,1)~ + ~(Pinch her cheeks)~ + FLIRT-1-6A
+ ~RandomNum(3,2)~ + ~(Pinch her cheeks)~ + FLIRT-1-6B
+ ~RandomNum(3,3)~ + ~(Pinch her cheeks)~ + FLIRT-1-6C
+ ~RandomNum(3,1)~ + ~(Poke her nose)~ + FLIRT-1-7A
+ ~RandomNum(3,2)~ + ~(Poke her nose)~ + FLIRT-1-7B
+ ~RandomNum(3,3) !Race(Player1,HALFLING) !Race(Player1,DWARF) !Race(Player1,GNOME)~ + ~(Poke her nose)~ + FLIRT-1-7C
+ ~RandomNum(3,3) OR(3) Race(Player1,HALFLING) Race(Player1,DWARF) Race(Player1,GNOME)~ + ~(Poke her nose)~ + FLIRT-1-7D
+ ~RandomNum(3,1)~ + ~(Stroke her hair)~ + FLIRT-1-8A
+ ~RandomNum(3,2)~ + ~(Stroke her hair)~ + FLIRT-1-8B
+ ~RandomNum(3,3)~ + ~(Stroke her hair)~ + FLIRT-1-8C
+ ~RandomNum(3,1)~ + ~(Playfully tug her ear)~ + FLIRT-1-9A
+ ~RandomNum(3,2)~ + ~(Playfully tug her ear)~ + FLIRT-1-9B
+ ~RandomNum(3,3)~ + ~(Playfully tug her ear)~ + FLIRT-1-9C
/*+ ~RandomNum(3,1)~ + ~(Tease her)~ + FLIRT-1-10A
+ ~RandomNum(3,2)~ + ~(Tease her)~ + FLIRT-1-10B
+ ~RandomNum(3,3)~ + ~(Tease her)~ + FLIRT-1-10C
+ ~RandomNum(3,1)~ + ~Care for a spot of tea?~ + FLIRT-1-11A
+ ~RandomNum(3,2)~ + ~Care for a spot of tea?~ + FLIRT-1-11B
+ ~RandomNum(3,3)~ + ~Care for a spot of tea?~ + FLIRT-1-11C
+ ~RandomNum(3,1) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I love you, Aura.~ + FLIRT-2-3A
+ ~RandomNum(3,2) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I love you, Aura.~ + FLIRT-2-3B
+ ~RandomNum(3,3) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I love you, Aura.~ + FLIRT-2-3C
+ ~Global("C0AuraRomanceActive","GLOBAL",1)~ + ~Sweetie, there's something I need to tell you...~ + FLIRT-TALK
+ ~Global("C0AuraRomanceActive","GLOBAL",2)~ + ~Sweetie, there's something I need to tell you...~ + FLIRT-TALK*/
++ ~No, nothing.~ EXIT

CHAIN C0AUR25J FLIRT-2-1A
~Mmm...~
= ~I could never get enough of that. *giggle* One more?~
EXIT

CHAIN C0AUR25J FLIRT-2-1B
~(Aura closes her bright eyes in contentment in response to your kiss. When you finally part, she opens them slowly with a shy smile.)~
EXIT

CHAIN C0AUR25J FLIRT-2-1C
~(You feel Aura's small hands holding you as closely as your bodies will allow as you hold the kiss. There is a pleading look on her face when she reluctantly releases you.)~
EXIT

CHAIN C0AUR25J FLIRT-2-1D
~(You hold Aura closely as your lips touch hers, faintly tasting the sweetness of sugar and wildberries.)~
END
++ ~(Teasingly brush your tongue against her lips)~ + FLIRT-2-1D1
++ ~Mmm, now nice... strawberry tarts, hmm?~ + FLIRT-2-1D2
++ ~(Break away from her)~ EXIT

CHAIN C0AUR25J FLIRT-2-1D1
~Hey... *giggle* hey, stop that! That tickles!~
EXIT

CHAIN C0AUR25J FLIRT-2-1D2
~(She laughs and licks her lips with a flustered expression on her face.) They're my favorite...~
EXIT

CHAIN C0AUR25J FLIRT-1-1A
~(As you lay a soft peck on Aura's dimpled cheek, a pink flush immediately rises at the spot you kissed.)~
EXIT

CHAIN C0AUR25J FLIRT-1-1B
~(Aura's skin is soft, smooth and warm, without the slightest trace of roughness. She remains perfectly still, perhaps overwhelmed by the straightforwardness of your affection.)~
EXIT

CHAIN C0AUR25J FLIRT-1-1C
~(When you press your lips against Aura's cheek, she gives a contented sigh and then a look of endearment in response.)~
= ~Ahaha... I can't help but feel warm every time you do that.~
EXIT

CHAIN C0AUR25J FLIRT-1-1D
~(As you lean forward, Aura presses a hand against your shoulder to stop you.)~
= ~No, no, not right now, I've got a spot of grease on my face. Wait until I've had a chance to wash up, okay?~
EXIT

CHAIN C0AUR25J FLIRT-1-2A
~(You taste faintly of sweat on the bridge of Aura's nose. She makes a small gasp and pulls back, wiping her face hurriedly.)~
= ~S–sorry! I should've paid more attention before you... well... you can go again now. Please?~
EXIT

CHAIN C0AUR25J FLIRT-1-2B
~(As your lips touch Aura's nose, you feel her breath upon your neck, drawn from no small amount of nervousness. She tilts her head slightly forward, however, laying a faint kiss on your chin before you part.)~
EXIT

CHAIN C0AUR25J FLIRT-1-2C
~(As close as you are to Aura's face, you notice how her nose, despite being slightly larger than average by any other race's standards, is unusually smaller and fey-like, with a sharper, more defined shape that complements her youthful features.)~
= ~(When you finally pull away, Aura smiles at you, only for a strange expression to suddenly take over as her nose twitches. A second later, she sneezes.)~
EXIT

CHAIN C0AUR25J FLIRT-2-2A
~(While Aura sighs in resignation at first when you take her in your arms, as you hold her closely she lays her face against your chest, giving a hum of contentment while resting in your embrace.)~
EXIT

CHAIN C0AUR25J FLIRT-2-2B
~(Aura barely struggles as you cuddle her tightly, finally giving up and wrapping her arms around your neck.)~
EXIT

CHAIN C0AUR25J FLIRT-2-2C
~H–hey...! This again...? I'm not a doll!~
END
++ ~I can't help it... you're just too adorable!~ + FLIRT-2-2C1
++ ~Okay, okay... I'll let go...~ + FLIRT-2-2C2

CHAIN C0AUR25J FLIRT-2-2C1
~Hmph, okay... I guess I can deal with it...~
EXIT

CHAIN C0AUR25J FLIRT-2-2C2
~I–I didn't say you *had* to let go... I didn't mind it that much.~
EXIT

CHAIN C0AUR25J FLIRT-2-2D
~Oof! Goodness, i–it's so hard to decide whether you or Imoen gives the tighter hugs...~
EXIT

CHAIN C0AUR25J FLIRT-1-3A
~M-hmmmm... that's nice. You're so nice and warm, <CHARNAME>.~
EXIT

CHAIN C0AUR25J FLIRT-1-3B
~(As you wrap your arms around Aura's waist and bring her close, she presses herself against you, and you enjoy the softness of her body closely against yours.)~
EXIT

CHAIN C0AUR25J FLIRT-1-3C
~(Aura gives a cry of shock as you lift her from the ground, her arms reaching for you as you pull her close to you for an embrace. She nuzzles your neck as you hold her by the waist.)~
EXIT

CHAIN C0AUR25J FLIRT-1-3D
~Hmm, it's so comforting to be held like this...~
= ~(She nuzzles her face against your neck as you hold onto her, sighing in contentment.)~
EXIT

CHAIN C0AUR25J FLIRT-1-4A
~(Aura blinks bemusedly in response to your gesture.)~
= ~Uh oh... what are you planning this time?~
END
++ ~I'm not telling.~ + FLIRT-1-4A1
++ ~Nothing... I just wanted to see how your smile.~ + FLIRT-1-4A2

CHAIN C0AUR25J FLIRT-1-4A1
~A-haha... I'm already terrified... *shudder*~
EXIT

CHAIN C0AUR25J FLIRT-1-4A2
~Oh. Well then...~
= ~(She gives you a gentle, slightly teasing smile and winks back at you in response.)~
EXIT

CHAIN C0AUR25J FLIRT-1-4B
~What? Is there something on my face? Or is my hair mussed up again? C'mon, tell me what's going on!~
EXIT

CHAIN C0AUR25J FLIRT-1-4C
~(Aura giggles and grins sheepishly for a moment, before nervously running her fingers along her long hair expectantly.)~
EXIT

CHAIN C0AUR25J FLIRT-1-5A
~Oh... no, nononono! A-hahaha! Stop it, <CHARNAME>―no, not there! Hahahahaha―aah!~
EXIT

CHAIN C0AUR25J FLIRT-1-5B
~Eep! Ahahahah, not the waist, not the waist... eeek!~
EXIT

CHAIN C0AUR25J FLIRT-1-5C
~(Surprisingly, Aura puts up a meager resistance as you playfully attack her ticklish spots. When you detect a glint of mischief in her eyes, you realize―a little too late―that you've made a careless mistake.~
= ~Haha! You've fallen for my trap! Get her, Muffy!~
= ~(The small squirrel construct leaps onto you and runs crazily over your body in circles from head to toe, its tiny metal paws tickling you endlessly as you struggle to capture it.)~
END
++ ~Eeeeek! Call him off, Aura!~ + FLIRT-1-5C1
++ ~Okay, okay, I surrender!~ + FLIRT-1-5C1
++ ~No, you don't, you little... ah ha, gotcha!~ + FLIRT-1-5C2

CHAIN C0AUR25J FLIRT-1-5C1
~*giggle* Looks like I win this time, <CHARNAME>!~
EXIT

CHAIN C0AUR25J FLIRT-1-5C2
~Aww. I never get one over you, do I, <CHARNAME>?~
= ~Er, can you give him back now?~
EXIT

CHAIN C0AUR25J FLIRT-1-6A
~Oof! My goodness, you're worse than my sisters, <CHARNAME>...~
EXIT

CHAIN C0AUR25J FLIRT-1-6B
~*sigh* Sometimes I wish I'd outgrow my own face so my cheeks wouldn't be so tempting to other people.~
EXIT

CHAIN C0AUR25J FLIRT-1-6C
~(Aura gives an unconvincingly disapproving pout as you gently rub her cheek using two fingers, while struggling to hide her approval with contented eyes and a barely-restrained smile.)~
EXIT

CHAIN C0AUR25J FLIRT-1-7A
~(Aura flushes furiously as you lay a finger teasingly on her nose.)~
EXIT

CHAIN C0AUR25J FLIRT-1-7B
~(Aura gives a nervous giggle at the affectionate touch. You notice a glint of excitement in her eyes for a brief moment, and as you withdraw, she catches your hand and gently kisses your finger.)~
EXIT

CHAIN C0AUR25J FLIRT-1-7C
~(As you raise a finger to the tip of Aura's nose, she beckons you to lean closer with a candid smile on her face and raises a finger to touch your cheek in return.)~
EXIT

CHAIN C0AUR25J FLIRT-1-7D
~(As you bend down and raise a finger to the tip of Aura's nose, she beckons you to lean closer with a candid smile on her face and lifts her own finger to touch your cheek in return.)~
EXIT

CHAIN C0AUR25J FLIRT-1-8A
~(As you tenderly stroke the long, straight strands of Aura's hair, you notice how well-tended it is. Her hair is clean, even, and smells faintly of rose and lavender. You cannot help but wonder just how much time she spends tending to her hair at night to make up for the roughness of your daily travels.)~
EXIT

CHAIN C0AUR25J FLIRT-1-8B
~(After you brush against Aura's hair for a while, she clasps your hand and holds it against her cheek, gently caressing your fingers with a slight smile.)~
= ~(Suddenly she blushes, and with a flustered expression, reaches in her pack hurriedly to take out a small wooden brush.)~
= ~Umm... would you mind brushing my hair a bit, <CHARNAME>? I'd like that.~
EXIT

CHAIN C0AUR25J FLIRT-1-8C
~(As you trace a strand of Aura's rose-colored hair to its roots on her head, you see the faint change of colour to its natural pale―almost silvery―blonde.~
= ~Aura lets off a giggle as your finger slides against her head, clearly ticklish.)~
END
++ ~You have very lovely hair, Aura.~ + FLIRT-1-8C1
++ ~I want to see your normal hair colour one day.~ + FLIRT-1-8C2

CHAIN C0AUR25J FLIRT-1-8C1
~*giggle* Thank you, <CHARNAME>... I'm really glad you like it.~
EXIT

CHAIN C0AUR25J FLIRT-1-8C2
~Really? I'll let my hair grow out without dyeing it for a while then, if that's what you'd like.~
EXIT

CHAIN C0AUR25J FLIRT-1-9A
~(You sneak up on Aura from behind and teasingly nip on the point of her ear that is slightly sticking out from under her hair. She makes a startled squeak and turns to face you.)~
= ~Eep! Oh, it's just you, <CHARNAME>... um, I don't mind you doing something like that... *blush* ...but could you give me some warning first?~
EXIT

CHAIN C0AUR25J FLIRT-1-9B
~(You give a few teasing pinches to Aura's small, elfin ears.)~
EXIT

CHAIN C0AUR25J FLIRT-1-9C
~No fair, <CHARNAME>! Let me pull your ears once in a while.~
EXIT

CHAIN C0AUR25J stringfix
~Ick. I'll have to see what I can do about that. *ahem* 'La, la...'~
DO ~ClearAllActions() 
      StartCutSceneMode() 
      StartCutScene("c0areset")~ EXIT
