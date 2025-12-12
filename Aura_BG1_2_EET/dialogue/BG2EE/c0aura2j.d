
//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////INTERJECTIONS//////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

// Banters

I_C_T BMINSC 86 C0AuraBMINSC96
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Squirrels, where? Oh, oh, I think I saw them too! Muffy, look! ...aah, they're gone.~
== BJAHEIR ~*sigh*~
END

I_C_T2 BJAN 38 C0AuraBJAN38
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh, nuts and bolts, here we go again...~
END

I_C_T2 BJAN 87 C0AuraBJAN87
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~...Eww.~
END

I_C_T2 BMINSC 3 C0AuraBMINSC3
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh. Erm, actually, some of that might've been... you know, on second thought, I did not say anything. Nope. Not me! *whistle*~
END

I_C_T2 BNEERA 120 C0AuraBJAN87
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh, ooh, strawberry jam! I miss the freshly-baked strawberry tarts my mother used to make. Anomen, pleeeease?~
END

// Autocannon

CHAIN IF WEIGHT #-1 ~Global("C0AuraAutocannon","GLOBAL",1)~ THEN C0AURA2J autocannon
~Oh, I almost forgot! I should probably show you what I had in the package that was so important, right? It just might be something you're interested in.~
DO ~SetGlobal("C0AuraAutocannon","GLOBAL",2)~
END
++ ~That's right, I was curious.~ + autocannon.1
++ ~So what is it?~ + autocannon.1
++ ~Why don't you show me some other time?~ + autocannon.0

CHAIN C0AURA2J autocannon.0
~Hmm, well... okay, I guess it is a bit of an effort to set up. If you don't care for the explanation, then I'll just show you what it does when the time is right. It's a brilliant piece of work!~
DO ~AddSpecialAbility("c0au#sp1")~ EXIT

CHAIN C0AURA2J autocannon.1
~Hee hee. I think explaining would take longer than just putting it together, so just watch!~
DO ~StartCutSceneMode()
MoveToPoint([432.296])
Wait(1)
CreateVisualEffectObject("spnwchrm",Myself)
Wait(1)
CreateCreatureObjectEffect("c0au#at1","spcrtwpn",Myself)
Wait(2)
StartDialogueNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraAutocannon","GLOBAL",2)~ THEN C0AURA2J autocannon1
~Ha ha! And I present: the Lantanese Autocannon! It's a self-triggered automaton which fires, er, fire at its target at rapid speed. I've been waiting on the materials to build one forever!~
DO ~SetGlobal("C0AuraAutocannon","GLOBAL",3)~
= ~It's a bit different from the automaton I usually keep at my side. I use the same triggering mechanism as for snares, so it's great for setting up an ambush and raining fire on enemies. The only problem is it only works until it runs out of power. After that, I'll need to fix it and make it battle-ready again while we rest.~
= ~My father told me he learned how to build them from my grandmother, Minerva. It's a very old design, but still effective. Whenever you want, I can set it up again in real conditions and show you.~
DO ~ActionOverride("C0au#at1",DestroySelf())
AddSpecialAbility("c0au#sp1")~ EXIT

// Bridge District

CHAIN IF WEIGHT #-1 ~Global("C0AuraBridgeDistrict","GLOBAL",1)~ THEN C0AURA2J bridge
~Here we are at the marketplace... I really like the Bridge District. The sounds, the smell of the sea... it's not quite like my hometown of Anchoril, but it's close.~
DO ~SetGlobal("C0AuraBridgeDistrict","GLOBAL",2)~
= ~See that stall over there? Before I joined up with you, I used to go by there about twice a week, set up some space, and write letters for people to get some coins.~
END
  ++ ~You made a living by writing letters? I'd have thought you'd use your skills for something more profitable.~ EXTERN C0AURA2J bridge-1
  ++ ~That doesn't sound half bad. I'd imagine there's a decent amount of people who'd pay to have things written for them.~ EXTERN C0AURA2J bridge-2
  ++ ~Let's not get caught up in reminiscing. We've got work to do.~ EXTERN C0AURA2J bridge-0

CHAIN C0AURA2J bridge-0
~Alright, got it.~
EXIT

CHAIN C0AURA2J bridge-1
~Well... I can't just freely share the secrets of my trade, you know. I was just hoping to offer a helpful service rather than just earning gold.~
EXTERN C0AURA2J bridge-2

CHAIN C0AURA2J bridge-2
~There's plenty of people here who've never learned to write, or haven't learned enough words to write a letter they're satisfied with, but still want to contact people important to them from far away... it was mostly just a side hustle at first, but I started to enjoy it after a while.~
= ~Some customers had some interesting stories to tell. Not that I was trying to be nosy or pry into their personal matters, mind you! But it made things a lot more fun.~
= ~Not to mention, the Five Flagons is right there. The proprietor, Samuel, is fond of me and offers me drinks on the house after I close the stall. Non-alcoholic, of course... I really can't hold my drink.~
= ~If we're not busy, why don't we go inside and have a look? They have a wonderful playhouse too... you should see one of their performances when you have a chance.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraTanner","GLOBAL",1)~ THEN C0AURA2J tanner
~This is...~ [C0BLANK]
= ~That... that *beast* of a man... he did all of this?~
= ~<CHARNAME>, we can't let him get away. No one... *no one* should be allowed to get away with this!~
DO ~SetGlobal("C0AuraTanner","GLOBAL",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("InteractAura","LOCALS",0)
InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)
RandomNum(2,1)~ THEN BERTRAND bertrand
~Hmm, what do you say, sweet little cherub? Fancy a roll in the hay?~
DO ~SetGlobal("InteractAura","LOCALS",2)~
== C0AURA2J ~Eww. Thanks, but no thanks...~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraThalia","LOCALS",0)
InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)
RandomNum(2,1)~ THEN FFWENCH thalia
~Aura! You're a real sight for sore eyes. I hope things are going well.~
DO ~SetGlobal("C0AuraThalia","LOCALS",2)~
== C0AURA2J ~Oh, yes! Everything's just fine, Thalia. Thanks for asking.~
== FFWENCH ~Well, don't be a stranger. You're much better company than any of these louts.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraSamuel","GLOBAL",0)
Range("C0Aura",15)
InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN FFBART C0AuraSamuel
~Well, if it isn't the sweetest gnome from here to the Dalelands! How fares thee, Aura? I haven't had the pleasure of your patronage in a while!~
DO ~SetGlobal("C0AuraSamuel","GLOBAL",1)~
== C0AURA2J ~Hello, Samuel! I'm sorry I haven't come by recently.~
== FFBART ~Well, since you're here now, lemme thank you once again for all your efforts in helpin' the theatre below in the last month.~
== C0AURA2J ~No, not at all! Being able to help the Sigil Troupe out is my pleasure, and I didn't do that much, really...~
== FFBART ~Surely you jest, my dear! I could count the number of folks in Athkatla capable of repairin' machinery and providin' pyrotechnics in one hand, and none of 'em have close to your talent. I'm sure the troupe would agree with me!~
== C0AURA2J ~Oh... *giggle* You're too kind, Samuel. It was just once, you know? I didn't even get a chance to speak with any of the actors themselves...~
== FFBART ~Ah... I should apologize on their behalf that none of 'em have ever had the chance to come to the market stalls an' thank you personally. Miss Raelis especially wanted to meet you, but with the recent troubles with the troupe...~
== C0AURA2J ~I understand. It means everything just to be acknowledged at all by such an esteemed troupe of actors. I'm a huge fan of their performance.~
== FFBART ~Miss Raelis left this for you as a token of gratitude in case you ever decided to stop by. She said she wouldn't take no for an answer, so don't even think of refusin' now, else I'd have find her to beg her pardon meself. *laugh*~
== C0AURA2J ~A... gift from Raelis Shai...? Goodness, I can't believe it! Thank you, Samuel! I'll treasure it forever!~
DO ~GiveItemCreate("clck07","C0Aura",1,0,0)~
== FFBART ~You sure I can't tempt you with some of my finest spiced wine while you're here? Freshly imported from Arabel!~
== C0AURA2J ~Oh no, I couldn't. I'd love to, but I get all sleepy whenever I touch liquor. Something a bit lighter for me, thanks.~
== FFBART ~As you please. A cool glass of ice and cherry tea with honey as per usual, then. This one's on the house!~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraElephantSkin","GLOBAL",1)~ THEN C0AURA2J AURA-ELEPHANT-HIDE
~You know, I think I've seen this stuff before. Unless... wait, let me take a closer look. No, I've *definitely* seen this stuff before.~ [C0BLANK]
DO ~SetGlobal("C0AuraElephantSkin","GLOBAL",2)~
END
++ ~What is it?~ + AURA-ELEPHANT-HIDE-1

CHAIN C0AURA2J AURA-ELEPHANT-HIDE-1
~Elephant hide. Have you seen an elephant before, <CHARNAME>? They're massive, and they've got a long trunk, big horns, big ears... and they make this sound, like: "baraaaaahh!"~
= ~No, wait, that's not it. It's more like...~
= ~Oh, forget it, that's not the point. Anyways, elephants aren't the sort of beast you see just anywhere. I know we had *one* elephant in Lantan some time ago, and that was when one of the guilds imported it from Zakhara for an absurd price.~
= ~And... *sniff* this piece of hide's been treated, so it must have come from a coat or something.~
= ~I'd say we talk to the local skinners and tanners. Anyone who's worked with something this exotic has to remember it.~
DO ~SetGlobal("MerchantHide","GLOBAL",1)
AddJournalEntry(%Aura_Quest_Skinner_Entry%,QUEST)~  EXIT

INTERJECT MERCHANT 15 C0AuraBridgeMerchant
== MERCHANT IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Solik berries are used for—~
== C0AURA2J ~*gasp* Mumbleberry pie!~
== MERCHANT ~Yes, indeed. A local bakery uses them for, as the young lady says, their signature mumbleberry pie. Very tasty, but they are closed now. It is the berry's off-season.~
EXTERN MERCHANT 12

I_C_T2 REEDLE 0 C0AuraReedle
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*sniff* Pfaugh! Now that fishy smell reminds me of the coasts of my homeland. Hmm, I wonder if Koko-chan would like any of the seafood here?~
END

INTERJECT NEB 5 C0AuraNebEncounter
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~The childr— you... YOU! I remember you, disgusting murderer!~
== NEB ~Teehee... we meet again, pretty. Are you here to join the children? Hee... hee...~
DO ~Enemy()~
== C0AURA2J ~I've been looking forward to this. You disgusting filth... have a taste of THIS!~
== NEB ~Eh—?~
== C0AURA2J ~Caelum, Iustitia, Invocare!~
DO ~SetInterrupt(FALSE)
StartCutSceneMode()
CutSceneId("C0Aura")
CreateCreature("chwraith",[687.236],SWW)
CreateCreature("chwraith",[542.203],SEE)
CreateCreature("chwraith",[492.385],NNE)
CreateCreature("chwraith",[553.472],N)
Wait(1)
ForceSpellRES("C0ARUNE5","NEB")
SmallWait(5)
DisplayStringHead("NEB",%EEEAAAAAAHHHH!%)
Kill("NEB")
Wait(3)
EndCutSceneMode()
SetInterrupt(TRUE)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraNebEncounter","GLOBAL",1)~ THEN C0AURA2J C0AURA-POST-NEB
~Hah... hah... oh, I... did I really just do that?~
DO ~SetGlobal("C0AuraNebEncounter","GLOBAL",2)~
END
++ ~That was quite a reaction. I didn't think you had it in you.~ + C0AURA-POST-NEB-1
++ ~Wow. Just... wow.~ + C0AURA-POST-NEB-1
++ ~If only you could do that more often.~ + C0AURA-POST-NEB-1
++ ~Nice work. That scum had it coming.~ + C0AURA-POST-NEB-2

CHAIN C0AURA2J C0AURA-POST-NEB-1
~I, um... that was awkward. I didn't mean to go so far, I was just so angry and I, well....~
EXTERN C0AURA2J C0AURA-POST-NEB-3

CHAIN C0AURA2J C0AURA-POST-NEB-2
~Yes... he did. But I didn't mean to go so far, I was just so angry and I, well...~
EXTERN C0AURA2J C0AURA-POST-NEB-3

CHAIN C0AURA2J C0AURA-POST-NEB-3
~I couldn't control myself. As soon as I realized who he was, something in me just snapped and then I unleashed a full-power Aerial Judgment on him, and... oh, I never imagined I could be this violent!~
= ~Just... pretend you didn't see this side of me, okay, <CHARNAME>?~
EXIT

I_C_T RAELIS 33 C0AuraRAELIS33
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Er... that was, um... the plays are usually much better than this, I promise!~
END

I_C_T RAELIS 37 C0AuraRAELIS37
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Rae—raelis Shai?~
== RAELIS ~Yes, I am she... but wait, are you not the young girl who so kindly assisted the troupe with your crafts not so long ago?~
== C0AURA2J ~Th–that's right, Ms. Raelis! I–i–i'm Aura Glimmershine. I've a big fan—I, I mean, I am a big fan of your plays! *blush*~
== RAELIS ~Thank you, child. If only I had the means to thank you properly, but alas, with our troupe in this state, I can only apologize that my words are all I can offer...~
END

I_C_T YUSUF 2 C0AuraYUSUF2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Wh— what are you doing?! She wasn't a part of this!~
END

I_C_T FFRECEP 0 C0AuraFFRECEP0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Go on, <CHARNAME>, the Sigil Troupe's performances are worth every coin!~
END

I_C_T HAERDA 109 C0AuraHAERDA109
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Eep, this is some seriously nasty mind-controlling magic. Whoever did this is undoubtedly a master of Enchantment, <CHARNAME>, watch out.~
END

// Brynnlaw/Spellhold

I_C_T PPSAEM 14 C0AuraArrivedBrynnlaw
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ugh, that was... about as awful as I expected. And from the looks of this island, things aren't about to get any more pleasant...~
END

I_C_T PPSAEM 53 C0AuraArrivedBrynnlaw
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ugh, that was... about as awful as I expected. And from the looks of this island, things aren't about to get any more pleasant...~
END

I_C_T PPSAEM2 19 C0AuraPPSAEM219
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Either another journey across the sea, or the Underdark of all places... I hate the idea of both, <CHARNAME>, but whichever one you decide, I'll do my best for you.~
END

I_C_T2 PPSAILOR 0 C0AuraPPSAILOR0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~N-no... NO! We have to get off... we have to get off this ship, before... before...!~
END

I_C_T PIRKID01 0 C0AuraPIRKID010
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Watch your pockets, <CHARNAME>! He's—~
END

I_C_T PPAPHRIL 0 C0AuraPPAPHRIL0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh, my... to see the endless planes in the multiverse, but to be in so much pain in the process... I don't know whether I should envy or pity her.~
END

I_C_T JANJ 152 C0AuraJANJ152
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Uh, are you sure it was the Blackstaff that gave your uncle the disorder, Jan? Sounds like he had a few screws loose to begin with.~
END

I_C_T PPCOWLED 1 C0AuraPPCOWLED1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Something's wrong with him. The monotone speech and the lifeless eyes... this reeks of enchantment magic.~
END

I_C_T PPDILI 0 C0AuraPPDILI0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I—I–I don't...~
== PPDILI ~*giggle* You're so funny, lady! Why are your eyes and mouth so wide open? And you're not much taller than I am. Will you play with me?~
== C0AURA2J ~<CHARNAME>, this is going too far. I don't care how dangerous magic is, no one should be allowed to lock a child away like this!~
END

I_C_T PPIRENI1 4 C0AuraPPIRENI14
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~This place is all sorts of sick and wrong, <CHARNAME>. People shouldn't be treated like test subjects in a place like this.~
END

I_C_T PPTIAX 6 C0AuraPPTIAX6
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Tiax? But, why are you here? Huh, on second thought... I guess it doesn't seem so strange after all...~
END	

I_C_T PPSTAT01 5 C0AuraPPSTAT015
== C0AURA2J IF ~!IsGabber("C0Aura") InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh, well done. I don't think I could've gotten all twelve right so easily.~
END

I_C_T2 PPWANEV 5 C0AuraPPWANEV5
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Uhh... clear everything up? I think I can feel my brain slowly withering away with each line I read of this gibberish... wait, either I'm also starting to go insane, or there's a cipher in here somewhere...~
== C0AURA2J ~...Nope. I'm definitely going crazy. And seeing monkeys.~
END

I_C_T YOSHJ 113 C0AuraYOSHJ113
== C0AURA2J IF ~!GlobalGT("C0AuraYoshimo2","GLOBAL",4) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Wh–what? Yoshimo, how could you?~
END

I_C_T YOSHJ 113 C0AuraYOSHJ113
== C0AURA2J IF ~GlobalGT("C0AuraYoshimo2","GLOBAL",4) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Y–Yoshimo...? No... no, it can't be...~
END

I_C_T YOSHIMOX 0 C0AuraYOSHIMOX0
== C0AURA2J IF ~Global("C0AuraYoshimo2","GLOBAL",4) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Why do you have to do this, Yoshimo?~
DO ~SetGlobal("C0AuraYoshimoBetrayal","GLOBAL",1)~
== YOSHIMOX ~Little Aura... please don't. I cannot afford to stay my hand. I have waited too long already.~
== C0AURA2J ~I knew... long before all of this, I knew you were keeping secrets, despite our friendship... even then, I wanted to believe you would tell me, when you felt the time was right.~
== YOSHIMOX ~...~
== YOSHIMOX ~You are far too naive, Aura. Do you believe Irenicus would have chosen any fool to gain <CHARNAME>'s trust? Every action I made to said, every action I made while in your company was to lead to this ending. Befriending you, naturally, was just another means to an end.~
== C0AURA2J ~I—I don't believe you. You never wanted it to end up like this. You still don't.~
== YOSHIMOX ~What would you presume to know of—~
== C0AURA2J ~I just... don't understand. We trusted you. Why... why couldn't you trust us? <CHARNAME> would have helped you... *we* would have helped you.~
== YOSHIMOX ~Enough! Please... that's enough.~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraYoshimoBetrayalTalk","GLOBAL",1)~ THEN C0AURA2J C0AURA-YOSHIMOB
~...~ [C0BLANK]
DO ~SetGlobal("C0AuraYoshimoBetrayalTalk","GLOBAL",2)~
= ~...When? When does our suffering end, <CHARNAME>?~
END
  ++ ~I'm sorry, Aura. I wish it could have been different.~ + C0AURA-YOSHIMOB-1
  ++ ~You seem to be handling Yoshimo's death better than I expected.~ + C0AURA-YOSHIMOB-2
  ++ ~I don't know. But there must be an end to it all.~ + C0AURA-YOSHIMOB-3
  ++ ~What's done is done. All we can do is get revenge on Irenicus.~ + C0AURA-YOSHIMOB-4

CHAIN C0AURA2J C0AURA-YOSHIMOB-1
~So do I. But there wasn't anything we could do, <CHARNAME>. I've accepted that.~
EXTERN C0AURA2J C0AURA-YOSHIMOB-2

CHAIN C0AURA2J C0AURA-YOSHIMOB-2
~I... I came to terms with the truth about Yoshimo already. And when I heard what he had to say... I know his betrayal must have destroyed him inside, just as it did to us.~
== C0AURA2J ~If it's true that Irenicus had him under a geas since the beginning... then it's likely that Yoshimo has been living a life out of his control all this time. And maybe... dying to you might have been the first choice he's been able to make for a long time.~
== C0AURA2J ~It's... the only way he could restore any semblance of honor. Maybe you can't see it that way, <CHARNAME>... and I wouldn't blame you. What he had a part in doing to you was... unforgivable. But he also knew that.~
== C0AURA2J ~*sigh* I need some time to think about all this. I'm sorry, <CHARNAME>. Even though he betrayed us... I still care about him, even now.~
== C0AURA2J IF ~!GlobalGT("YoshimoBodhiServant","GLOBAL",0) PartyHasItem("miscbu")~ THEN ~Let's bring his heart to a priest of Ilmater, <CHARNAME>. If you are able to forgive him... maybe there's still a chance he'll have peace.~
== C0AURA2J IF ~!GlobalGT("YoshimoBodhiServant","GLOBAL",0) !PartyHasItem("miscbu")~ THEN ~Take his heart, <CHARNAME>. We should... bring it to a priest of Ilmater. If you are able to forgive him... maybe there's still a chance he'll have peace.~
== C0AURA2J IF ~GlobalGT("YoshimoBodhiServant","GLOBAL",0) !PartyHasItem("miscbu")~ THEN ~And... his heart is destroyed. There may be no chance at salvation for him anymore... ever. And I know how much he meant to you, <CHARNAME>... I'm sorry. I'm so, so sorry...~
EXIT

CHAIN C0AURA2J C0AURA-YOSHIMOB-3
~I want to believe... but how much more of this will we have to see? We just... lost another friend. And... there was nothing we could do.~
EXTERN C0AURA2J C0AURA-YOSHIMOB-2

CHAIN C0AURA2J C0AURA-YOSHIMOB-4
~Yes... revenge will end it all. But will revenge bring back the dead? Will it undo everything we've been tormented by?~
EXTERN C0AURA2J C0AURA-YOSHIMOB-2

CHAIN IF WEIGHT #-1 ~Global("C0AuraBG2RomanceSlayerTalk","GLOBAL",1)~ THEN C0AURA2J C0AURA-ROM-SLAYER
~You look... so pale, <CHARNAME>. Did you get any sleep at all?~ [C0BLANK]
DO ~SetGlobal("C0AuraBG2RomanceSlayerTalk","GLOBAL",2)~
END
  ++ ~No. Not really.~ + C0AURA-ROM-SLAYER-1
  ++ ~I had another nightmare. Perhaps the worst one yet.~ + C0AURA-ROM-SLAYER-2
  ++ ~Stay away from me. I can't... let you get close to me right now.~ + C0AURA-ROM-SLAYER-1
  ++ ~It's nothing. Let's just get moving.~ + C0AURA-ROM-SLAYER-0

CHAIN C0AURA2J C0AURA-ROM-SLAYER-0
~It can't be nothing. It has to be something truly terrible if you feel you need to lie to me, <CHARNAME>.~
= ~But... I don't want to push you right now. So I'll wait until you're ready to talk. Just promise me you will.~
EXIT

CHAIN C0AURA2J C0AURA-ROM-SLAYER-1
~You had nightmares again, didn't you?~
EXTERN C0AURA2J C0AURA-ROM-SLAYER-3

CHAIN C0AURA2J C0AURA-ROM-SLAYER-2
~I thought so. Will you... tell me about it?~
END
  ++ ~I dreamt of the evil inside of me. It took Imoen's form, telling me to give myself up to it.~ + C0AURA-ROM-SLAYER-3
  ++ ~I... I turned again, and I killed everyone. Friends and foes alike. I even killed you...~ + C0AURA-ROM-SLAYER-3
  ++ ~Please don't ask me to remember it. I just want to forget...~ + C0AURA-ROM-SLAYER-4
  ++ ~The divine essence inside me offered me power. I'm tempted to take it.~ + C0AURA-ROM-SLAYER-5
  ++ ~I don't want to talk about it. We have more important things to worry about.~ + C0AURA-ROM-SLAYER-6

CHAIN C0AURA2J C0AURA-ROM-SLAYER-3
~I... was afraid it'd be something like that. Ever since I saw the Slayer surfacing from you, I knew it wouldn't be the only time it haunted us.~
= ~You don't want it, do you? As frightening as it was... what scared me more was seeing how much pain you were in when it happened.~
END
  ++ ~You know me, Aura. You know I don't want any of this.~ + C0AURA-ROM-SLAYER-7
  ++ ~I don't. I want to forget it ever happened...~ + C0AURA-ROM-SLAYER-4
  ++ ~I'm not sure... considering everything, I can't deny I want more power.~ + C0AURA-ROM-SLAYER-5
  ++ ~Just leave me alone. I'm fine.~ + C0AURA-ROM-SLAYER-6

CHAIN C0AURA2J C0AURA-ROM-SLAYER-4
~So do I... I wish we could have avoided all of this.~
EXTERN C0AURA2J C0AURA-ROM-SLAYER-7

CHAIN C0AURA2J C0AURA-ROM-SLAYER-5
~<CHARNAME>...~
= ~There's nothing wrong with wanting power in itself. Especially... for someone like you. But what matters is the cost... you've made it so far on your own. You can't give up to it, not now. If you want the power to save yourself from all of this pain... we can seek it together. There will be another way.~
EXTERN C0AURA2J C0AURA-ROM-SLAYER-7

CHAIN C0AURA2J C0AURA-ROM-SLAYER-6
~I... I get it. I know you don't want to talk about it... neither do I. But let me stay close to you for a while... until you can feel warm again.~
EXIT

CHAIN C0AURA2J C0AURA-ROM-SLAYER-7
~I wish every day that we could've all lived normal, happy lives... but instead, you've been put through nothing but pain. But I know you'll keep fighting regardless... you're just that type of person.~
= ~Don't give up, <CHARNAME>. I don't ever want to see you give up.~
END
  ++ ~I won't, Aura. Not as long as you're with me.~ + C0AURA-ROM-SLAYER-8
  ++ ~You're right. I needed some encouragement.~ + C0AURA-ROM-SLAYER-8
  ++ ~Alright. Now can we get ready to go?~ + C0AURA-ROM-SLAYER-9

CHAIN C0AURA2J C0AURA-ROM-SLAYER-8
~Hehe... that's what I'm here for, you know. Making sure you still have something positive in your life.~
EXTERN C0AURA2J C0AURA-ROM-SLAYER-9

CHAIN C0AURA2J C0AURA-ROM-SLAYER-9
~I know we can't stay like this forever... but let's take our time. You can lean on me for a bit of comfort as long as you need.~
EXIT

EXTEND_BOTTOM PPIMOEN 0
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~You can't recognize Aura? Come on, the two of you were the best of friends. Don't you see her?~ EXTERN C0AURA2J C0AuraPPIMOEN0
END

CHAIN C0AURA2J C0AuraPPIMOEN0
~<CHARNAME>, something's terribly, terribly wrong... her eyes are so distant, hurt, and lifeless! I've never seen any sort of magic or potion that makes someone like this. I... I don't know what I can do!~
END
IF ~~ EXTERN PPIMOEN 1

I_C_T IMOEN2 22 C0AuraIMOEN222
== C0AURA2J IF ~!IsGabber("C0Aura") InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, you can't! She needs you. I— I've found myself out of worse situations before. Let me find my way out of here alone. I'll probably stand a better chance than her.~
END

I_C_T TOKCRE01 0 C0AuraTOKCRE010
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Huh... this sort of machine's quite common back at the schools in my homeland. Usually we store them with toys and sweets. I wonder how this one ended up here...?~
END

INTERJECT Player1 3 C0AuraSpellholdDizzy
== C0AURA2J IF ~InParty("C0Aura") Range("C0Aura",15) !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN
~Whoa, whoa. Take it easy, <CHARNAME>, you're about to fall over. How's your head feeling? Do you need some medicine? Why don't you sit down and let me give you a check-up? Or what about–~
END
++ ~No, no, I'm fine. I was just feeling a little dizzy.~ EXTERN C0AURA2J C0AuraSpellholdDizzy.1
++ ~I'm not sure what it was. It's like I wasn't myself for a second there.~ EXTERN C0AURA2J C0AuraSpellholdDizzy.2
++ ~Don't coddle me. A little setback like this won't slow me down.~ EXTERN C0AURA2J C0AuraSpellholdDizzy.3

CHAIN C0AURA2J C0AuraSpellholdDizzy.1
~You sure you're okay? I could always brew up a remedy for chronic headaches if it'll help. Or how about some soup?~
EXTERN C0AURA2J C0AuraSpellholdDizzy.4

CHAIN C0AURA2J C0AuraSpellholdDizzy.2
~That doesn't sound good. I've heard of all sorts of symptoms caused by mental and physical stress, but I've never seen anything like what happened back there...~
EXTERN C0AURA2J C0AuraSpellholdDizzy.4

CHAIN C0AURA2J C0AuraSpellholdDizzy.3
~Well... alright. I guess I shouldn't hassle you when you're being this prickly.~
EXTERN C0AURA2J C0AuraSpellholdDizzy.4

CHAIN C0AURA2J C0AuraSpellholdDizzy.4
~Here, have a drink of this. Maybe it'll make you feel a little better? If there's anything else I can do for you, just say the word.~
DO ~GiveItemCreate("c0apot01",Player1,1,0,0)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraSeesCrushTrap","GLOBAL",1)~ THEN C0AURA2J C0AURA-CRUSH-TRAP
~STOP! Don't move... there's a deadly mechanism in front of us! Stay where you are, I'll take care of it immediately!~
DO ~SetGlobal("C0AuraSeesCrushTrap","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
TriggerActivation("crtrap1",FALSE)
TriggerActivation("crtrap2",FALSE)
MoveToPoint([2139.795])
AddExperienceParty(3500)
PlaySound("ACT_09")
SmallWait(1)
MoveToPoint([2016.708])
AddExperienceParty(3500)
PlaySound("ACT_09")
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraSeesCrushTrap","GLOBAL",2)~ THEN C0AURA2J C0AURA-CRUSH-TRAP-2
~Okay, all taken care of... that was so dangerous. One wrong step, and someone could've been crushed to paste!~
DO ~SetGlobal("C0AuraSeesCrushTrap","GLOBAL",3)~
== IMOEN2J IF ~InParty("IMOEN2") InMyArea("IMOEN2")~ THEN ~...You've got to teach me how to do that.~
== C0AURA2J IF ~InParty("IMOEN2") InMyArea("IMOEN2")~ THEN ~Ah... ahaha... I'll be sure to, once we see daylight again. Anyway...~
== C0AURA2J ~This place is a house of horrors, <CHARNAME>... clearly no one was expected to leave here alive. We need to be as alert as possible.~
EXIT

INTERJECT PLAYER1 5 C0AuraFirstSlayerChange1
== C0AURA2J IF ~InParty("C0Aura") Range("C0Aura",15) !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Th–that was the most terrifying thing I've ever seen in my life! I– I've seen that monster before, <CHARNAME>! It was the Slayer, the avatar of Bhaal!~
== C0AURA2J ~There were all sorts of horrifying stories of its rampages during the Time of Troubles, but I never thought it'd be every bit as powerful or monstrous as they said! How... how could the small amount of Bhaal's taint in you affect you this much?~
== C0AURA2J ~I–I don't know what to say, <CHARNAME>... this is all so, so wrong!~
EXIT

// ROMANCE CONTENT: the second slayer change

INTERJECT Player1 7 C0AuraSecondSlayerChange0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Can't sleep, huh...? I don't blame you. I have a hard time keeping my eyes shut too... here, I've boiled some lavender tea to help us relax. It's not much, but... <CHARNAME>, what's wrong?~
END
++ ~Aura, get away now. I can't stop this thing from hurting you!~ EXTERN C0AURA2J C0AuraSecondSlayerChange1
++ ~Watch out, Aura! It's happening again!~ EXTERN C0AURA2J C0AuraSecondSlayerChange1
++ ~Run away! Now!~ EXTERN C0AURA2J C0AuraSecondSlayerChange1

CHAIN C0AURA2J C0AuraSecondSlayerChange1
~Yikes. Looks like your voice's gone too. Some honeyed lemon water would help with that, if I had any... what? No... no, no no no NO!~
DO ~SetGlobal("C0AuraSecondSlayerChange","GLOBAL",1)
ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
EXIT

INTERJECT Player1 10 C0AuraSlayerSurvived1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraSecondSlayerChange","GLOBAL",1)~ THEN ~T–this is a nightmare, a nightmare... a horrible nightmare... *sob*~
= ~Why... why do these things have to happen to you? Why do you have to suffer like this?~
DO ~SetGlobal("DrowTalk","GLOBAL",5)~ EXIT

EXTEND_BOTTOM Player1 10
IF ~Dead("C0Aura") Global("C0AuraSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
END

// Bodhi

EXTEND_BOTTOM BODHIAMB 5
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraVampire","GLOBAL",0)~ EXTERN BODHIAMB C0AuraKidnap
END

CHAIN BODHIAMB C0AuraKidnap 
~You follow in the hopes of retrieving something dear to you. I say that the longer you keep this up, the more you will lose.~
== BODHIAMB ~Such as this feeble little gnome. So weak, so pitiful... it is no wonder she has latched onto you like a parasite. How much will you suffer should I tear her from you, I wonder?~
== C0AURA2J ~I'm not afraid of you. Not while <CHARNAME> needs me at her side.~
== BODHIAMB ~I do not want your fear, little girl. What I want is far, far worse...~
== C0AURA2J ~NO!~
== C0AURA2J ~'Ama-tsu-kami, ku-ni-tsu-kami,
ya-o-yo-ro-zo no ka-mi-ta-chi to-mo ni,
ki-ko-shi me-se to,
ka-shi-ko-mi ka-shi-ko-mi mo ma-o-su...'~
END
IF ~~ DO ~SetGlobal("C0AuraVampire","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutSceneEx("C0ABODHI",FALSE)~ EXIT

CHAIN IF WEIGHT #-1
~Global("C0AuraVampire","GLOBAL",1)~ THEN BODHIAMB C0AuraBodhiKidnap
~What is this?!~ [C0AUBO1]
DO ~SetGlobal("C0AuraVampire","GLOBAL",2)~
== C0AURA2J ~...~
END
  ++ ~Aura! What are you doing?~ EXTERN BODHIAMB C0AuraBodhiKidnap.1
  ++ ~Don't you dare touch her, Bodhi!~ EXTERN BODHIAMB C0AuraBodhiKidnap.1

CHAIN BODHIAMB C0AuraBodhiKidnap.1
~Accursed foreign magicks! I will ensure that you suffer eternally for this, gnome. But I will make sure you watch <CHARNAME>'s suffering first.~
COPY_TRANS BODHIAMB 5

CHAIN IF WEIGHT #-1 ~Global("C0AuraVampire","GLOBAL",2)~ THEN C0AURA2J AURA-VAMPIRE
~What... what happened, <CHARNAME>? Where did the vampires... where did Bodhi go?~ [C0BLANK]
DO ~SetGlobal("C0AuraVampire","GLOBAL",3)~
END
  ++ ~You don't remember how you started glowing and summoned a spirit out of nowhere to protect you?~ + AURA-VAMPIRE-1
  ++ ~It doesn't matter. I'm just glad you're safe.~ + AURA-VAMPIRE-1
  ++ ~That whole display wasn't what you intended, I take it.~ + AURA-VAMPIRE-1

CHAIN C0AURA2J AURA-VAMPIRE-1
~I... I remember praying... I spoke some chants meant to protect from some evil spirits, then... I don't know.~
= ~I think I heard a voice... it told me that it was fulfilling its oath, and now its duty is over... and I felt some kind of warmth. And then the next thing I heard was you calling me.~
= ~It was all so strange. I wasn't expecting anything like it to happen, and I still don't know why it did, but... huh?~
DO ~ClearAllActions()
StartCutSceneMode()
CreateVisualEffectObject("C0AMAGF1",Myself)
TransformItem("c0amaga1","c0amaga3")
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraVampire","GLOBAL",3)~ THEN C0AURA2J AURA-VAMPIRE2
~Reika-san's magatama... it's glowing. And there's something different about it. It's like it's awakened.~ [C0BLANK]
DO ~SetGlobal("C0AuraVampire","GLOBAL",4)~
END
  ++ ~Is it that power which protected you?~ + AURA-VAMPIRE2-1
  ++ ~I'll be forever grateful, even though I've never met her.~ + AURA-VAMPIRE2-1
  ++ ~You're lucky. Things could've gone much worse there.~ + AURA-VAMPIRE2-1

CHAIN C0AURA2J AURA-VAMPIRE2-1
~Maybe she always knew... she knew I would only face more dangers, and so she left me this last gift as a way to protect me, in my hour of need, even after she was gone...~
= ~...Thank you.~
= ~I'm ready, <CHARNAME>. This power... I'm not sure why, but I know I can use it to protect you too. Let's bring down this evil together.~
EXIT

I_C_T C6BODHI 0 C0AuraC6BODHI0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~You... this is all a game to you, isn't it? Well, whatever game you think we're playing, we'll be ending it now!~
END

// City Gates

INTERJECT JANJ 87 C0AuraJAN87
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~What's so wrong with milk baths? They're warm... and so nice for your skin... mmm...~
EXTERN JANJ 88

I_C_T GRVLCH01 0 C0AuraCRVLCH010
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Whoa! What's a centuries-old lich doing in a place like this?~
== GRVLCH01 ~Perish.~
END

// City-of-Caverns

INTERJECT SAHPR1 1 C0AuraSAHPR11
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~S-sahuagin, the shark-headed sea fiends... I recognize them from the bestiaries I've read. I—I... I've never heard a language like this before though...~
EXTERN SAHPR1 2

INTERJECT SAHKNG01 17 C0AuraSAHPR117
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>, I... I—~
END
  + ~OR(2)
     Global("C0AuraRomanceActive","GLOBAL",1)
     Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I'm here, Aura. You don't have to be scared. We're not in the water anymore. You're safe with me.~ EXTERN C0AURA2J C0AuraSahuagin
  ++ ~Aura, you look so pale! What's wrong?~ EXTERN C0AURA2J C0AuraSahuagin
  ++ ~Oh, gods, the fall into the sea must have affected you. What do I do?~ EXTERN C0AURA2J C0AuraSahuagin
  ++ ~Don't embarrass me in front of the shark-men now of all times, Aura...~ EXTERN C0AURA2J C0AuraSahuagin

CHAIN C0AURA2J C0AuraSahuagin
~I, I'm, I—!~
DO ~SetGlobal("C0AuraSahuaginFears","GLOBAL",1)~
== SAHKNG01 ~What's this? That especially puny one seems to be shaking especially violently. Rather like a mealworm on a hook, I might say. (Hee hee!) If she's incapable of following your orders, perhaps you can leave her here as a light snack instead, eh?~
END
  ++ ~Shut up! Don't you dare talk about her like that!~ EXTERN SAHKNG01 C0AuraSahuagin.1
  ++ ~The challenge can wait! I need to take care of my companion first.~ EXTERN SAHKNG01 C0AuraSahuagin.1
  ++ ~I need you to get it together, Aura. Now's not the time to break down on me!~ EXTERN SAHPR1 C0AuraSahuagin.2

CHAIN SAHKNG01 C0AuraSahuagin.1
~(Hee hee!) Quite the gall you have, strange <PRO_RACE>. You are quite lucky I'm in a tolerant mood right now. Otherwise...~
== SAHPR1 ~My king... please. Allow me to handle this matter. This will not inconvenience you for long.~
EXTERN SAHPR1 C0AuraSahuagin.2

CHAIN SAHPR1 C0AuraSahuagin.2
~Worry not, <PRO_RACE>. Take our king's challenge, while your companion will be under my personal protection. So long as you succeed, no harm will come to her—I swear in the Shark-Father's name. You are needed for our cause, and angering you by allowing those with you to be harmed shall benefit neither of us.~
END
  ++ ~Fine. It seems I have no choice but to trust in your word, priestess.~ DO ~ActionOverride("C0Aura",LeaveParty()) ActionOverride("C0Aura",ApplySpellRES("C0AQEF27",Myself))~ EXTERN SAHKNG01 C0AuraSahuagin.3
  ++ ~Alright... please take care of her. She has a terrible fear of drowning.~ DO ~ActionOverride("C0Aura",LeaveParty()) ActionOverride("C0Aura",ApplySpellRES("C0AQEF27",Myself))~ EXTERN SAHKNG01 C0AuraSahuagin.3
  ++ ~No. I don't trust any of you. We're leaving now, or else you all die!~ EXTERN SAHKNG01 22

CHAIN SAHKNG01 C0AuraSahuagin.3
~Finally! I was just about to decide that I'd prefer a meal over entertainment. Now then, off to the ring with you!~
COPY_TRANS SAHKNG01 17

INTERJECT SAHKNG01 24 C0AuraSAHKNG0124
== SAHKNG01 IF ~GlobalGT("C0AuraSahuaginFears","GLOBAL",0)~ THEN ~Oh, and of course, your companion is returned to you... unharmed, as our wiser priestess promised. A pity, she does look rather delectable.~
DO ~SetGlobal("C0AuraSahuaginFears","GLOBAL",3) ActionOverride("C0Aura",ApplySpellRES("C0AQEF28",Myself)) ActionOverride("C0Aura",JoinParty())~
== SAHPR1 ~She remains shaken, but she should prove responsive to you now, surface <PRO_RACE>. Go, now.~
== C0AURA2J ~I... I'm sorry for causing a problem for you, <CHARNAME>. I'm... fine now. Really.~
END
  ++ ~Are you sure? You don't have to hide it, if you still haven't recovered.~ EXTERN C0AURA2J C0AuraSahuagin.4
  ++ ~It's not your fault. What happened with the ship must have been traumatizing for you.~ EXTERN C0AURA2J C0AuraSahuagin.4
  ++ ~Just get back in formation, already.~ EXTERN SAHKNG01 C0AuraSahuagin.5

CHAIN C0AURA2J C0AuraSahuagin.4
~We... we can talk about it later, <CHARNAME>. I... I did pay attention to what was happening just now, despite what it looked like. I know we have a task to do.~
EXTERN SAHKNG01 C0AuraSahuagin.5

CHAIN SAHKNG01 C0AuraSahuagin.5
~Yes, yes, very heartwarming, and all that. Your hearts *would* be tasty with some minnows... but in any case, back to business. Now where were we? Oh, yes. (Hee hee!) Senityili wins.~
EXTERN SAHBAR03 2

I_C_T SAHBEH01 2 C0AuraSAHBEH012
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~A spectator! I've seen them before... they're lawful creatures of Mechanus, not evil-natured. Some of them even work for the church of Gond in Lantan.~
== SAHBEH01 ~Lantan, eh? That tiny isle full of gnomes and humans with their bizarre experiments? I hear my kin are hired by them as couriers for especially important and hazardous deliveries.~
== SAHBEH01 ~Those are the lower-ranking class, but to tell you the truth I’d much rather have their jobs. At least *they* get to travel places and meet people while delivering some of the hottest gadgets that comes from the heads of you Lantanese brainiacs. Far more interesting than staring at a dead, expressionless box for several millennia. Is it true they even get paid?~
== C0AURA2J ~Yes, although I've never figured out what they use their salary for, exactly.~
== SAHBEH01 ~Oh, you'd be surprised. Even we aren't above enjoying the nightlife once in a while. Ahh...~
== SAHBEH01 ~*ahem* I should stop daydreaming. I still have a job to do, mind-numbingly dull as it is. Where was I?~
END

EXTEND_BOTTOM SAHBEH01 27
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraBeholder","GLOBAL",0)~ EXTERN C0AURA2J C0AuraSAHBEH27
END

CHAIN C0AURA2J C0AuraSAHBEH27
~Hey, wait a minute, I had a thought. He told you to guard 'the chest', not what's inside, right?~
DO ~SetGlobal("C0AuraBeholder","GLOBAL",1)~
EXTERN SAHBEH01 33

EXTEND_BOTTOM SAHBEH01 34
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ EXTERN C0AURA2J C0AuraSAHBEH34
END

CHAIN C0AURA2J C0AuraSAHBEH34
~But, what if... let's go with some basic logic... *you* opened it, and I was just very veeery careful and didn't touch the chest at all to get what's inside... would you allow that? Um, in theory, of course.~
EXTERN SAHBEH01 35

CHAIN IF WEIGHT #-1 ~Global("C0AuraSahuaginFears","GLOBAL",4)~ THEN C0AURA2J AURA-SAHUAGIN
~...Nrgh...~ [C0BLANK]
DO ~SetGlobal("C0AuraSahuaginFears","GLOBAL",5)~
== C0AURA2J ~...I'm sorry.~
END
  ++ ~You've already said that.~ + AURA-SAHUAGIN-1
  ++ ~It's not your fault.~ + AURA-SAHUAGIN-2
  ++ ~Are you going to be alright?~ + AURA-SAHUAGIN-3
  ++ ~Yes, well, at least you're coherent now.~ + AURA-SAHUAGIN-4
  ++ ~Good think you recovered. Otherwise, you might be fish food already.~ + AURA-SAHUAGIN-4
  ++ ~Whatever. Let's just work on getting out of here.~ + AURA-SAHUAGIN-0

CHAIN C0AURA2J AURA-SAHUAGIN-0
~Right... we're still alive. That means I don't have time to stand around moping and dragging us down.~
= ~I'll be right behind you. Just... give me a moment.~
EXIT

CHAIN C0AURA2J AURA-SAHUAGIN-1
~I'm saying it again. I might have to keep saying it until this sinking feeling of disappointment goes away.~
EXTERN C0AURA2J AURA-SAHUAGIN-4

CHAIN C0AURA2J AURA-SAHUAGIN-2
~Yes, it is.~
EXTERN C0AURA2J AURA-SAHUAGIN-4

CHAIN C0AURA2J AURA-SAHUAGIN-3
~...I don't know.~
EXTERN C0AURA2J AURA-SAHUAGIN-4

CHAIN C0AURA2J AURA-SAHUAGIN-4
~I tried, <CHARNAME>. Please believe me, I really did. I'm not naive enough to think that I'd beaten my trauma that quickly, but I thought with how much I believed I'd grown, I'd at least be able to keep myself under control.~
= ~You've been through something much worse, and I've seen it all happen... I couldn't do anything about it, but I could at least not be another burden for you. I needed to not let such a little thing get in my way. And I couldn't even manage that.~
= ~I'm so sorry.~
END
  + ~OR(2)
     Global("C0AuraRomanceActive","GLOBAL",1)
     Global("C0AuraRomanceActive","GLOBAL",2)~ + ~I don't want you to apologize. I want you to be alright. Do you need a hug?~ + AURA-SAHUAGIN-8
  ++ ~Little thing? We could've all died, Aura. Every one of us. You had good reason to be afraid.~ + AURA-SAHUAGIN-5
  ++ ~It's alright. You're alive, breathing, and talking it out now. That still takes courage.~ + AURA-SAHUAGIN-6
  ++ ~You're lucky you're even able to do this self-reflection right now.~ + AURA-SAHUAGIN-7
  ++ ~That's enough. If you're really sorry, then do everything you can to make up for it. Talking solves nothing.~ + AURA-SAHUAGIN-0

CHAIN C0AURA2J AURA-SAHUAGIN-5
~I know. It makes sense, I just... still can't forgive myself. Look at you, going on even with all you've lost. I still wish I could do that.~
EXTERN C0AURA2J AURA-SAHUAGIN-10

CHAIN C0AURA2J AURA-SAHUAGIN-6
~I'm going to keep trying, <CHARNAME>. I can't help but feel like I've failed you this time... but one day, I know I'll be able to move past this.~
EXTERN C0AURA2J AURA-SAHUAGIN-10

CHAIN C0AURA2J AURA-SAHUAGIN-7
~You're probably right. Besides, if I'm still able to breathe, I'll be able to keep doing my best. I'm responsible for not only myself right now, after all.~
EXTERN C0AURA2J AURA-SAHUAGIN-10

CHAIN C0AURA2J AURA-SAHUAGIN-8
~No, I shouldn't be—~
= ~...Yes. Please.~
END
  ++ ~Come here.~ + AURA-SAHUAGIN-9

CHAIN C0AURA2J AURA-SAHUAGIN-9
~Thanks, <CHARNAME>. I don't know what I'd do without you...~
EXTERN C0AURA2J AURA-SAHUAGIN-10

CHAIN C0AURA2J AURA-SAHUAGIN-10
~I'm feeling better now, <CHARNAME>. Thank you for being patient with me. If you weren't here, I'd probably be curling up in a hole somewhere, if I wasn't already eaten... hehe. Bad joke, but I need to do something about the atmosphere.~
= ~Now that I'm able to think more clearly again... this place is quite amazing, don't you think? Even as... brutal as the sahuagin are, they've managed to build something majestic together. How many people above the water could say they've seen a city like this?~
END
  ++ ~Not many, I'd imagine.~ + AURA-SAHUAGIN-11
  ++ ~I'm glad you're feeling well enough to talk about trivial things again.~ + AURA-SAHUAGIN-12
  ++ ~Let's hope we live to tell the tale.~ + AURA-SAHUAGIN-11

CHAIN C0AURA2J AURA-SAHUAGIN-11
~I used to paint a lot more often when I was young... when I hadn't seen what the realms were really like yet, all I had was my imagination. Everything I created was abstract, and nothing like what the truth was... but by chance, I did paint a picture of a place somewhat like this in my head, once.~
= ~At least one of my daydreams turned out closer to reality than I thought. Anyways... let's go and see the rest of it.~
EXIT

CHAIN C0AURA2J AURA-SAHUAGIN-12
~Well, you should know by now... I can get a little down at times like anyone else, but keeping me down is the hard part.~
EXTERN C0AURA2J AURA-SAHUAGIN-11

I_C_T SAHPR1 52 C0AuraSAHPR152
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("C0AuraSahuaginFears","GLOBAL",0)~ THEN ~I... um, need to thank you, priestess... for earlier. I probably would have been in serious danger if you hadn't taken care of me in <CHARNAME>'s absence.~
== SAHPR1 ~Do not thank me, surface gnome. Thank the Shark-Father that you are among those chosen for his prophecy. Which you may assist us in fulfilling now if you seek to show gratitude.~
END

// Copper Coronet

CHAIN IF WEIGHT #-1 ~NumTimesTalkedTo(0)
Name("C0Aura",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM madamnin-aura
~Greetings, my <LADYLORD>. I am Madame Nin, and I am here to ensure you are pleasantly accompanied. Are you interested in companionship, my <LADYLORD>?~
== C0AURA2J ~No! I—I mean, no, thank you.~
EXIT

CHAIN IF WEIGHT #-1 ~!NumTimesTalkedTo(0)
Name("C0Aura",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM madamnin-aura
~So... do you wish a companion for the evening, then?~
== C0AURA2J ~No! I—I mean, no, thank you.~
EXIT

CHAIN IF WEIGHT #-1 ~InPartySlot(LastTalkedToBy,0) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)
OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ THEN MADAM madamnin
~Greetings, my <LADYLORD>. I am Madame Nin, and I am here to ensure you are pleasantly accompanied. Are you interested in companionship, my <LADYLORD>?~
== C0AURA2J ~No. Please leave her alone. I don't think I can muster the patience to ask politely a second time.~
EXTERN MADAM 17

// Cowled Wizards

I_C_T COWENF2 4 C0AuraCOWENF24
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Be careful, <CHARNAME>... from what I've heard, the Cowled Wizards take advantage of their control over magic use for all they can get.~
END

// de'Arnise Keep

CHAIN IF WEIGHT #-1 ~AreaCheck("ar1302")
Global("C0AuraDeArniseKeep","GLOBAL",0)~ THEN C0AURA2J DEARNISE-HOLD
~*sniff* Yep, it's trolls alright. Nothing else could ever stink so bad.~
END
+ ~Global("C0AuraDruidGrove","GLOBAL",1)~ + ~Got any more of those trollbane arrows on hand?~ + DEARNISE-HOLD-1
+ ~!Global("C0AuraDruidGrove","GLOBAL",1)~ + ~Got anything that might help us take care of them?~ + DEARNISE-HOLD-2

CHAIN C0AURA2J DEARNISE-HOLD-1
~*giggle* You know it.~
DO ~SetGlobal("C0AuraDeArniseKeep","GLOBAL",1) GiveItemCreate("c0auaro4",Myself,20,0,0)~ EXIT

CHAIN C0AURA2J DEARNISE-HOLD-2
~Luckily for us, I always keep a bit of trollbane fluid on hand just in case. Where is it... ah, there we go! Just add them to the arrowheads and... okay!~
= ~When we run into those ugly things, we can stick them with one of these and they won't get back up. Too bad it doesn't take care of the smell.~
DO ~SetGlobal("C0AuraDeArniseKeep","GLOBAL",1)
GiveItemCreate("c0auaro4",Myself,20,0,0)~ EXIT

I_C_T2 KPGLAI01 0 C0AuraKPGLAI01
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~<CHARNAME>! I'm picking up a strong hint of enchantment magic! This person must be under some sort of charm!~
END

// Docks District

CHAIN IF WEIGHT #-1 ~Global("C0AuraDocksDistrict","GLOBAL",1)~ THEN C0AURA2J AURA-DOCKS
~Eek, it's the Docks... not my favorite part of the city, to be sure.~
= ~People call this the one of the most dangerous parts of the city... usually I wouldn't come here without packing a few invisibility potions to be safe. But with you, I don't think I have too much to worry about.~
DO ~SetGlobal("C0AuraDocksDistrict","GLOBAL",2)~
END
++ ~Really? Where are the other dangerous parts?~ + AURA-DOCKS-1
++ ~You sound rather familiar with this district, for someone who doesn't care for it.~ + AURA-DOCKS-2
++ ~Whatever. Let's spend as little time here as possible. Come on.~ EXIT

CHAIN C0AURA2J AURA-DOCKS-1
~They say the dead rises from the earth in the Graveyard during the dead of night... I hope it's just a story, though. It's bad enough that the tombs are infested.~
= ~I've been in there once or twice. N–not to steal anything, if that's what you're thinking! I was just curious... we didn't have such extravagant mausoleums back in Lantan.~
EXTERN C0AURA2J AURA-DOCKS-3

CHAIN C0AURA2J AURA-DOCKS-2
~I try not to come here during the night. There's a few places of interest for me though, like the Temple of Oghma... and sometimes I just like to walk near the ocean and take in the breeze.~
= ~Not too close, though... I still get shivers thinking about being in large bodies of water. But my home, Anchoril, is a coastal town... so it reminds me of home, a little.~
EXTERN C0AURA2J AURA-DOCKS-3

CHAIN C0AURA2J AURA-DOCKS-3
~To the point... in case you don't already know, <CHARNAME>, I know someone who works in this district. His name's Cromwell, and he's an excellent smith. I haven't known him long, but everything I've seen him build is exquisite.~
== C0AURA2J IF ~Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~I actually left something of mine with him not long ago. The "Swift Wing"... Saitō-san's old sword. I couldn't bring myself to get rid of it, even with the dark memories... but I'm not an expert on traditional weapons, so I sought Cromwell out for some help with maintenance.~
== C0AURA2J IF ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~I actually left something of mine with him not long ago. A blade from Kara-Tur. It belong to a... friend I once knew. I'm not an expert on traditional weapons, so I sought Cromwell out for some help with maintenance.~
== C0AURA2J ~I've been meaning to check up on it for a while now, so if it's possible, maybe we could have a look. And who knows, there might be something else we have that he could put together for us.~
END
IF ~~ EXTERN C0AURA2J AURA-DOCKS-4
IF ~OR(3)
PartyHasItem("sw1h54a")
PartyHasItem("sw1h54b")
PartyHasItem("sw1h54c")~ EXTERN C0AURA2J AURA-DOCKS-EQUALIZER
IF ~OR(2)
PartyHasItem("bow19a")
PartyHasItem("bow19b")~ EXTERN C0AURA2J AURA-DOCKS-GESEN
IF ~OR(2)
PartyHasItem("misc8u")
PartyHasItem("sw2h15a")~ EXTERN C0AURA2J AURA-DOCKS-SILVERSWORD
IF ~OR(2)
PartyHasItem("halb09a")
PartyHasItem("halb09b")~ EXTERN C0AURA2J AURA-DOCKS-WAVE
IF ~PartyHasItem("scrlag")~ EXTERN C0AURA2J AURA-DOCKS-CROM
IF ~OR(2)
PartyHasItem("scaleb")
PartyHasItem("scaler")~ EXTERN C0AURA2J AURA-DOCKS-DRAGON
IF ~PartyHasItem("misc12")~ EXTERN C0AURA2J AURA-DOCKS-ANKHEG
IF ~PartyHasItem("misc5k")~ EXTERN C0AURA2J AURA-DOCKS-ILLITHIUM

CHAIN C0AURA2J AURA-DOCKS-EQUALIZER
~I'm sure he'd know what to do with that piece of the Equalizer we've got if you showed it to him. If we had all the pieces, that is.~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-GESEN
~I'm sure he'd know what to do with that piece of the Gesen Bow we've got if you showed it to him. I'd love to see how it compared to my Sunshooter.~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-SILVERSWORD
~I'm sure he'd know what to do with that piece of the gith sword we've got if you showed it to him. If we had all the pieces, that is.~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-WAVE
~I'm sure he'd know what to do with that piece of the Wave halberd we've got if you showed it to him. If we had all the pieces, that is.~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-CROM
~I'm sure he'd know what to do with that dwarven scroll we've got if you showed it to him. I can't read it at all, but I'm sure he could.~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-DRAGON
~I'm sure he'd know what to do with those dragon scales we've got if you showed it to him. I know he's worked with such materials before.~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-ANKHEG
~I'm sure he'd know what to do with that smelly old ankheg shell we've got if you showed it to him. His skills are probably even greater than master Taerom from Beregost.~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-ILLITHIUM
~I've seen him work with all sorts of metal. Mithral, adamantite, illithium... hey, we've got some illithium with us right now. I'm sure he could make something incredible with that.~
EXTERN C0AURA2J AURA-DOCKS-4

CHAIN C0AURA2J AURA-DOCKS-4
~Even if we didn't have anything he could work with, though, it'd be nice to drop in and say hello. His house is to the far southeast.~
= ~Just be careful... the Shadow Thieves run this part of the city... or so I've heard.~
EXIT

CHAIN IF WEIGHT #-1 
~InParty("C0Aura")
Range("C0Aura",15)
RandomNum(2,1)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraCelvan","AR0300",0)~ THEN CELVAN AURA-CELVAN
~There once was a prodigious gnome,
Who wandered far away from home,
In the East did she find peace,
'Til mentor's death did it cease,
And in search of the truth she did roam!~
DO ~SetGlobal("C0AuraCelvan","AR0300",1)~
== C0AURA2J ~How do you know so much? I don't suppose you know my future too? ...Hey, come back!~
END CELVAN 1

CHAIN IF WEIGHT #-1 
~Global("C0AuraCromwell","GLOBAL",0)
Range("C0Aura",15)
InParty("C0Aura")~ THEN WSMITH01 AURA-CROMWELL
~Eh? Ain't ye...~
== C0AURA2J ~Hello, Cromwell! It's me again.~
DO ~SetGlobal("C0AuraCromwell","GLOBAL",1)~
== WSMITH01 ~Ah, if it ain't the clever lass with the magnificent construct. It's good to see ye again. I take it ye're here for that beautiful blade ye left me afore?~
== C0AURA2J ~Well, it's not the only reason, but I did want to ask, yes. Is it...~
== WSMITH01 ~Aye, I have it here, girl. Fine blade, didn't need much work done, though like all weapons there's no harm in doin' some refining.~
DO ~GiveItemCreate("C0AUSW02","C0AURA",1,0,0)~
== C0AURA2J IF ~NumTimesTalkedTo(0)
!IsGabber(Player1)
!IsGabber("C0Aura")~ ~Thank you, Cromwell. By the way, this is <GABBER>, one of my companions. We're here to make use of your masterful skills.~
== C0AURA2J IF ~NumTimesTalkedTo(0)
OR(2)
IsGabber("C0Aura")
IsGabber(Player1)~ ~By the way, this is <CHARNAME>, my leader. We're here to make use of your masterful skills.~
END
IF ~!NumTimesTalkedTo(0)~ EXTERN WSMITH01 58
IF ~NumTimesTalkedTo(0) !IsGabber("C0Aura")~ EXTERN WSMITH01 5
IF ~NumTimesTalkedTo(0) IsGabber("C0Aura")~ DO ~SetGabber(Player1)~ EXTERN WSMITH01 5

EXTEND_BOTTOM WSMITH01 13
  IF ~PartyHasItem("C0AUSW02")~ EXTERN WSMITH01 CROMWELL0
END
  
CHAIN WSMITH01 CROMWELL0
~Ah, I recognize this one... this be that young lass Aura's eastern blade, is it not?~
END
    IF ~Global("C0AuraCromwellSwordForgeFirst","GLOBAL",0)~ EXTERN WSMITH01 CROMWELL1
    IF ~!Global("C0AuraCromwellSwordForgeFirst","GLOBAL",0)
        PartyHasItem("C0AUSW02")
        !PartyHasItem("MISC6M")
        !PartyHasItem("MISC6Z")~ EXTERN WSMITH01 CROMWELL2
    IF ~!Global("C0AuraCromwellSwordForgeFirst","GLOBAL",0)
        PartyHasItem("C0AUSW02")
        PartyHasItem("MISC6M")
        PartyHasItem("MISC6Z")~ EXTERN WSMITH01 CROMWELL3

CHAIN WSMITH01 CROMWELL1
~Actually, when I saw the engravin' on the guard, I realized I knew the maker's name, if ye'll believe it. I did my share of travelin' while learnin' the trade, meeting other smiths of renown, an' one that I remember well was of Kara-Turan descent.~
== WSMITH01 ~Had some long an' difficult to pronounce name, what was it...? "Shingorou Takemichi Musou", I think. One of the most arrogant men I've ever met, but no doubt his skill in forgin' these eastern sword be unrivaled. Still, I have ne'er given up hope in findin' a chance to show him up. Ever since I laid eyes on this sword, I've been considerin' ideas, and I think there be one.~
== C0AURA2J IF ~InParty("C0Aura") Range("C0Aura",15)~ THEN ~Really? What sort of material would you need for that, Cromwell?~
END
    IF ~PartyHasItem("C0AUSW02")
        OR(2)
        !PartyHasItem("MISC6M")
        !PartyHasItem("MISC6Z")~ EXTERN WSMITH01 CROMWELL2
    IF ~PartyHasItem("C0AUSW02")
        PartyHasItem("MISC6M")
        PartyHasItem("MISC6Z")~ EXTERN WSMITH01 CROMWELL3

CHAIN WSMITH01 CROMWELL2
~If ye find a beljuril an' a demon heart, as difficult of a demand as that may be, I can infuse this blade with the power of the storms. That man makes sharper blades than any other mortal hand, but there be no blade sharper than the strike of lightning.~
EXTERN WSMITH01 CROMWELLNO

CHAIN WSMITH01 CROMWELL3  
~I see ye've a beljuril, as well as a demon heart. With the natural energies of the gem an' the fury of a fiend, I can infuse this blade with the power of the storms. That man makes sharper blades than any other mortal hand, but there be no blade sharper than the strike of lightning. It'll take 8000 gold for the work.~
END
    + ~PartyGoldLT(8000)~ + ~I don't have enough gold.~ EXTERN WSMITH01 CROMWELLNO
    + ~PartyGoldGT(7999)~ + ~That sounds good. Do it.~ DO ~SetGlobal("C0AuraCromwellSwordUpgrade","ar0334",1)
                                                 SetGlobal("ForgeStuff","GLOBAL",1)
                                                 TakePartyGold(8000)
                                                 TakePartyItemNum("C0AUSW02",1)
                                                 DestroyItem("C0AUSW02")
                                                 TakePartyItemNum("MISC6M",1)
                                                 DestroyItem("MISC6M")
                                                 TakePartyItemNum("MISC6Z",1)
                                                 DestroyItem("MISC6Z")
                                                 DestroyGold(8000)~ EXTERN WSMITH01 56
    ++ ~Not at this time. What else?~ EXTERN WSMITH01 CROMWELLNO

CHAIN IF WEIGHT #-1 ~GlobalGT("C0AuraCromwellSwordUpgrade","ar0334",0)~ THEN WSMITH01 CROMWELL4 
~Well, there ye go, me friend. Use it well. And if ye comes across anything else of interest, ye knows where to bring it, aye?~
DO ~SetGlobal("C0AuraCromwellSwordUpgrade","ar0334",0)~ EXIT

CHAIN WSMITH01 CROMWELLNO
~Now then, let's have a look at what else ye got in here, eh?~
COPY_TRANS WSMITH01 13

I_C_T ARAN 40 C0AuraARAN40
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~An asylum for "mages and talented people"? That sounds ominous... and terribly, terribly wrong.~
END

EXTEND_BOTTOM ARAN 42
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraShipFear","GLOBAL",0)~ DO ~SetGlobal("C0AuraShipFear","GLOBAL",1)~ EXTERN C0AURA2J SHIPFEAR
END

CHAIN C0AURA2J SHIPFEAR
~*shudder* The sea again...~
END
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~You have a bad history with sea travel. Will you be alright?~ + SHIPFEAR-1
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I know you don't enjoy it, but I need you to be strong for the journey.~ + SHIPFEAR-1
  + ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~If a ship frightens you that much, you're free to stay behind.~ + SHIPFEAR-1
  + ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~Is everything alright, Aura?~ + SHIPFEAR-2
  + ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~What is wrong with you?~ + SHIPFEAR-2

CHAIN C0AURA2J SHIPFEAR-1
~I... I'll be fine, <CHARNAME>. I can't let my personal issues hold you back. And don't you even start talking about leaving me to go into danger on your own!~
EXTERN ARAN SHIPFEAR-3

CHAIN C0AURA2J SHIPFEAR-2
~It's just that... I haven't had the best experiences on a ship. I almost lost my life on one, years ago... but I need to move past that.~
EXTERN C0AURA2J SHIPFEAR-1

CHAIN ARAN SHIPFEAR-3
~I promise that I can do my utmost to provide the finest accommodations for those uneasy towards waterborne travel. But I fear this is the only way to reach your destination.~
EXTERN ARAN 43

I_C_T2 WSMITH01 8 C0AuraWSMITH018
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Cromwell's a true master of his craft. He was the one who drafted most of the enhancements for my automaton a while before we met. When it comes to working the forge, I've never seen anyone better.~
END

I_C_T BOOTER 3 C0AuraBOOTER3
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Inhumane... he's revelling in the amount of suffering he's dealing to other living beings. <CHARNAME>, let's just go. I don't think I can stand this for much longer.~
END

I_C_T2 RENFELD 6 C0AuraRENFELD6
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I've never seen any poison as vile as this. If we don't get this poor fellow to safety, he'll be dead within hours!~
END

I_C_T HLSKULL 0 C0AuraHLSKULL0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~W–wait, <CHARNAME>! Always be cautious before you touch potentially cursed– oh, too late...~
END

I_C_T MAEVAR 1 C0AuraMAEVAR1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~What a cruel way to operate...~
END

I_C_T DOGHMA 0 C0AuraDOGHMA0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*sniff* Oh, how I love breathing in the familiar scent of ink and parchment after a long day's travels!~
== DOGHMA ~Quite. Please, do not hesitate to peruse our wealth of knowledge while you are here.~
END

// Drizzt

I_C_T C6BRUEN1 9 C0AuraDrizzt2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~...What's wrong with pink?~
END

I_C_T2 C6DRIZZ1 37 C0AuraDrizzt3
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ohh, we're really going to be fighting alongside the Companions of the Hall! I hope someone writes this one into their next epic.~
END

// Druid Grove

CHAIN IF WEIGHT #-1 ~AreaCheck("ar1900")
Global("C0AuraDruidGrove","GLOBAL",0)~ THEN C0AURA2J DRUID-GROVE
~Oh dear. Do you smell that, <CHARNAME>? The stink in the air that's like rotten meat?~
END
+ ~OR(3)
CheckStatGT(Player1,15,INT)
Class(Player1,RANGER_ALL)
Class(Player1,DRUID_ALL)~ + ~Trolls. The stench is unmistakable.~ + DRUID-GROVE-1
+ ~!CheckStatGT(Player1,15,INT)
!Class(Player1,RANGER_ALL)
!Class(Player1,DRUID_ALL)~ + ~What about it?~ + DRUID-GROVE-2

CHAIN C0AURA2J DRUID-GROVE-1
~Yeah. I really hate those things.~
END
+ ~Global("C0AuraDeArniseKeep","GLOBAL",1)~ + ~Got any more of those trollbane arrows on hand?~ + DEARNISE-HOLD-1
IF ~!Global("C0AuraDeArniseKeep","GLOBAL",1)~ EXTERN C0AURA2J DRUID-GROVE-3

CHAIN C0AURA2J DRUID-GROVE-2
~It means trolls. I really hate those things.~
END
+ ~Global("C0AuraDeArniseKeep","GLOBAL",1)~ + ~Got any more of those trollbane arrows on hand?~ + DEARNISE-HOLD-1
IF ~!Global("C0AuraDeArniseKeep","GLOBAL",1)~ EXTERN C0AURA2J DRUID-GROVE-3

CHAIN C0AURA2J DRUID-GROVE-3
~Luckily for us, I always keep a bit of trollbane fluid on hand just in case. Where is it... ah, there we go! Just add them to the arrowheads and... okay!~
= ~When we run into those ugly things, we can stick them with one of these and they won't get back up. Too bad it doesn't take care of the smell.~
DO ~SetGlobal("C0AuraDruidGrove","GLOBAL",1)
GiveItemCreate("c0auaro4",Myself,20,0,0)~ EXIT

INTERJECT TRRAK01 0 C0AuraTRRAK010
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Wait, waitwaitwait, <CHARNAME>! I'm sensing illusions around every corner of this cottage! And... it's strongest on this old lady here! Oh... I know! It's rakshasan magic! Be careful!~
EXTERN TRRAK01 3

I_C_T2 DRUSH 9 C0AuraDRUSH9
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh, ugh! Gross! Where, where's my odor eliminating spray? I used it all up? Right when we need it! Augh!~
END

I_C_T2 CEFALD04 3 C0AuraCEFALD04
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~No! Why would you do this? This is nothing but devastation of the natural order! I can't stay and watch this!~
DO ~LeaveParty()
EscapeArea()~ END

// Edwin

I_C_T EDWINJ 10 C0AuraEDWINJ10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~This is a terrible idea.~
END

// Elhan

I_C_T C6ELHAN2 28 C0AuraC6ELHAN228
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~The ancient home of the elves... just destroyed like that... by one man?~
END

// Government District

CHAIN IF WEIGHT #-1 ~Range("C0Aura",15)
InParty("C0Aura")
RandomNum(2,2)
Global("C0AuraOriona","LOCALS",0)~ THEN ORIONA AURA-ORIONA
~Well now, aren't you a sweet little doll. If I had the time, I would take you back to my mansion and prop you up in a display with my other treasures.~
DO ~SetGlobal("C0AuraOriona","LOCALS",1)~
== C0AURA2J ~Umm... I *think* that's a compliment?~
EXIT

EXTEND_BOTTOM VALYGARJ 117
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ EXTERN C0AURA2J aura-notolger
END

CHAIN C0AURA2J aura-notolger
~Don't do this, <CHARNAME>... whatever the wizards want, it's not justice, I know it.~
COPY_TRANS VALYGARJ 117

INTERJECT TOLGER 84 C0AuraTOLGER84
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~This is horrible... I—I can't look at this. Or you, <CHARNAME>, not anymore. I'm done!~
END
IF ~OR(2)
Global("C0AuraRomanceActive","GLOBAL",1)
Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~SetGlobal("C0AuraRomanceActive","GLOBAL",3)
LeaveParty()
EscapeArea()~ EXTERN VALYGARJ 118
IF ~!Global("C0AuraRomanceActive","GLOBAL",1)
!Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~LeaveParty()
EscapeArea()~ EXTERN VALYGARJ 118

I_C_T2 SCSARLES 11 C0AuraSCSARLES11
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~T–t–TWO HUNDRED POUNDS?! <CHARNAME>, do you have any idea how unlikely it is just getting enough illithium to fit in the palm of your hand? Ooh, this is going to be a nightmare...~
END

I_C_T CORNEIL 9 C0AuraCORNEIL9
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Five— FIVE THOUSAND?! For the right to use magic? That's plain robbery!~
== CORNEIL ~That is the price required for the privilege of spellcasting. Take it or leave it.~
END

I_C_T MARIA 5 C0AuraMARIA5
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh no, how awful... there's few things more important than a close family, and now this... poor Sir Keldorn.~
END

I_C_T VICG1 2 C0AuraVICG12
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*gasp!* They're about to burn someone alive, <CHARNAME>! How awful!~
END

// Graveyard District

I_C_T ANOMENJ 150 C0AuraANOMENJ150
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~This must be hard. If someone murdered my sisters... I don't know what I'd do if it were up to me. At the very least... I'd want to know the whole truth.~
END

I_C_T TIRDIR 2 C0AuraTIRDIR2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Terrible... I can't think of many worse ways to suffer. Why would anyone do something so pointlessly cruel?~
END

I_C_T2 WELLYN 10 C0AuraWELLYN10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~That's the best we can do for him, I suppose. The poor child. Sleep well...~
END

I_C_T2 LESTER 5 C0AuraLESTER5
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Wow. And I thought my great-uncle Gable was crazy.~
END

I_C_T2 BHCRYPT 0 C0AuraBHCRYPT0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I guess a 'Sorry!' wouldn't help?~
END

// Hell

I_C_T PLAYER1 25 C0AuraEnteringHell1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh... I felt myself sinking into something so dark and terrible beyond words! The only thing I could hear was your voice, so I followed it and... well, here I am. I'm glad I was able to find you.~
END

I_C_T HELLJON 7 C0AuraThirdBattleWithIrenicus1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I've never been thrilled to end a life... but the soul that'll face the karma wrought by its sins will be your own, Irenicus!~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) GlobalGT("C0AuraRomanceYRGlob","GLOBAL",0)~ THEN ~As for Yoshimo... I'll make sure his soul finds peace, even if I must put a thousand arrows into you for it!~
END

I_C_T HELLJON 8 C0AuraThirdBattleWithIrenicus1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I've never been thrilled to end a life... but the soul that'll face the karma wrought by its sins will be your own, Irenicus!~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) GlobalGT("C0AuraRomanceYRGlob","GLOBAL",0)~ THEN ~As for Yoshimo... I'll make sure his soul finds peace, even if I must put a thousand arrows into you for it!~
END

I_C_T HELLJON 9 C0AuraThirdBattleWithIrenicus1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I've never been thrilled to end a life... but the soul that'll face the karma wrought by its sins will be your own, Irenicus!~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) GlobalGT("C0AuraRomanceYRGlob","GLOBAL",0)~ THEN ~As for Yoshimo... I'll make sure his soul finds peace, even if I must put a thousand arrows into you for it!~
END

I_C_T HELLJON 10 C0AuraThirdBattleWithIrenicus1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I've never been thrilled to end a life... but the soul that'll face the karma wrought by its sins will be your own, Irenicus!~
== C0AURA2J IF ~Global("C0AuraRomanceActive","GLOBAL",2) GlobalGT("C0AuraRomanceYRGlob","GLOBAL",0)~ THEN ~As for Yoshimo... I'll make sure his soul finds peace, even if I must put a thousand arrows into you for it!~
END

// Jansens

CHAIN IF WEIGHT #-1 ~Global("C0AuraKylie","GLOBAL",0) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN KYLIE1 kylie
~Oh, Aura! Are you leaving?~
DO ~SetGlobal("C0AuraKylie","GLOBAL",1)~
== C0AURA2J ~Yep. I'm going adventuring with my friend <CHARNAME> for a while.~
== KYLIE1 ~Tsk, tsk. That's a real shame. There's too few good gnome girls in this city to hang around with. Especially one with such good taste in culinary delights.~
== C0AURA2J ~Aww, thanks, Kylie. I've got to thank you for your hospitality too. I'd never have known how delectable Amnian turnip soup is if not for your cooking.~
== KYLIE1 ~Well, come back alive and I'll cook you a full-course turnip meal all you like! Oh, and, I almost forgot— here, this is for you. I got a good deal at the market for those parts you gave me to sell. Thanks for helping the family out.~
DO ~GiveGoldForce(50)~
== C0AURA2J ~No problem, Kylie. I'm happy to have helped.~
== KYLIE1 ~Come back soon! Oh, and don't forget to take this good luck turnip with you before you go!~
DO ~Face(SW)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraKylie","GLOBAL",1) IsGabber("C0Aura")~ THEN KYLIE1 kylie2
~Heya, Aura! How about a turnip for the road, hmm?~
EXIT

CHAIN IF WEIGHT #-1 ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !Global("C0AuraBG2Quest3","GLOBAL",5) Global("C0AuraMaJansen","LOCALS",0)~ THEN MAJAN majansen
~Ah, if it isn't dear little Aura. It's good to see you out and about for a change. Are these friends of yours?~
DO ~SetGlobal("C0AuraMaJansen","LOCALS",1)~
== C0AURA2J ~Yes, missus Jansen. I'm going to travel alongside them for the time being. Thank you for keeping me for as long as you have.~
== MAJAN ~There's no need to thank me, dear. You've been a delightful guest to us with your tales and inventions. I hope my nephew hasn't been a bother.~
== C0AURA2J ~No, not at all! Pico's been indispensible. He'll be able to take care of the workshop while I'm gone.~
== MAJAN IF ~IsValidForPartyDialog("Jan")~ THEN ~And I see you've finally met my Jan as well! I hope you're playing nice, boy.~
== JANJ IF ~IsValidForPartyDialog("Jan")~ THEN ~Yes, Ma. Why, our turnip cost to profit ratio's going to expand massively with the plans for a more efficient farming plan that we've made by collaborating our intellects together, it'll only be a matter of time, you'll see.~
== MAJAN ~Good, good. Now, was there something else you came here for?~
END
IF ~InParty("Jan")
Detect("Jan")
Global("JanLissaPlot","GLOBAL",6)~ EXTERN C0AURA2J majansen.1
IF ~True()~ EXTERN C0AURA2J majansen.2

CHAIN IF WEIGHT #-1 ~Global("C0AuraMaJansen","LOCALS",1) IsGabber("C0Aura")~ THEN MAJAN majansen2
~Good <DAYNIGHTALL>, my dear. You're always welcome in our home.~
EXIT

CHAIN C0AURA2J majansen.1
~Yes, missus Jansen, there was something else, but... well, I think it'd be better if you spoke with Jan instead.~
EXTERN MAJAN 0

CHAIN C0AURA2J majansen.2
~I don't think so, missus Jansen. We'll be going now.~
== MAJAN ~Goodbye then, girl. Come back and visit, won't you? Our doors are always open to you.~
EXIT

CHAIN IF WEIGHT #-1 ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraTat","LOCALS",0)~ THEN TAT tat
~My kitty could beat up your kitty.~
DO ~SetGlobal("C0AuraTat","LOCALS",1)~
== C0AURA2J ~I- uh, I'm not sure I want to test that with Koko-chan. See ya, Tat.~
== TAT ~Pbbbt!~
EXIT

CHAIN IF WEIGHT #-1 ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraTot","LOCALS",0)~ THEN TOT tot
~Hey, hey, it's Aura! Show me your squirrel doing tricks! How about a firework?~
DO ~SetGlobal("C0AuraTot","LOCALS",1)~
== C0AURA2J ~Hee hee. Sorry, Tot. No tricks to<DAYNIGHT>. I'm busy.~
== TOT ~Aww. Fine, I'll go and pull Tat's nose instead then.~
EXIT

I_C_T JAN 1 C0AuraJAN1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Purveyor of vegetables, huh... hang on, aren't you Pico's cousin?~
== JAN ~Little Pickle-nose? He's back in the city, is he? I suppose that means his little stint as an assistant to that shoesmith turned out unprofitable for him, just like the twenty-or-so odd jobs before that. Never worked well with anyone bigger than him, that one. I suppose he's scrounging around for his next career path now? Poor lad.~
== C0AURA2J ~Actually, Pico's been a great aide back at the house. Your mother's been asking after you, by the way.~
== JAN ~Ah, yes, I've been meaning to visit home. Unfortunately, as I said, the markets have been falling faster than a turnip-filled wagon missing a wheel, and I've been oh-so-busy seeking out hapless adventurers needing a bit of the Jansen-brand specialty. Well, after turnips, that is, but alas, the noble path of a turnip salesman goes unappeciated these days.~
END

I_C_T2 GERHAR 20 C0AuraGERHAR20
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Um... don't mind him, <CHARNAME>. Missus Jansen says Gerhardt's always been a little strange in the head. I try not to come down here if I can help it.~
END

I_C_T JAN 3 C0AuraJAN3
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Flasher Blaster— er, I mean, Master? That's a bit on the nose, don't you think? I'd have gone with something a little more... poetic.~
END

I_C_T TRGUARD 1 C0AuraTRGUARD1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Heh— erm, nothing. Sorry.~
END

I_C_T TRAX 16 C0AuraTRAX16
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Wh— what in the world are you doing, <CHARNAME>? Upholding a backwards law like that...~
END

I_C_T BEELOO 0 C0AuraBEELOO0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*giggle* "Turnip boy"?~
END

I_C_T LISSA 4 C0AuraLISSA4
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I... I can't believe any father would ever hurt their child like this. How cruel.~
END

I_C_T LISSA 10 C0AuraLISSA10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~That's... no, I'm sorry, I shouldn't interfere. But this all just seems wrong.~
END

// Neera

I_C_T OHNREGI 25 C0AuraOHNREGI25
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~A... a brick?~
== OHNREGI ~Yes. A brick. I picked the biggest and heaviest that I could find. Nobody beats the Brick.~
END

// Planar Sphere

I_C_T MGAPPR01 2 C0AuraMGAPPR012
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Hey! What sort of an attitude is that?~
END

CHAIN IF WEIGHT #-1 ~!Dead("Lavok")
Global("C0AuraLavok","GLOBAL",1)~ THEN C0AURA2J C0AuraLavok
~I... Master Lavok? About this book...~
DO ~SetGlobal("C0AuraLavok","GLOBAL",2)~
== LAVOK ~That is...? Ah, the Imaskari Manual of Golemcraft? Hm–hmm... seeing it fills my mind with memories of all the precious time I dedicated to the search of knowledge from places long lost... the efforts spent in preserving the ancient society's wisdom... bringing it to life...~
== LAVOK ~...take it, girl, by all means. If you can give it value beyond that of a dying old man, then it will have been worth it...~
== C0AURA2J ~Th–thank you...~
== LAVOK ~Seeing it once again, however, and in the hands of an artificer—that I can see you are—no less... I am reminded of an old correspondent, long before this time... she had a most curious mind, driven by a yearning for knowledge over the forces that command this world... one she applied to the science of metallurgy...~
== LAVOK ~What was that gnome's name...? Bah, I cannot recall. It seems the slow death of my body has affected the most distant vestiges of my memory. I only remember reading her opus, several centuries ago. I doubt any replications still exist...~
== LAVOK ~There is little time to waste on such matters regardless. Go now, and find our way home. Time is of the essence. Go!~
EXIT

I_C_T VALYGARJ 107 C0AuraVALYGARJ107
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*sigh* Omnia mors aequat... so ends a truly brilliant mind. I know he must have done some terrible things, but still... I'm glad he got some peace in the end.~
== VALYGARJ ~Were it even a scant few days ago I would've called you naive for such a thought, Aura, but now... now I'm not so certain.~
END

I_C_T VALYGARP 2 C0AuraVALYGARJ107
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*sigh* Omnia mors aequat... so ends a truly brilliant mind. I know he must have done some terrible things, but still... I'm glad he got some peace in the end.~
== VALYGARJ ~Were it even a scant few days ago I would've called you naive for such a thought, Aura, but now... now I'm not so certain.~
END

// Planar Prison

INTERJECT PBHUNT01 3 C0AuraPBHUNT013
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~This... this isn't the Prime Material Plane anymore, <CHARNAME>. We're in some kind of... extraplanar dimension!~
EXTERN PBHUNT01 7

I_C_T2 PTHRAL01 1 C0AuraPTHRAL011
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~How awful! Their collars are bending their minds to turn them into unwilling slaves! Is there anything we can do to save them...?~
END

// Slums District

I_C_T COHRVALE 0 C0AuraCOHRVALE0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Eep!~
END

I_C_T2 GIRL1 1 C0AuraGIRL11
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Poor girl... I hope she'll be safe now that she's free.~
END

I_C_T2 SLILMAT 16 C0AuraSLILMAT16
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh, ouch... that really looked like it hurt. You okay, <CHARNAME>? I have some salve if you don't want to leave a bruise...~
END

I_C_T GIRL2 0 C0AuraGIRL20
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~They... they kept a poor little girl in a cage with those beasts? That's utterly vile!~
END

I_C_T SEWSW 4 C0AuraSEWSW
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Fascinating! A puzzle, certainly, but by whom? Do you think we can find these four items and unlock the answer, <CHARNAME>? There's clearly a secret here waiting to be discovered.~
END

I_C_T SEWSW 5 C0AuraSEWSW
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Fascinating! A puzzle, certainly, but by whom? Do you think we can find these four items and unlock the answer, <CHARNAME>? There's clearly a secret here waiting to be discovered.~
END

CHAIN IF WEIGHT #-1 ~Range("C0Aura",15)
InParty("C0Aura")
IfValidForPartyDialogue("C0Aura")
RandomNum(2,2)
Global("C0AuraWaylane","LOCALS",0)~ THEN WAYLANE AURA-WAYLANE
~You! Hey, you! The little gnome in the cute getup!~
DO ~SetGlobal("C0AuraWaylane","LOCALS",1)~
== C0AURA2J ~Huh? Oh, you're talking about me?~
== WAYLANE ~Yes, you! See this mighty fine sphere here? You can have it for your very own for a mere 500 gold pieces! What do you say?~
== C0AURA2J ~Oh, the magical sphere! I've been curious about it ever since it suddenly appeared here. Do you know how to get inside?~
== WAYLANE ~Why... why, yes! There's... there's a password, which I will tell you in exchange for a paltry sum. You won't get a better deal anywhere!~
== C0AURA2J ~Hmm, although... I get this ominous feeling that terrible things will happen if the thing did crack open. It's like all those tales of strange ships falling from the sky, then the doors open and creatures from the outer realms overrun us all and take over the world. But I'm sure those are just scary stories...~
== WAYLANE ~Uh... that wouldn't really happen, would it? On second thought, maybe being this close to the thing isn't such a bright idea after all...~
== C0AURA2J ~Sorry, just went off track there. What was the price again? I might just have enough in my personal stash.~
== WAYLANE ~Er, the offer is... suspended for now... yeah. I need some time to figure out a better pitch. And probably a safer place to stand as well...~
EXIT

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0Aura",LastTalkedToBy)
Global("C0AuraSalvanas","GLOBAL",0)~ THEN SALVANAS AURA-SALVANAS
~Well hello, my little pink blossom. I don't think I've seen a sweet thing like yourself around here before.~
DO ~SetGlobal("C0AuraSalvanas","GLOBAL",1)~
== C0AURA2J ~Excuse me?~
== SALVANAS ~Ah, blessed I must be to discover such a paragon of gnomish loveliness within this wretched place. I would recite a serenade of my passion, were we together under a moonlit sky!~
== C0AURA2J ~Wow... you really like to listen to yourself talk, don't you?~
== SALVANAS ~Ah, but I would much rather a beauteous maiden listen to me talk. Would you do the honor of sparing me a moment of your attention?~
== C0AURA2J ~Umm, thank you, but I don't think I'm...~
== SALVANAS ~Now, now, no need to be bashful, my dear. Allow me to take your hand, and—*YOW*!~
== C0AURA2J ~Hey! Muffy, what have I told you about biting people?~
== SALVANAS ~Ouch...~
== C0AURA2J ~I—I'm really sorry... he does that sometimes.~
== SALVANAS ~It seems the fair lady has her chivalrous knight to defend her honor. *sigh* My heart bleeds... as does my poor finger.~
EXIT

CHAIN IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
Name("C0Aura",LastTalkedToBy)
Global("C0AuraSalvanas","GLOBAL",1)~ THEN SALVANAS AURA-SALVANAS
~Oh, er, hello again, my sweet little lady. With her knight of bronze perched on her shoulder still... *sigh*~
== C0AURA2J ~Ahaha... um, I hope you'll forgive Muffy for that. How is your finger?~
== SALVANAS ~It aches still, rejecting all common remedies, my dear. I fear only the touch of a beauty—even a quick one—would serve as a cure.~
== C0AURA2J ~I'm sure I have a cure that'll take care of it. Really!~
== SALVANAS ~*sigh* Never mind.~
== SALVANAS IF ~See(Player1) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Though... I have been curious, given your visible closeness to your equally lovely leader... are the two of you, perhaps, an item?~
DO ~SetGlobal("C0AuraSalvanas","GLOBAL",2)~
== C0AURA2J IF ~See(Player1) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Hm? Oh, um... you can see it like that, I guess...~
== SALVANAS IF ~See(Player1) OR(2) Global("C0AuraRomanceActive","GLOBAL",1) Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~No, not at all. I see how it is. Very well, this busy bee knows better than to approach a flower that prefers a butterfly! I humbly beg your pardon, little miss.~
EXIT

// Suldanessellar

I_C_T PLAYER1 16 C0AuraIrenicusIsDead1
== C0AURA2J IF ~InParty("C0Aura") Range("C0Aura",15) !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I–is that it?~
END

I_C_T SUDEMIN 32 C0AuraSUDEMIN32
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~There's so much suffering out there... <CHARNAME>, for your own sake and there's... let's do what we can.~
END

// Temple District

I_C_T TCYRANDO 2 C0AuraTCYRANDO2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Hey, don't lose faith. Human-gnome relationships aren't so uncommon in Lantan, and you have the heart of a poet. I think you could stand a chance!~
== TCYRANDO ~Hehe... I'll think about it. Thank you.~
END

I_C_T HLSION 0 C0AuraHLSION0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~The wards? I— I thought something was off when we entered here. I don't think we should take these people lightly.~
END

I_C_T CLTCUT01 4 C0AuraCLTCUT014
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ugh! How ghastly!~
END

I_C_T TIRLANA 15 C0AuraTIRLANA15
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Aww, I wonder if one day I'll find someone who can sweep me off my feet with words and poetry. Teehee... that'll be the day.~
END

I_C_T2 JANJ 133 C0AuraJANJ133
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*giggle* I wish some of the stories my professors in Lantan had to tell about Gond could be that interesting. Even if it's completely ridiculous.~
END

// Trademeet

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("C0Aura",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
~You are one who cherishes the past, yet endlessly looks towards the future. Your talents shall be a blessing to this world, young artificer. There is little advice I can offer you but to keep true to your kind nature, and discard what doubts lay within your heart.~
== C0Aura2J ~Oooh... a Shou fortune teller told me the same thing once. There's no way it's a coincidence, is it?~
EXIT

CHAIN IF WEIGHT #-1
~Name("C0Aura",LastTalkedToBy)
Global("c0rininaura","LOCALS",0)~ THEN TRGYP03 AURA-RININ
~Is that a squirrel on your head, short lady? Is it yours? Mother won't let me keep pets. Why is it so shiny? Does he bite?~
DO ~SetGlobal("c0rininaura","LOCALS",1)~
== C0AURA2J ~Nah, Muffy's a nice boy. I'm sure he wouldn't. Hey, would you like to pet him?~
== TRGYP03 ~Yeah!~
EXIT

I_C_T NEEBER 10 C0AuraNEEBER10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~You know, I'd like to agree, but, um... never mind. It'd be impolite to say what I was thinking.~
END

I_C_T EDWINJ 40 C0AuraEDWINJ40
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Well, if it's any consolation, Edwin, I don't think your face looks so mean when you're flustered. It just looks rather funny. Ooh, like how it is right now!~
== EDWINJ ~I am having difficulty deciding which brat is more irksome, this child or the cheeky one we already have alongside us!~
END

// Tree of Life

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraTreeOfLife","GLOBAL",0) !Global("C0AuraRomanceActive","GLOBAL",2)~ EXTERN PLAYER1 TREEOFLIFE
END

CHAIN PLAYER1 TREEOFLIFE
~Aura, the ever optimistic and good-natured gnome from a faraway land has devoted herself fully to your cause. You wonder if her courage will be enough for this final confrontation.~
DO ~SetGlobal("C0AuraTreeOfLife","GLOBAL",1)~
END
++ ~Aura, you have a family and home that's waiting for you. Do you really want to throw your life away here?~ EXTERN C0AURA2J TREEOFLIFE.1
++ ~You were never meant for all of this violence, Aura, and Irenicus will be our most difficult battle yet. You don't need to endanger yourself.~ EXTERN C0AURA2J TREEOFLIFE.1
++ ~Are you ready to bring your best for what's ahead of us, Aura? This battle will decide everything.~ EXTERN C0AURA2J TREEOFLIFE.1

CHAIN C0AURA2J TREEOFLIFE.1
~You've been a better friend and teacher to me than I've ever known, <CHARNAME>. Even if I might not be as brave as you, seeing what Irenicus has done to you and everyone else... no, I can't leave you now. I'll stay with you no matter what might happen.~
END
COPY_TRANS PLAYER1 33

EXTEND_TOP PLAYER1 33 #1
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraTreeOfLife","GLOBAL",0) Global("C0AuraRomanceActive","GLOBAL",2)~ 
EXTERN PLAYER1 TREEOFLIFEROM
END

CHAIN PLAYER1 TREEOFLIFEROM
~Aura: She has given you her trust, her friendship, and more... after going through joy and sorrow together, the two of you are closer than you have ever been. She looks back at you without blinking, trying to look as confident as possible.~
DO ~SetGlobal("C0AuraTreeOfLife","GLOBAL",1)~
END
++ ~Aura, I–~ EXTERN C0AURA2J TREEOFLIFEROM.1

CHAIN C0AURA2J TREEOFLIFEROM.1
~Heehee... you don't have to say anything, <CHARNAME>. It's okay... it's okay.~
= ~I– um... well, I wasn't expecting us to have our big moment here of all places. These things I'm about to say to you right now... I was saving them for the right time, but I guess it's now or never, huh?~
= ~Ever since we got to know each other, you just kept drawing me in with everything... everything about you. You're so brave, determined, and beautiful... even when times are hardest, you're still as strong as ever.~
= ~I've admired that about you all along. And I guess it was kinda inevitable that in the end, I... I would fall for you completely. I just... couldn't admit it, because how could someone so tiny, and meek, and dependent on others... someone like me, ever hope to match up to you?~
= ~But I don't care about that anymore. Where we're going next, I know you'll need me, so I'm going with you. Maybe I'll live to see my home again, or maybe I won't... but it doesn't matter, as long as I get to spend a little longer with you.~
= ~So... you don't have to worry after me anymore, <CHARNAME>. I'm not afraid. I won't ever be afraid again as long as you're with me. Let's go and make you whole, and afterwards... we'll have all the time in the world for us.~
COPY_TRANS PLAYER1 33

// Umar Hills

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",1)~ THEN C0AURA2J C0AURA-UMARHILLS
~It's great that we managed to bring some peace back to this village... now that it's the way it should be, I can really appreciate how simple and charming it is.~ [C0BLANK]
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",2)~
= ~The mountains, and the design of the houses are different, but it's the same sort of pastoral feeling I got during my time in Kozakura. The people, too... they're humble and hard-working, but also have stories of their own.~
= ~*sigh* It makes me wish I was still there, taking walks by the coast, spending time with the fishermen... hey, <CHARNAME>. How do you feel about fishing? I've suddenly got the urge.~
END
  ++ ~You want to go fishing?~ + C0AURA-UMARHILLS-1
  ++ ~Sure, I enjoy fishing.~ + C0AURA-UMARHILLS-2
  ++ ~I don't mind, but I've never done it before.~ + C0AURA-UMARHILLS-3
  ++ ~Not right now, Aura.~ + C0AURA-UMARHILLS-0

CHAIN C0AURA2J C0AURA-UMARHILLS-0
~Oh... alright. That's a shame.~
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",-1)~ EXIT

CHAIN C0AURA2J C0AURA-UMARHILLS-1
~Why not? Look at how calm and soothing that stream is. Don't you think it'd be a waste not to have a rest, and do something fun for a while?~
END
  ++ ~When you put it that way, then sure. Let's catch some fish.~ + C0AURA-UMARHILLS-2
  ++ ~There's just one small problem... I've never tried fishing before.~ + C0AURA-UMARHILLS-3
  ++ ~It sounds like a waste of time. Let's just get moving.~ + C0AURA-UMARHILLS-0

CHAIN C0AURA2J C0AURA-UMARHILLS-2
~Alright! I think I see a nice spot ahead of us...~
== WILSONJ IF ~InParty("WILSON")~ THEN ~Growl.~
== C0AURA2J IF ~InParty("WILSON")~ THEN ~Oh, and you're not coming with us, Mr. Bear! Not a chance!~
== C0AURA2J ~I have a pair of collapsible fishing rods in my pack, so we just need to catch some bait and we'll be all set!~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
ActionOverride(Player1,JumpToPoint([3532.608]))
ActionOverride(Player1,Face(NWW))
JumpToPoint([3519.632])
Face(NWW)
MoveViewObject(Player1,INSTANT)
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN C0AURA2J C0AURA-UMARHILLS-3
~Oh, don't worry about that. I've practiced fishing almost as early as when I learned to walk, so I can teach you!~
== WILSONJ IF ~InParty("WILSON")~ THEN ~Growl.~
== C0AURA2J IF ~InParty("WILSON")~ THEN ~Oh, and you're not coming with us, Mr. Bear! Not a chance!~
== C0AURA2J ~I have a pair of fishing rods, we just need to find some bait...~
DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
ActionOverride(Player1,JumpToPoint([3532.608]))
ActionOverride(Player1,Face(NWW))
JumpToPoint([3519.632])
Face(NWW)
MoveViewObject(Player1,INSTANT)
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",2)~ THEN C0AURA2J C0AURA-UMARHILLS2
~Do you see them, <CHARNAME>? Just swimming along with the current? I don't think we could find a better spot.~ [C0BLANK]
END
IF ~See("MADULF") Global("OgreAlliance","GLOBAL",1)~ EXTERN UHOGRE01 C0AURA-UMARHILLS2-MADULF
IF ~OR(2) !See("MADULF") !Global("OgreAlliance","GLOBAL",1)~ EXTERN C0AURA2J C0AURA-UMARHILLS2-1

CHAIN C0AURA2J C0AURA-UMARHILLS2-1
~Let's see how many we can catch together!~
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",3)~
END
  ++ ~I have a better idea. Let's see which of us can catch more!~ + C0AURA-UMARHILLS2-2
  ++ ~Well, I'll follow your lead. You seem to be more experienced at this.~ + C0AURA-UMARHILLS2-3
  ++ ~Whatever. We won't have trouble eating, at least. Let's just make it quick.~ + C0AURA-UMARHILLS2-4

CHAIN C0AURA2J C0AURA-UMARHILLS2-2
~Oh, is that how we're going to do it? Hehe, you'd better not regret it. I grew up in a fishing town, so I'll bet I've fished for longer than you've been alive!~
EXTERN C0AURA2J C0AURA-UMARHILLS2-4

CHAIN C0AURA2J C0AURA-UMARHILLS2-3
~Alright, I'll teach you the motions first... and then, it's just waiting for a fish to take the bait. It's mostly patience, after all. And a strong arm.~
EXTERN C0AURA2J C0AURA-UMARHILLS2-4

CHAIN C0AURA2J C0AURA-UMARHILLS2-4
~Just attach the bait to the hook, throw, and... here we go!~
END
IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
ActionOverride("MADULF",JumpToPoint([3628.547]))
ActionOverride("MADULF",Face(SE))
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)~ EXIT
IF ~!Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
FadeFromColor([30.0],0)
Wait(2)
StartDialogNoSet(Player1)~ EXIT

CHAIN UHOGRE01 C0AURA-UMARHILLS2-MADULF
~Huh. Friend <PRO_RACE> is going to catch fish? Maybe... maybe Madulf can join you? Madulf was just deciding with fellows what we wanted for dinner.~
END
  ++ ~Of course you can.~ DO ~SetGlobal("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ EXTERN UHOGRE01 C0AURA-UMARHILLS2-MADULF-1
  ++ ~Find your own place, Madulf.~ EXTERN UHOGRE01 C0AURA-UMARHILLS2-MADULF-2

CHAIN UHOGRE01 C0AURA-UMARHILLS2-MADULF-1
~Thank you, <PRO_RACE>. Madulf will fish over on other side. Madulf will not cause problems for you or friend.~
EXTERN C0AURA2J C0AURA-UMARHILLS2-1

CHAIN UHOGRE01 C0AURA-UMARHILLS2-MADULF-2
~Oh. That too bad. Madulf understand. You and friend want to be alone.~
EXTERN C0AURA2J C0AURA-UMARHILLS2-1

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",3)~ THEN C0AURA2J C0AURA-UMARHILLS3
~There's the first one! That didn't take long at all.~ [C0BLANK]
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",4)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",4)~ THEN C0AURA2J C0AURA-UMARHILLS4
~Ooh, that's a beauty. Nice one, <CHARNAME>!~ [C0BLANK]
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",5)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",5)~ THEN C0AURA2J C0AURA-UMARHILLS5
~Look at that! We caught even more than I expected. We're going to have to let some of them go at this rate. We can't carry this much. Not to mention, it'll smell.~ [C0BLANK]
= ~Oh! Another one's biting. I'm going to get this one, just watch!~
= ~Ooh, he's really struggling. I'll get you yet...~
= ~Goodness, this one's really strong. I'll bet it's huge. I'm not sure I can... eep!~
END
  ++ ~I'll help you out!~ + C0AURA-UMARHILLS5-1
  ++ ~(Do nothing)~ + C0AURA-UMARHILLS5-2

CHAIN C0AURA2J C0AURA-UMARHILLS5-1
~Wow... even with the two of us! This must be some kind of monster... keep pulling, <CHARNAME>! We'll tire it out!~
== UHOGRE01 IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ THEN ~Madulf help! Madulf hold on rod with <PRO_RACE>!~
== C0AURA2J ~Just a little bit more... come on, come on... Yes! Reel it in, quickly!~
END
IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~SetGlobal("C0AuraUmarHills","GLOBAL",6)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
ActionOverride("MADULF",JumpToPoint([3579.605]))
ActionOverride("MADULF",Face(W))
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT
IF ~!Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~SetGlobal("C0AuraUmarHills","GLOBAL",6)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN C0AURA2J C0AURA-UMARHILLS5-2
~Oh no. Oh no no no no no! Eeeek!~
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",7)
ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([20.0],0)
Wait(1)
FadeFromColor([20.0],0)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",6)~ THEN C0AURA2J C0AURA-UMARHILLS6
~Look at that! It's huge! I didn't think we'd catch something of this size.~ [C0BLANK]
DO ~GiveItemCreate("C0AFISH2",Player1,0,0,0) SetGlobal("C0AuraUmarHills","GLOBAL",8)~
= ~Here, <CHARNAME>. You take it. We caught it together, after all, so you deserve just as much of the credit. Plus, it's heavy.~
EXTERN C0AURA2J C0AURA-UMARHILLS8

CHAIN IF WEIGHT #-1 ~Global("C0AuraUmarHills","GLOBAL",7)~ THEN C0AURA2J C0AURA-UMARHILLS7
~Well... that was embarrassing.~ [C0BLANK]
DO ~SetGlobal("C0AuraUmarHills","GLOBAL",8)~
= ~It got away... along with my rod. And now I'm all soaked as well. *sigh*~
END
  ++ ~Looks like you need to train your muscles a bit.~ + C0AURA-UMARHILLS7-1
  ++ ~Sorry. I thought you had it.~ + C0AURA-UMARHILLS7-2
  ++ ~Hahahaha!~ + C0AURA-UMARHILLS7-3

CHAIN C0AURA2J C0AURA-UMARHILLS7-1
~Looks like it. Time to pull out some weights, I guess...~
EXTERN C0AURA2J C0AURA-UMARHILLS8

CHAIN C0AURA2J C0AURA-UMARHILLS7-2
~I really thought I had it, too. That would've given me something to be smug about for at least a few days. Oh well...~
EXTERN C0AURA2J C0AURA-UMARHILLS8

CHAIN C0AURA2J C0AURA-UMARHILLS7-3
~Oh, don't laugh! As if I haven't been humiliated enough... *pout*~
EXTERN C0AURA2J C0AURA-UMARHILLS8

CHAIN C0AURA2J C0AURA-UMARHILLS8
~...Hehe. That was fun. I can't remember the last time I had a chance to just relax and have a good time...~
== UHOGRE01 IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ THEN ~Madulf catch plenty of big ones too. Madulf's friends will be very happy, Madulf thinks.~
== C0AURA2J ~What do you think, <CHARNAME>?~
END
  ++ ~That was great. We need to do it again some time.~ + C0AURA-UMARHILLS8-1
  ++ ~It was fine, I guess.~ + C0AURA-UMARHILLS8-2
  ++ ~I don't think I like fishing. But at least we won't go hungry.~ + C0AURA-UMARHILLS8-2

CHAIN C0AURA2J C0AURA-UMARHILLS8-1
~Yes, for sure! Let's make this a routine, if we can.~
EXTERN C0AURA2J C0AURA-UMARHILLS8-2

CHAIN C0AURA2J C0AURA-UMARHILLS8-2
~Thanks for taking the time to indulge in this with me, <CHARNAME>. It's almost like I'm with my family again.~
= ~But we can't stay here forever, can we? Let's go. We'll have plenty more chances to repeat this in the future.~
END
IF ~Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
ActionOverride("MADULF",JumpToPoint([3288.721]))
ActionOverride("MADULF",Face(S))
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT
IF ~!Global("C0AuraUmarHillsMadulfFish","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
Wait(1)
FadeToColor([30.0],0)
Wait(2)
FadeFromColor([30.0],0)
Wait(2)
EndCutSceneMode()~ EXIT

EXTEND_BOTTOM IMNBOOK1 0
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraBookMerchant","GLOBAL",0)~ DO ~SetGlobal("C0AuraBookMerchant","GLOBAL",1)~
EXTERN C0AURA2J C0AuraBookMerchant
END

CHAIN C0AURA2J C0AuraBookMerchant
~Aww... I was really hoping I'd find something new to read too. That's too bad.~
== IMNBOOK1 ~A fellow bibliophile, eh? Well, I do have a few things here or there I kept for personal reading, though they are mostly more of a casual genre.~
== IMNBOOK1 ~This one, for instance. "Lucky Lilla and the Emerald Stream". Volume III of the "Lucky Lilla" series of children's books, originating from Lantan, I believe.~
== C0AURA2J ~Oh... ah, "Lucky Lilla"? That, umm, brings back memories, ahaha...~
== IMNBOOK1 ~The books are hardly older than the younglings they entertain, in fact. Only serialized less than 20 years ago, according to the footnotes. Written and illustrated by, erm, who was it again...?~
== C0AURA2J ~..."Aurelia White"...~
== IMNBOOK1 ~Ah, yes. Aurelia White, that's the name. Not much of a history to her, s'far I can tell. Only thing anyone knows is that she's a Lantanese author.~
== C0AURA2J ~Mmm, that's, um, right. Even the Lantanese don't really talk much about, er, about her. What do you think of "Lucky Lilla", sir?~
== IMNBOOK1 ~Well, you'd think these picture books would be too juvenile for serious reading, but truthfully I find them quite delightful. The tales, the imagery! All of it was born of a truly imaginative mind.~
== C0AURA2J ~Er, haha. Than—I mean, that's really interesting.~
== IMNBOOK1 ~You know, little lady, you don't look so different from the heroine on the cover. If nothing else, the hair is almost an identical shade of pink. I don't suppose you grew up on these books?~
== C0AURA2J ~That's, well, something like that, I guess? Ahaha... I know the stories well, in any case. I don't have any of them right now, though.~
== IMNBOOK1 ~In that case, let me make a gift of this to you. They're in fairly high demand among the children, and the cost is negligible, it's of no loss to me, I assure ye.~
DO ~GiveItemCreate("c0abook4","c0aura",1,0,0)~
== C0AURA2J ~Oh... thank you! Wow, this is nostalgic...~
== IMNBOOK1 ~Fare ye well, friends.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraMimic","GLOBAL",1)~ THEN C0AURA2J AURA-MIMIC
~*grumble* Should've known... stupid mimics, grr... last one tried to bite my head off... argh, glue in my hair... *mumbles*~
DO ~SetGlobal("C0AuraMimic","GLOBAL",2)~
EXIT

I_C_T UHKID03 2 C0AuraUHKID032
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*sigh* I remember how happy I was when my parents gave me my first toolkit. I was old enough to not cut myself then. Isn't swords and ale a bit much, though?~
END

I_C_T JUGJER01 28 C0AuraJUGJER0128
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh no! His wards are failing! Get back, please!~
END

I_C_T VALYGAR 4 C0AuraVALYGAR8
== C0AURA2J IF ~Global("hiredbycowled","GLOBAL",1) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~So that's why they hired us? I– I know we promised to do what the wizards asked, but this is just wrong!~
END

I_C_T VALYGAR 8 C0AuraVALYGAR8
== C0AURA2J IF ~Global("hiredbycowled","GLOBAL",1) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~So that's why they hired us? I– I know we promised to do what the wizards asked, but this is just wrong!~
END

I_C_T VALYGAR 12 C0AuraVALYGAR8
== C0AURA2J IF ~Global("hiredbycowled","GLOBAL",1) InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~So that's why they hired us? I– I know we promised to do what the wizards asked, but this is just wrong!~
END

I_C_T2 UHINN01 25 C0AuraUHINN0125
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*sniff* That's weird, the ink smells fresh...~
END

// Underdark

CHAIN IF WEIGHT #-1 ~Global("C0AuraImprisonmentDevice","GLOBAL",1)~ THEN C0AURA2J C0AURA-IMPRISONMENT
~Huh... what is this thing? It's containing an incredible amount of arcane power. <CHARNAME>, wait here and let me have a closer look.~ [C0BLANK]
DO ~SetGlobal("C0AuraImprisonmentDevice","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
MoveToPoint([1991.1991])
SmallWait(1)
Face(N)
Wait(1)
StartDialogNoSet(Player1)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraImprisonmentDevice","GLOBAL",2)~ THEN C0AURA2J C0AURA-IMPRISONMENT-2
~Mmm... that's pretty scary. If I'm not mistaken, <CHARNAME>, this is some kind of imprisonment device. Veeery powerful and difficult magic. What's more, it seems to have some kind of latent magical energy, meaning there's probably somebody trapped inside... or multiple somebodies.~ [C0BLANK]
DO ~SetGlobal("C0AuraImprisonmentDevice","GLOBAL",3)~
END
  ++ ~Is there any way we could free whoever's trapped? Imprisonment is a terrible fate.~ + C0AURA-IMPRISONMENT-2-1
  ++ ~By imprisonment, I assume you mean some kind of magical prison, and not literally having someone inside.~ + C0AURA-IMPRISONMENT-2-2
  ++ ~Never mind this thing for now. We can't risk releasing something dangerous by playing around with random magical devices.~ + C0AURA-IMPRISONMENT-2-0

CHAIN C0AURA2J C0AURA-IMPRISONMENT-2-0
~Maybe you have a point... too bad there's no way we could take it with us. I'd like to spend more time researching it if I had a chance.~
EXIT

CHAIN C0AURA2J C0AURA-IMPRISONMENT-2-1
~I agree. I think freeing them would be easy enough. These facets seem designed to activate at a touch, and it'll probably release the imprisoned soul.~
EXTERN C0AURA2J C0AURA-IMPRISONMENT-2-3

CHAIN C0AURA2J C0AURA-IMPRISONMENT-2-2
~Oh, there's no way anyone would be able to survive inside without some kind of magical assistance. Imprisonment is a horrible, horrible bit of magic. Fortunately, this thing seems built to be able to release whoever's inside by just touching the facets.~
EXTERN C0AURA2J C0AURA-IMPRISONMENT-2-3

CHAIN C0AURA2J C0AURA-IMPRISONMENT-2-3
~That said, there's no knowing what kind of creature is inside. And if they've been trapped long enough, their cognitive functions might not be... too stable. I don't think anyone deserves to be trapped like this, but it might not be entirely safe to let them out despite that.~
= ~I'll leave the decision on what to do up to you, <CHARNAME>. Though there's some interesting markings on this side of the device, now that I'm looking more carefully... I think they're some kind of glyph. Hmm... maybe I could understand more if I copied them on paper.~
DO ~GiveItemCreate("scrl9s",Myself,1,0,0)~
= ~There! Now I can make more sense of them—it's incantations for a spell... written in Drow, I think. Good thing I've brushed up on languages, so I've translated the important parts. It might be useful, <CHARNAME>.~
== VICONIJ IF ~InParty("VICONIA") InMyArea("VICONIA")~ THEN ~Best you handle that with care, <CHARNAME>. Even slight mistranslation, which I fully expect, could have catastrophic results.~
EXIT

I_C_T AERIEJ 146 C0AuraAERIEJ146
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Aerie... it's okay. You're not alone, your friends are here to face this with you. We're all terrified, but we'll get through it, okay?~
== AERIEJ ~Y—you're right, Aura. I'm sure this is hard for everyone, so I need to... to keep it together. But having people with me helps... it really does.~
END

EXTEND_TOP UDSVIR01 2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~Aura, do you have any idea what they're saying?~ EXTERN C0AURA2J C0AuraSvirfneblin
END

CHAIN C0AURA2J C0AuraSvirfneblin
~I'm not familiar with the dialect... but they want to know our intent, I think. We should show them that we mean no harm.~
EXTERN UDSVIR01 0

INTERJECT UDSILVER 9 C0AuraUDSILVER9
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~In all my life, I don't think I've ever seen anything more beautiful...~
EXTERN UDSILVER 58

INTERJECT UDPHAE01 61 C0AuraUDPHAE0161
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Y–you want us to slaughter my underground ki– I mean, gnomes? That's vile!~
EXTERN UDPHAE01 62

I_C_T UDTRAP06 1 C0AuraUDTRAP061
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~He look so young. I can't believe someone would be so cruel as to trap him in that... thing.~
END

I_C_T UDSILVER 34 C0AuraUDSILVER34
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Umm, wow... this is completely bizarre. Is this what it's like being tall?~
END

I_C_T UDDUER03 0 C0AuraUDDUER030
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh... that wasn't nice. I only understand a few snippets of Undercommon, but there were definitely a few rude words in there.~
END

EXTEND_BOTTOM UDDROW07 9
IF ~IsValidForPartyDialogue("C0Aura")~ EXTERN C0AURA2J C0AuraMerinid
END

CHAIN C0AURA2J C0AuraMerinid
~"Do not throw"... wait, no. It's "don't stow thrones in grass houses"? I feel like I've heard this before...~
EXTERN UDDROW07 11

I_C_T UDSVIR03 7 C0AuraUDSVIR037
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~You're kin of mine, however distantly... I'd be willing to help just on that alone.~
END

I_C_T UDSVIR03 27 C0AuraUDSVIR0327
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~No. NO! This is atrocious! I'm not having any part of this!~
DO ~LeaveParty()
EscapeArea()~ END

I_C_T UDSOLA01 101 C0AuraUDSOLA01101
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Please don't make us do this, <CHARNAME>. Maybe if we send him away, we can talk to the svirfneblin and find a way to leave them in peace... it's worth a try...~
== UDSOLA01 ~What are you muttering over there, female? I would be happier to get this tiresome mission over with as quickly as we can.~
END

INTERJECT UDSVIR08 0 C0AuraUDSVIR080
== C0AURA2J IF ~Global("SolaufeinJob","GLOBAL",7)
InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ood tera... daer'laa vas, k–kin— I mean, deep gnome. Are you familiar with our language? We come in peace.~
EXTERN UDSVIR08 2

I_C_T2 UDSVIR08 1 C0AuraUDSVIR081
== C0AURA2J IF ~IsValidForPartyDialog("Jan")
Global("SolaufeinJob","GLOBAL",7)~ THEN ~I– I can't believe we're doing this! These... these are my kin that we're killing!~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraUnderdarkBloodStuff","GLOBAL",1)~ THEN C0AURA2J C0AURA-UNDERDARK-BLOOD
~Oh, come to think of it, <CHARNAME>... we still have that blood from the Underdark monsters, don't we?~ [C0BLANK]
DO ~SetGlobal("C0AuraUnderdarkBloodStuff","GLOBAL",2)~
= ~I guess it's not much use to us now that we're free from that place, but... maybe I can do something with it now that it's not important for anything else. This won't take too much time...~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("C0ABLOOD")~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraUnderdarkBloodStuff","GLOBAL",2)~ THEN C0AURA2J C0AURA-UNDERDARK-BLOOD2
~There we go. These potions aren't particularly nice to look at, and I doubt they'll taste better, but they're very powerful. You'll know what to do with them, I'm sure.~ [C0BLANK]
DO ~SetGlobal("C0AuraUnderdarkBloodStuff","GLOBAL",3)~
EXIT

// Unseeing Eye

INTERJECT GAAL 4 C0AuraGAAL4
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~A– a beholder? That's a powerful and intelligent creature, for sure, but a god?~
EXTERN GAAL 9

// Waukeen's Promenade

CHAIN IF WEIGHT #-1 ~See("C0Aura")
InParty("C0Aura")
!StateCheck("C0Aura",CD_STATE_NOTVALID)
RandomNum(2,1)
Global("C0AuraMurtlen","AR0700",0)~ THEN MURTLEN murtlen
~You! Have you ever been cheated here? I bet ye have!~
DO ~SetGlobal("C0AuraMurtlen","AR0700",1)~
== C0AURA2J ~Me? Hehe, I've always prided myself on my eye for good quality... er, goods. If I wasn't so busy, I'd happily give you a few lessons on proper appraisal.~
EXIT

ADD_TRANS_TRIGGER KGENIE1 3 ~OR(3) !InParty("C0Aura") !InMyArea("C0Aura") StateCheck("C0Aura",CD_STATE_NOTVALID)~ DO 0 1 2 3 4 5

EXTEND_BOTTOM KGENIE1 3
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~The prince is 20 and the princess is 30.~ EXTERN C0AURA2J AURA-KALAH-GENIE-1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~The prince is 40 and the princess is 30.~ EXTERN C0AURA2J AURA-KALAH-GENIE-1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~The prince is 30 and the princess is 40.~ DO ~AddexperienceParty(19500)~ EXTERN C0AURA2J AURA-KALAH-GENIE-2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~The prince is 30 and the princess is 20.~ EXTERN C0AURA2J AURA-KALAH-GENIE-1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~They are both the same age.~ EXTERN C0AURA2J AURA-KALAH-GENIE-1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ + ~I surely don't know.~ EXTERN C0AURA2J AURA-KALAH-GENIE-3
END

CHAIN C0AURA2J AURA-KALAH-GENIE-1
~No, wait, <CHARNAME>. The prince should be 30 and the princess 40, isn't that right?~
DO ~AddexperienceParty(19500)~ EXTERN KGENIE1 7

CHAIN C0AURA2J AURA-KALAH-GENIE-2
~Ooh, well done. That's not an easy one to figure out.~
EXTERN KGENIE1 7

CHAIN C0AURA2J AURA-KALAH-GENIE-3
~Hmm, let me think... if I'm not wrong, then the prince should be 30 and the princess 40, right?~
DO ~AddexperienceParty(19500)~ EXTERN KGENIE1 7

I_C_T AERIE 27 C0AuraAERIE27
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Huh... that would explain a lot. Everything here radiates with illusion magic. But undispellable illusions so powerful that your senses make them real isn't something anyone can conjure up.~
END

I_C_T GERETH 2 C0AuraGERETH2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Um, there's no recipe calling for salamander dust that I know of... unless you're looking to give your children a really, REALLY bad case of heartburn.~
== GERETH ~Hmph! It's a... secret recipe... yes, that's it. Passed down from generation to generation along my family line. So secret, nobody else has ever heard of it. It is no surprise you have no understanding of the culinary uses of salamander dust.~
END

I_C_T KALAH2 4 C0AuraKALAH24
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Th–this monster was one of my kinsmen? I can't believe this...~
END

I_C_T SHOP08 0 C0AuraSHOP080
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Ooh, this is nice. I don't suppose you have a copy of Volo's Guide to All Things Magical? My old volume's falling apart at the seams.~
== SHOP08 ~That book ain't regarded highly by the gov'nors round 'ere, miss, but... eh, I think I might'a stored a copy or two somewhere. Would ye like t' see me other tomes while I go 'round t' the back?~
END

I_C_T SCJERLIA 12 C0AuraSCJERLIA12
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Well... I can't say I like this idea, but... I don't see how we'll ever get enough of real illithium to satisfy that stuck-up artist otherwise.~
END

// WILSON!

I_C_T WILSON 0 C0AuraWILSON0
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*shivers*~
== WILSON ~Growl.~
END

CHAIN IF WEIGHT #-1 ~IsGabber("C0Aura")~ THEN WILSON AURA-WILSON-NOPARTY
~Growl?~
== C0AURA2J ~Eep! Stay away!~
== WILSON ~Growl...~
DO ~ActionOverride("C0Aura",RunAwayFrom("WILSON",20))~ EXIT

CHAIN IF WEIGHT #-1 ~IsValidForPartyDialog("Wilson")
Global("C0AuraWilsonConflict","GLOBAL",2)~ THEN C0AURA2J wilsonconflict
~S-seriously?~
DO ~SetGlobal("C0AuraWilsonConflict","GLOBAL",3)
SetGlobalTimer("C0AuraWilsonRestTalkTimer","GLOBAL",ONE_DAY)~
= ~...No, <CHARNAME>. Just... no.~
END
++ ~What?~ + wilsonconflict.1
++ ~I have no idea what you're talking about.~ + wilsonconflict.1
+ ~!Race(Player1,HALFLING)
!Race(Player1,DWARF)
!Race(Player1,GNOME)~ + ~*Why* are you hiding behind my legs?~ + wilsonconflict.1
+ ~OR(3)
Race(Player1,HALFLING)
Race(Player1,DWARF)
Race(Player1,GNOME)~ + ~*Why* are you hiding behind me?~ + wilsonconflict.1
++ ~Yes. Too bad.~ + wilsonconflict.1

CHAIN C0AURA2J wilsonconflict.1
~You can't seriously expect me to walk in the same direction as... HIM. LOOK AT HIM!~
== WILSONJ ~Rrrf?~
== C0AURA2J ~Ugh! D-don't 'rrrf' me, whatever that means! K-keep away from me!~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~Oh. I forgot you're deathly afraid of bears.~ + wilsonconflict.2
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I see you've still got that stupid phobia of yours.~ + wilsonconflict.2
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~I'm not exactly seeing the problem here...~ + wilsonconflict.3
+ ~!Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~Explain what's going on. Now.~ + wilsonconflict.3

CHAIN C0AURA2J wilsonconflict.2
~I can't believe you actually let a big, honking BEAR of all things join us, knowing I hate the ugly things! Did you do this as a practical joke?~
== WILSONJ ~...snort. GROWL.~
== C0AURA2J ~Aah! Look at his mouth. Look at his TEETH! Look at how angry he is! He's thinking of eating me, I know it!~
EXTERN WILSONJ wilsonconflict.4

CHAIN C0AURA2J wilsonconflict.3
~I— I hate bears! I never had to deal with the horrific things in Lantan, but ever since I left I've been seeing them everywhere, and it's awful! Now you're telling me I have to get buddy-buddy with one?~
== WILSONJ ~Rff? Snort.~
== C0AURA2J ~Ugh! Just look at his mouth! Look at those big teeth! Look at the slobber dripping from his lips! He's thinking of eating me, I know it!~
EXTERN WILSONJ wilsonconflict.4

CHAIN WILSONJ wilsonconflict.4
~Sniff? Growl. ROOAR!~
== C0AURA2J ~Aaaaaah! I— I can't stand it anymore! Get him out of here, before he decides to make me into a light snack!~
END
++ ~Go home, Aura. You're clearly in no fit state for adventuring.~ EXTERN C0AURA2J wilsonconflict.5
++ ~I'm sorry, my eloquent friend Wilson, but I really really need Aura. You're going to have to return to the woods.~ EXTERN WILSONJ wilsonconflict.6

CHAIN C0AURA2J wilsonconflict.5
~Seriously? SERIOUSLY?~
= ~Okay, fine! I guess you like this big, fat, ugly... BEAR more than me, then! I'm taking my things and going home!~
== WILSONJ ~Growl.~
END
++ ~You... want her to stay?~ EXTERN WILSONJ wilsonconflict.5a
++ ~She wants to go, Wilson.~ EXTERN WILSONJ wilsonconflict.5a
++ ~I don't care either way. Just make up your minds already.~ EXTERN WILSONJ wilsonconflict.5a

CHAIN WILSONJ wilsonconflict.5a
~Snufflesnuff. Growl.~
== C0AURA2J ~...~
== WILSONJ ~...~
== C0AURA2J ~D-do you swear you won't bite my toes while I sleep?~
== WILSONJ ~Roar.~
== C0AURA2J ~You won't lick my face?~
== WILSONJ ~Snort.~
== C0AURA2J ~You won't eat my hair?~
== WILSONJ ~Cough. *gagging noise*~
== C0AURA2J ~...~
== C0AURA2J ~Okay, fine. Just keep a ten-foot distance from me at all times. I can't tell you apart from an unfriendly bear.~
END
++ ~Thank goodness that's sorted.~ EXTERN C0AURA2J wilsonconflict.7
++ ~Can you both stop wasting my time now?~ EXTERN C0AURA2J wilsonconflict.7

CHAIN WILSONJ wilsonconflict.6
~Rrrff?! Growl...~
== C0AURA2J ~Oh, that's a relief. For a moment I thought you might actually drop me for a bear, of all things.~
== WILSONJ ~Sniff sniff...~
== C0AURA2J ~There's no point looking at me like that, I'm not having you!~
== WILSONJ ~Growl? Snuffle.~
== C0AURA2J ~Ugh! Just go away already!~
== WILSONJ ~...sniff.~
== C0AURA2J ~...~
== WILSONJ ~...~
== C0AURA2J ~N-nuts and bolts! I can't believe a bear can make puppy-dog eyes like this! Fine, j-just don't get too close to me when we walk!~
END
++ ~Thank goodness that's sorted.~ EXTERN C0AURA2J wilsonconflict.7
++ ~Can you both stop wasting my time now?~ EXTERN C0AURA2J wilsonconflict.7

CHAIN C0AURA2J wilsonconflict.7
~I— I will hold you accountable if Muffy gets eaten, <CHARNAME>!~
== WILSONJ ~Growl.~
EXIT

// WINDSPEAR HILLS

CHAIN IF WEIGHT #-1 ~Global("C0AuraOrcishCookbook","GLOBAL",1)~ THEN C0AURA2J wilsonconflict
~Blech! I don't think I've ever been more glad to be a vegetarian.~
DO ~SetGlobal("C0AuraOrcishCookbook","GLOBAL",2)~
EXIT

I_C_T FIRWLF01 0 C0AuraFIRWLF01
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Phew! It smells like wet dog in here.~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraPerfectSunshooter","GLOBAL",1)~ THEN C0AURA2J C0AuraSunshooter
~Well, that's it. After all this time, it's finally done... the Perfect Sunshooter. I never thought I'd see the day.~ [C0BLANK]
DO ~SetGlobal("C0AuraPerfectSunshooter","GLOBAL",2)~
== C0AURA2J ~I feel like I should be happier, but all I can think of is how much fighting we've gone through to push me into completing it. I feel guilty. Both for everything I've put this bow through, and for not admiring it like it deserves.~
END
  ++ ~It's beautiful. You should be proud of what you've made.~ + C0AuraSunshooter-1
  ++ ~A weapon is used as its wielder decides. As long as you know what's right, you shouldn't be ashamed of carrying that bow.~ + C0AuraSunshooter-2
  ++ ~Since it means you'll be more useful, I'm satisfied.~ + C0AuraSunshooter-0

CHAIN C0AURA2J C0AuraSunshooter-0
~Yes, I guess I should be satisfied too. Let's go, <CHARNAME>. I should give it a test as soon as possible.~
EXIT

CHAIN C0AURA2J C0AuraSunshooter-1
~I am. The first weapon I ever had a part in making with my own hands, and up to now, it's never left my side. ~
EXTERN C0AURA2J C0AuraSunshooter-3

CHAIN C0AURA2J C0AuraSunshooter-2
~I'm not ashamed. I know that the path we've taken is the best that we've made it. And I wouldn't be ashamed of this bow. Not after everything it's done for me.~
EXTERN C0AURA2J C0AuraSunshooter-3

CHAIN C0AURA2J C0AuraSunshooter-3
~I just thought the day Uncle Dedalus first showed me the completed work... I was so innocent back then, I couldn't even imagine it being covered in blood.~
= ~Strangely, even though I knew I'd use it for battles that I'd hate, I never thought of a day where I'd actually put it down. It's like a partner to me now... and that's why I've worked hard to make it the best it could possibly be.~
= ~And even though I'm not excited, I'm... still glad. If it means I can do more for you, then it's a good thing I've succeeded. It may be the whole reason why I was motivated to perfect it at all.~
= ~I think you deserve some of the credit for the creation of the Perfect Sunshooter, don't you think, <CHARNAME>? Hehe.~
EXIT