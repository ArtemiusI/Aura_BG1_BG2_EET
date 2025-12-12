
// Aerie

I_C_T BAERIE25 159 C0AuraBAERIE25159
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Aww, he's so sweet! His little round cheeks remind me of my baby twin siblings... oh, now I miss seeing them.~
END

// Bondari

I_C_T BAZPAT01 9 C0AuraBAZPAT01
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Is anyone else feeling a weird sense of déjà vu? Just me? Strange...~
== BAZPAT01 ~Uhh... *sweats profusely*~
END

// Dragon

I_C_T2 BAZDRA03 8 C0AuraBAZDRA038
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("C0AuraYoshimoBetrayal","GLOBAL",0)~ THEN ~It's ironic, isn't it, <CHARNAME>? Another geas, but this time, with such a simple solution. If only it could've been so easy with Yosh—~
== C0AUR25J ~Never mind. I'm sorry to bring it up.~
END

// Elminster

I_C_T AMELM01 0 C0AuraAMELM01
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura") Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Oh, master Elminster! It's such a pleasure to see you again, sir!~
== AMELM01 ~The pleasure is all mine, young architect. My, it seems you've grown since our last meeting, both in stature and in confidence.~
END

I_C_T AMELM01 16 C0AuraAMELM0116
== AMELM01 IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Ah, but before I go... there was one final matter. I have something to hand over to you... well, more accurately, to your companion, Aurelia.~
== C0AUR25J ~Me, sir? Whatever could it be?~
== AMELM01 ~That is for you to see, my dear. I am merely taking the role of a humble courier, as a favor to your charming grandmother, Minerva.~
== C0AUR25J ~My grandmother?! You've met her recently? Could you perhaps tell me where...~
== AMELM01 ~Ah, ah, I understand your eagerness, but I fear even I do not have that knowledge. I have met few as whimsical and freespirited as her in my entire life... and that is quite the accomplishment. She goes where she wills, and even I could not dictate her path.~
== AMELM01 ~Still, it was a pleasant encounter, and she appeared to suspect somehow that I would meet you and <CHARNAME> sooner or later, and thus she left me with these tokens from a prior adventure... a cloak and dagger in the literal sense, relics of a past adventure, and time has only strengthened their magic.~
DO ~GiveItemCreate("c0adagg1","C0Aura",1,0,0) GiveItemCreate("C0aclck2","C0Aura",1,0,0)~
== AMELM01 ~Perhaps she knew of the perils of your journey, and wished to help in her own way. And she asked me to assure you that your paths will cross when the right time comes.~
== C0AUR25J ~I... I see. I hope she'll hold to that. There's a lot I'd like to say to her, for both my papa's sake and mine. Thank you for bringing this to me.~
== AMELM01 ~Now then, I have fulfilled my responsibilities here, and it is onto the next task. My work will never be done, you see. Perhaps you, on the other hand, might find some peace, should you see this journey through to the end without issue, <CHARNAME>. Farewell, and good luck!~
END

INTERJECT AMSMITH 0 C0AuraAMSMITH0
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Hey, that's the emblem of the Sambaran Academy! I don't recognize you, though. Who are you?~
EXTERN AMSMITH 2

INTERJECT AMSMITH 2 C0AuraAMSMITH2
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Kerrick? As in, the old professor of weapons engineering? My goodness, so this is where you've been all this time!~
END
++ ~You know this strange gnome, Aura?~ EXTERN C0AUR25J C0AuraAMSMITH-TALK

CHAIN C0AUR25J C0AuraAMSMITH-TALK
~I don't. But my uncle's told me a few stories of his tenure. This fellow broke the previous record for most periods of probation for repeated accounts of negligence, irresponsible conduct in class sessions, as well as advocation and teaching of, uh... 'controversial' design methods. Not that I would know, weapons engineering wasn't a class I was particularly interested in...~
== AMSMITH ~Hmph! All the work of slander, *SLANDER*, I tell you, from my stuck-up and jealous ex-colleagues trying to tarnish my reputation. The students LOVED me, I tell you!~
== C0AUR25J ~I'll, um, take your word for it. So what have you been up to since you left Lantan?~
EXTERN AMSMITH 3

I_C_T AMSMITH 19 C0AuraAMSMITH19
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Um, wow. I'll be honest... I must've seen at least a thousand different design schematics in my life and I *still* had no idea what was going on. This... thing, I definitely wasn't expecting.~
END

I_C_T2 AMSMITH 20 C0AuraAMSMITH20
== C0AUR25J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~And he's gone... I wish I could be there see the look on the professors' faces when he shows up with his research. Oh well...~
END

// Gorion Wraith

EXTEND_BOTTOM HGWRA01 18
IF ~Global("C0AuraRomanceActive","GLOBAL",2) InParty("C0Aura")~ EXTERN HGWRA01 AURA-GORIONWRAITH
END

CHAIN HGWRA01 AURA-GORIONWRAITH
~What of the inevitable pain you must give to the one you love? This poor, pitiful, naive gnome...~
== C0AUR25J ~I may be those things, but my love for <CHARNAME> is not a mistake. It's not!~
EXTERN HGWRA01 24

EXTEND_BOTTOM HGWRA01 24
IF ~Global("C0AuraRomanceActive","GLOBAL",2)~ DO ~ClearAllActions() StartCutSceneMode() StartCutScene("C0AU25C1")~ EXIT
END

CHAIN 
IF ~Global("C0AuraToBRomWraith","GLOBAL",0)~ THEN C0AU25WR tob-wraith1
~Hmm...? Whose hand is it that beckons me away from the pure land?~
DO ~SetGlobal("C0AuraToBRomWraith","GLOBAL",1)~
== C0AUR25J ~Reika-san...?~
== C0AU25WR ~Ah, it is you, dear child. Have you... found your name, and your own self? It brings me joy to see it.~
== C0AUR25J ~I... I have. I owe so much to you. And I've missed you so much... but you shouldn't be here!~
== C0AU25WR ~I should not? But have I not said before, that I am always with you, so long as you need me? Or have you forgotten and discarded me already?~
== C0AUR25J ~No! NO! I haven't forgotten you, not even one bit! Please... forgive me...~
== C0AU25WR ~Of course I forgive you. I will always forgive you. But how could you forgive yourself, for all the sins you have wrought? All the violence and death which you culpable for?~
== C0AUR25J ~I'm sorry... I'm so sorry... it's my fault that you died. But you should be at peace... I... I made things right...~
== C0AU25WR ~Yes, you took revenge. But is revenge what I sought? No, I gave my life hoping for an end to the bloodshed. It was you who decided that my life was worth continuing a cycle of violence, and taint your soul eternally.~
== C0AUR25J ~You're... you're right. But I—~
== C0AU25WR ~Did you believe that, by taking only one life steeped in sin, that it would be enough? Perhaps, but it was not only one, was it? One became a hundred, a thousand... how many lives have you taken with your bow, which I trained you to draw across countless nights? Does all this blood... not stain my hands as well?~
== C0AUR25J ~I...~
== C0AU25WR ~It seems our hearts are both impure, child. And now, in your ignorance, we both suffer. Even in death, I cannot know peace. But if you have truly abandoned me, then I shall bear the weight of our sins for us both.~
== C0AUR25J ~No... I... what have I done? I...~
END
  ++ ~Don't listen, Aura! You mustn't blame yourself for what's happened!~ EXTERN HGWRA01 25
  ++ ~Stop this, Gorion! She doesn't deserve this!~ EXTERN HGWRA01 25
  ++ ~Enough! I won't allow this to continue!~ EXTERN HGWRA01 25
  + ~CheckStatGT(Player1,16,WIS)~ + ~Don't believe it, Aura! It isn't real!~ EXTERN HGWRA01 25

// Iyacanth

I_C_T BAZEYE01 9 C0AuraBAZEYE019
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Mph... me'bbe th' cheez that they int'nshally grow mold on... ugh, sorry, <CHARNAME>. I can't help but pinch my nose.~
END

// Nyalee

I_C_T HGNYA01 29 C0AuraHGNYA0129
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~A mother's love is truly a frightening thing, sometimes... I'm sorry that we have to do this.~
END

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// non-romanced

I_C_T FINSOL01 27 C0AuraSolarFriend1
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !Global("C0AuraRomanceActive","GLOBAL",2)~ THEN ~Aww... it's all about to be over soon, isn't it? I was hoping this journey wouldn't end. But we've fought this far for you, and now... the rest is your choice. I can't imagine the kind of weight this moment has for you.~
== C0AUR25J IF ~GlobalLT("PPEvilChoices","GLOBAL",5)~ THEN ~If it were me, I don't even know if I'd be able to avoid temptation... hehe, I guess it'll be a long ways before my courage matches yours, <CHARNAME>. You've got my vote of confidence no matter what you choose, though.~
== C0AUR25J IF ~GlobalLT("PPEvilChoices","GLOBAL",2)~ THEN ~I know you'd be a spectacular god if you wanted to. But either way, I hope you won't mind if I always remember you as you are now... the most inspirational person to have ever lived.~
== C0AUR25J IF ~GlobalGT("PPEvilChoices","GLOBAL",1)
GlobalLT("PPEvilChoices","GLOBAL",4)~ THEN ~I can't imagine taking on so much power would be easy... and I can't say I'm not worried about what it might do to you. But I hope I'll be able to remember you always as a strong leader, and a friend.~
== C0AUR25J IF ~GlobalGT("PPEvilChoices","GLOBAL",3)
GlobalLT("PPEvilChoices","GLOBAL",6)~ THEN ~I know it's absolutely tempting, and I can't tell you that you shouldn't take it... but I'm worried about how so much power, once used for evil, might affect you. I'd prefer to always remember you as a person, no matter what.~
END

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraSolarPers","GLOBAL",0)~ DO ~SetGlobal("C0AuraSolarPers","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarPers
END

CHAIN C0AUR25J C0AuraSolarPers
~I... I'm not ready for this moment after all. But... I'm glad you have a choice, at least. It's fairer to you, and for me... I can still hold onto a little bit of hope, as selfish as it is. Even if it's only a little bit.~
END
++ ~What do you want me to do, Aura?~ EXTERN C0AUR25J C0AuraSolarPers1.1
++ ~I'm not going to leave you behind, Aura. I love you.~ EXTERN C0AUR25J C0AuraSolarPers1.2
++ ~This isn't a choice, Aura. I feel I have to accept this power, no matter what. I'm sorry.~ EXTERN C0AUR25J C0AuraSolarPers1.3
++ ~Please don't cry. This is difficult enough as it is.~ EXTERN C0AUR25J C0AuraSolarPers1.4
++ ~I don't know what decision I should make.~ EXTERN C0AUR25J C0AuraSolarPers1.1

CHAIN C0AUR25J C0AuraSolarPers1.1
~I can't make this choice for you, <CHARNAME>. I promised I'd support you no matter what you chose, as long as you think it's the right one..~
EXTERN C0AUR25J C0AuraSolarPers1.5

CHAIN C0AUR25J C0AuraSolarPers1.2
~I know you care about me that much, <CHARNAME>. But... hehe, as a responsible Lantanna, I still have to look at both sides of the situation, as much as I don't want to, right?~
EXTERN C0AUR25J C0AuraSolarPers1.5

CHAIN C0AUR25J C0AuraSolarPers1.3
~There's nothing you need to apologize for, <CHARNAME>, not ever. I've been preparing myself for this all along, and even though I failed... I still want you to make the right choice regardless.~
EXTERN C0AUR25J C0AuraSolarPers1.5

CHAIN C0AUR25J C0AuraSolarPers1.4
~I... I won't. I'll try not to. It's hard, but I've gone through that difficult part already. Right now, I just want to encourage you to do what you think is right.~
EXTERN C0AUR25J C0AuraSolarPers1.5

CHAIN C0AUR25J C0AuraSolarPers1.5
~Of course I want you to stay. If I had a wish for anything I wanted, I'd choose for us to be together forever. But what's in your hands right now is me... and what could be the rest of the multiverse. I can't compare to that.~
= ~This is your choice, and your responsibility, <CHARNAME>. I can't think of anyone better for this place you're given, and maybe it'd be wrong not to take it. I don't know... I'm a simple mortal, and I'll always be. You're different. You're incredible, beautiful, strong...~
= ~I've become more than I ever thought I'd be thanks to you. I can be strong too. At least right now, for you... if you think it's right to take this power, if you think you could do something great with it, then you should. I'll support you like I always have.~
= ~But if there's any chance... even the tiniest one... that we walk way from this together, side by side... I'll do everything I can to make sure you never regret it. Not in an infinite number of lifetimes.~
= ~That's all I have. I–if I think any harder, I'll probably break down again... and that'll ruin everything, wouldn't it? It's time to choose, <CHARNAME>... but until you have, let me hold your hand.~
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("CC0AuraSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0AuraSolarLeave","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("CC0AuraSolarLeave","GLOBAL",0)~ DO ~SetGlobal("C0SireneSolarLeave","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("CC0AuraSolarLeave","GLOBAL",0)~ DO ~SetGlobal("CC0AuraSolarLeave","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarLeave
END

CHAIN C0AUR25J C0AuraSolarLeave
~Oh...~
= ~I... I accepted this. I promised...~
= ~<CHARNAME>, I—I love you! I'll never forget you! And... one day, someday... we'll meet again. I'm sure of it!~
= ~Goodbye...~
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2) Global("C0AuraSolarStay","GLOBAL",0)~ DO ~SetGlobal("C0AuraSolarStay","GLOBAL",1)~ EXTERN C0AUR25J C0AuraSolarStay
END

CHAIN C0AUR25J C0AuraSolarStay
~<CHARNAME>, you... is this real? Did I really hear correctly? Why would you...~
END
++ ~You think too hard, my cute little scholar. I did what my heart wanted.~ EXTERN C0AUR25J C0AuraSolarStay.1
++ ~Told you that you could believe in me.~ EXTERN C0AUR25J C0AuraSolarStay.1
++ ~All the power of all the gods wouldn't be worth breaking your heart.~ EXTERN C0AUR25J C0AuraSolarStay.1

CHAIN C0AUR25J C0AuraSolarStay.1
~I—wow, this is... I mean, I dreamed of this, I *wanted* this, but still—~
= ~Oh, why am I even trying to argue at this point? I'm the happiest gnome to have ever lived right now! I'll accept no debate on that!~
= ~We're going to see all those things that we never had a chance to... haha... hahaha! If I could, I'd be launching fireworks into the sky to celebrate right now, with how excited I am!~
= ~Ah... or I could just hold you right now. Yep, there really is nothing better...~
END
COPY_TRANS FINSOL01 32

// Saemon

I_C_T AMSAEMON 6 C0AuraAMSAEMON6
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~*sigh* Aaaah... what else can I do at this point besides shake my head?~
END

EXTEND_BOTTOM SARPROVM 0
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2)~ EXTERN C0AUR25J C0AuraSaradushVampire
END

CHAIN C0AUR25J C0AuraSaradushVampire
~Somethign about this doesn't sit right with me, <CHARNAME>... this person seems to know something important, so maybe you should follow him. But be careful... I feel a chill running down my spine. I won't be far behind you, just in case.~
EXTERN SARPROVM 1

// Saradush

I_C_T2 SARTHF1 12 C0AuraSARTHF112
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Oh no. No no no no no no no, DON'T. Don't do it... EEP!~
END

// Sarevok

I_C_T SAREV25A 0 C0AuraSarevokToB
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Oh dear. I didn't have this on the checklist of unexpected nasty surprises.~
END

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #1
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !Global("C0AuraRomanceActive","GLOBAL",2)~ + ~Tell me about Aura.~ + C0AuraVoloBio
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraRomanceActive","GLOBAL",2)~ + ~Tell me about Aura.~ + C0AuraVoloBioRom
END

CHAIN SARVOLO C0AuraVoloBio
~Proving that a creative mind is a worthy match for any sword, Aurelia Glimmershine's unmatched talent with both technology and thaumaturgy has truly made her one of <CHARNAME>'s most valued companions, as well as one of the greatest minds ever to come from Lantan.~
END
IF ~~ EXTERN SARVOLO 9
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ EXTERN C0AUR25J C0AuraVoloBioReact

CHAIN SARVOLO C0AuraVoloBioRom
~From Lantan to Kozakura to Amn, Aurelia Glimmershine has wandered the face of Faerun in search for knowledge, and yet her most valuable discovery has surely been the companionship and love developed between herself and the lovely <CHARNAME>.~
END
IF ~~ EXTERN SARVOLO 9
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ EXTERN C0AUR25J C0AuraVoloBioReact

CHAIN C0AUR25J C0AuraVoloBioReact
~Ooh, I get to be in one of master Volo's books! I'm not dreaming, am I? Please tell me I'm not dreaming!~
EXTERN SARVOLO 9

// Watcher's Keep

EXTEND_BOTTOM GORLUM2 0
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN C0AUR25J aura-lum
END

EXTEND_BOTTOM GORLUM2 0
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN C0AURA2J aura-lum
END

CHAIN C0AUR25J aura-lum
~Well, this sure is a strange bundle of fun, isn't it? 'Mad' is definitely the way I'd describe it, with its complete lack of regard for design consistency, intuitiveness, or even basic safety.~
END
  ++ ~Can you make heads or tails of this thing, Aura?~ + aura-lum-1

CHAIN C0AURA2J aura-lum
~Well, this sure is a strange bundle of fun, isn't it? 'Mad' is definitely the way I'd describe it, with its complete lack of regard for design consistency, intuitiveness, or even basic safety.~
END
  ++ ~Can you make heads or tails of this thing, Aura?~ + aura-lum-1

CHAIN C0AUR25J aura-lum-1
~Umm...~
== C0AUR25J ~...Hmm.~
== C0AUR25J ~*sigh* To be honest, I'm not sure I even want to touch this thing, let alone try to get into the framework of it. I probably wouldn't come back out quite the same.~
== C0AUR25J ~I think I have an idea of what those crazy notes we've been seeing around the place might mean now, though... tell you what, even though my common sense is telling me we shouldn't even be thinking about playing with this machine, I can try to decipher some of the combinations in the notes to have a clue on what they might do.~
== C0AUR25J ~Assuming you haven't already thrown them away for scrap, that is.~
EXTERN GORLUM2 1

CHAIN C0AURA2J aura-lum-1
~Umm...~
== C0AURA2J ~...Hmm.~
== C0AURA2J ~*sigh* To be honest, I'm not sure I even want to touch this thing, let alone try to get into the framework of it. I probably wouldn't come back out quite the same.~
== C0AURA2J ~I think I have an idea of what those crazy notes we've been seeing around the place might mean now, though... tell you what, even though my common sense is telling me we shouldn't even be thinking about playing with this machine, I can try to decipher some of the combinations in the notes to have a clue on what they might do.~
== C0AURA2J ~Assuming you haven't already thrown them away for scrap, that is.~
EXTERN GORLUM2 1

EXTEND_TOP GORLUM2 2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("C0AuraWKLum","GLOBAL",0)
OR(8)
PartyHasItem("LUM1")
PartyHasItem("LUM2")
PartyHasItem("LUM3")
PartyHasItem("LUM4")
PartyHasItem("LUM5")
PartyHasItem("LUM6")
PartyHasItem("LUM7")
PartyHasItem("LUM8")~ + ~Ask Aura to decipher the combinations of the notes.~ EXTERN C0AUR25J aura-lum-2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("C0AuraWKLum","GLOBAL",0)
OR(8)
PartyHasItem("LUM1")
PartyHasItem("LUM2")
PartyHasItem("LUM3")
PartyHasItem("LUM4")
PartyHasItem("LUM5")
PartyHasItem("LUM6")
PartyHasItem("LUM7")
PartyHasItem("LUM8")~ + ~Ask Aura to decipher the combinations of the notes.~ EXTERN C0AURA2J aura-lum-2
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) Global("C0AuraWKLum","GLOBAL",1)
OR(8)
PartyHasItem("LUM1")
PartyHasItem("LUM2")
PartyHasItem("LUM3")
PartyHasItem("LUM4")
PartyHasItem("LUM5")
PartyHasItem("LUM6")
PartyHasItem("LUM7")
PartyHasItem("LUM8")~ + ~Use the combinations deciphered by Aura.~ EXTERN GORLUM2 aura-lum-3
END

CHAIN C0AUR25J aura-lum-2
~Hmm, let's see here... mimble, mumble... mmm, and then...~
DO ~SetGlobal("C0AuraWKLum","GLOBAL",1)~
== C0AUR25J ~Here you go!~
EXTERN GORLUM2 aura-lum-3

CHAIN C0AURA2J aura-lum-2
~Hmm, let's see here... mimble, mumble... mmm, and then...~
DO ~SetGlobal("C0AuraWKLum","GLOBAL",1)~
== C0AURA2J ~Here you go!~
EXTERN GORLUM2 aura-lum-3

CHAIN GORLUM2 aura-lum-3
~What combination will you use?~
END
 + ~Global("STR","GLOBAL",0)
 PartyHasItem("LUM1")~ + ~Pull the short lever, medium lever, then push the square button for 'big muscles'.~ DO ~SetGlobal("square","GLOBAL",1)
SetGlobal("short","GLOBAL",1)
SetGlobal("medium","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("DEX","GLOBAL",0)
 PartyHasItem("LUM7")~ + ~Pull the short lever, turn the blue dial, then push the square button to become 'quick and nimble' (But hopefully not shorter...)~ DO ~SetGlobal("square","GLOBAL",1)
SetGlobal("blue","GLOBAL",1)
SetGlobal("short","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("CON","GLOBAL",0)
 PartyHasItem("LUM2")~ + ~Pull the long lever, turn the red dial, then push the circular button to 'be a tough guy'.~ DO ~SetGlobal("circle","GLOBAL",1)
SetGlobal("red","GLOBAL",1)
SetGlobal("long","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("INT","GLOBAL",0)
 PartyHasItem("LUM8")~ + ~Pull the long lever, push the circular button, then turn the blue dial if you're a 'smartypants'.~ DO ~SetGlobal("circle","GLOBAL",1)
SetGlobal("blue","GLOBAL",1)
SetGlobal("long","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("WIS","GLOBAL",0)
 PartyHasItem("LUM5")~ + ~Obey the 'words of the wise' and push the circular, square and triangular buttons.~ DO ~SetGlobal("circle","GLOBAL",1)
SetGlobal("square","GLOBAL",1)
SetGlobal("triangle","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("CHA","GLOBAL",0)
 PartyHasItem("LUM6")~ + ~Pull the short lever, then turn the red and green dials to prove you're a 'beautiful person'.~ DO ~SetGlobal("red","GLOBAL",1)
SetGlobal("green","GLOBAL",1)
SetGlobal("short","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("ITEM","GLOBAL",0)
 PartyHasItem("LUM3")~ + ~Pull the medium lever, turn the green dial, then push the triangular button to summon the 'storm'.~ DO ~SetGlobal("triangle","GLOBAL",1)
SetGlobal("green","GLOBAL",1)
SetGlobal("medium","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("PermMR","GLOBAL",0)
 PartyHasItem("LUM4")~ + ~Pull the long lever, then turn the blue and green dials to 'stop the magic'.~ DO ~SetGlobal("long","GLOBAL",1)
SetGlobal("blue","GLOBAL",1)
SetGlobal("green","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 + ~Global("stairbutton","GLOBAL",0)
 PartyHasItem("PLOT04J")~ + ~Push the triangular button, turn the red dial, then pull the medium lever. (So we can get the Hel—*hastily scratched out*—heck out of here already!)~ DO ~SetGlobal("triangle","GLOBAL",1)
SetGlobal("red","GLOBAL",1)
SetGlobal("medium","GLOBAL",1)~ EXTERN GORLUM2 aura-lum-4
 ++ ~Leave the machine alone for now.~ EXTERN GORLUM2 7

CHAIN GORLUM2 aura-lum-4
~You follow the instructions tentatively...~
EXTERN GORLUM2 5

EXTEND_BOTTOM DOMT 19
IF ~Kit(LastTalkedToBy,C0AURA)~ EXTERN DOMT 32
END

I_C_T DOMT 2 C0AuraDeckOfManyThings
== C0AUR25J IF ~IsGabber("C0Aura") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*breathes* Okay, here goes nothing... wish me luck.~
END

I_C_T DOMT 3 C0AuraDeckOfManyThings
== C0AUR25J IF ~IsGabber("C0Aura")GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*breathes* Okay, here goes nothing... wish me luck.~
END

I_C_T DOMT 4 C0AuraDeckOfManyThings
== C0AUR25J IF ~IsGabber("C0Aura") GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*breathes* Okay, here goes nothing... wish me luck.~
END

I_C_T DOMT 2 C0AuraDeckOfManyThings
== C0AURA2J IF ~IsGabber("C0Aura") !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*breathes* Okay, here goes nothing... wish me luck.~
END

I_C_T DOMT 3 C0AuraDeckOfManyThings
== C0AURA2J IF ~IsGabber("C0Aura") !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*breathes* Okay, here goes nothing... wish me luck.~
END

I_C_T DOMT 4 C0AuraDeckOfManyThings
== C0AURA2J IF ~IsGabber("C0Aura") !GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~*breathes* Okay, here goes nothing... wish me luck.~
END

I_C_T GORAPR 10 C0AuraGORAPR10
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~That's terrible! Magical artifacts should never be abused, or nothing but disaster will come of it.~
END

I_C_T GORAPR 10 C0AuraGORAPR10
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~That's terrible! Magical artifacts should never be abused, or nothing but disaster will come of it.~
END

I_C_T GORCHR 6 C0AuraGORCHR6
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Uh, <CHARNAME>, I'm not an advocate for fanaticism by any means, but don't you think the reasonable move would be to... not... trust the big, scary, transforming demon in a cage?~
END

I_C_T GORCHR 6 C0AuraGORCHR6
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~Uh, <CHARNAME>, I'm not an advocate for fanaticism by any means, but don't you think the reasonable move would be to... not... trust the big, scary, transforming demon in a cage?~
END

I_C_T FSRIDD 1 C0AuraFSRIDD1
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Be careful, <CHARNAME>. These kinds of tests always come with a heavy risk... if you need any sort of help, just ask, okay?~
END

I_C_T FSRIDD 1 C0AuraFSRIDD1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~Be careful, <CHARNAME>. These kinds of tests always come with a heavy risk... if you need any sort of help, just ask, okay?~
END

EXTEND_BOTTOM FSRIDD 3
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ + ~Help me, Aura!~ EXTERN C0AUR25J watch.imp.riddle
+ ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ + ~Help me, Aura!~ EXTERN C0AURA2J watch.imp.riddle
END

CHAIN C0AUR25J watch.imp.riddle
~Well... let me think... it'd only make sense if this imp was female, so the answer would have to be... seven?~
EXTERN FSRIDD watch.imp.riddle.1

CHAIN C0AURA2J watch.imp.riddle
~Well... let me think... it'd only make sense if this imp was female, so the answer would have to be... seven?~
EXTERN FSRIDD watch.imp.riddle.1

EXTEND_BOTTOM FSRIDD 4
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ EXTERN C0AUR25J watch.imp.riddle.2
IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ EXTERN C0AURA2J watch.imp.riddle.2
END

CHAIN FSRIDD watch.imp.riddle.1
~Bah. I should've added a pre-emptive clause that only the leader may answer. Regardless...~
EXTERN FSRIDD 6

CHAIN C0AUR25J watch.imp.riddle.2
~Hang on, <CHARNAME>, I think I got it. It's seven... isn't it?~
EXTERN FSRIDD watch.imp.riddle.1

CHAIN C0AURA2J watch.imp.riddle.2
~Hang on, <CHARNAME>, I think I got it. It's seven... isn't it?~
EXTERN FSRIDD watch.imp.riddle.1

INTERJECT GORMAD1 8 C0AuraGORMAD18
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~What a terrible state of mind to be in...! Calm down and look at me, you poor, odd fellow. Do I look like a demon? Can a demon make a cute smile like this?~
EXTERN GORMAD1 11

INTERJECT GORMAD1 8 C0AuraGORMAD18
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~What a terrible state of mind to be in...! Calm down and look at me, you poor, odd fellow. Do I look like a demon? Can a demon make a cute smile like this?~
EXTERN GORMAD1 11

INTERJECT JAN25J 13 C0AuraJAN25J13
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Uh, Jan! Really not the time, y'know?!~
EXTERN JAN25J 13

INTERJECT JANJ 187 C0AuraJAN25J13
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~Uh, Jan! Really not the time, y'know?!~
EXTERN JANJ 188

I_C_T GORODR1 35 C0AuraGORODR135
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~And that makes it RIGHT to send someone else to sacrifice themselves without even knowing what would happen?!~
END

I_C_T GORODR1 35 C0AuraGORODR135
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~And that makes it RIGHT to send someone else to sacrifice themselves without even knowing what would happen?!~
END

I_C_T GORDEMO 1 C0AuraGORDEMO1
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~I... I felt something. I thought it was my heartbeat, but... it's my magatama. It's responding to a presence. Something is here... powerful, ancient... maybe even beyond comprehension. Be careful, <CHARNAME>.~
END

I_C_T GORDEMO 1 C0AuraGORDEMO1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN  ~I... I felt something. I thought it was my heartbeat, but... it's my magatama. It's responding to a presence. Something is here... powerful, ancient... maybe even beyond comprehension. Be careful, <CHARNAME>.~
END

I_C_T GORCAMB 17 C0AuraGORCAMB17
== C0AUR25J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN ~Y–you have a deck of many things?! That's terrifying! But, also fascinating... hmm, I know we shouldn't, but it's a once in a lifetime opportunity... often literally...~
END

I_C_T GORCAMB 17 C0AuraGORCAMB17
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN ~Y–you have a deck of many things?! That's terrifying! But, also fascinating... hmm, I know we shouldn't, but it's a once in a lifetime opportunity... often literally...~
END

// Talks

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBPocketPlane","GLOBAL",1)~ THEN C0AUR25J tob-pocketplane
~So... I guess this is going to be our home of sorts from now on, huh? It's... nice?~ [C0BLANK]
DO ~SetGlobal("C0AuraToBPocketPlane","GLOBAL",2)~
END
++ ~It really isn't, but points for trying.~ + tob-pocketplane-1
++ ~Things could certainly be more cosy and pleasant to look at. Got any ideas?~ + tob-pocketplane-1
++ ~Don't waste time on small talk. We'll only be here for as long as we need to.~ + tob-pocketplane-2

CHAIN C0AUR25J tob-pocketplane-1
~I wish I could say some nicer things about it, but... um, my head is a blank. Although I guess it does show how little fazes me anymore. I'd be running away screaming if this were the old days.~
EXTERN C0AUR25J tob-pocketplane-3

CHAIN C0AUR25J tob-pocketplane-2
~Hang on, hang on, I'm getting to the point. Sheesh, even in your home we still don't get to put our feet up for a while.~
EXTERN C0AUR25J tob-pocketplane-3

CHAIN C0AUR25J tob-pocketplane-3
~Anyways, I was going to say that even though this place isn't pretty, it's at least spacious and pretty secure, so I think I might be able to do my usual maintenance on my automaton here like I could at my workshop.~
= ~If we find any more components to improve its functions, we can just come back here and I'll make some space for myself to do my work. It'll be a bit more convenient than having to walk back to my old place, even if it's less comfortable.~
= ~Okay, that's it. Can we get moving? Even if I can keep my nerves under control in this place, that doesn't mean I like looking at it.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBBowstring","GLOBAL",1)~ THEN C0AUR25J tob-bowstring
~This... this is the Bowstring of Gond! The Wonderbringer himself gifted it to us Lantanna during the Time of Troubles in return for our hospitality. I've... I've seen its depiction before, but I never thought I'd be able to hold it with my own hands!~ [C0BLANK]
DO ~SetGlobal("C0AuraToBBowstring","GLOBAL",2)~
END
  ++ ~What could it be doing in the hands of the drow?~ + tob-bowstring-1
  ++ ~You seem quite excited. What is it good for?~ + tob-bowstring-2
  ++ ~Just another trinket. Pack it away with the rest.~ + tob-bowstring-3

CHAIN C0AUR25J tob-bowstring-1
~...~
= ~I've overheard my uncle speaking with my father in the past. Some Lantanna have suspicions that past cases of our people losing their lives outside of the homeland are more than just accidents. I don't like to think about it.~
EXTERN C0AUR25J tob-bowstring-2

CHAIN C0AUR25J tob-bowstring-2
~This is a divine artifact, <CHARNAME>, designed to imbue any bow or crossbow it's strung to with incredible power. Even the most powerful bow could still become even more so with the Bowstring of Gond... or that's what the Gondar church have said.~
== C0AUR25J ~I wonder... if I could use it to further improve on the Sunshooter...~
== C0AUR25J IF ~PartyHasItem("c0aubo6")~ THEN ~I thought that I had perfected the design already. But with the Bowstring of Gond, maybe there's still another step to advance. I could hardly compare to the ability of our patron god, after all.~
== C0AUR25J IF ~!PartyHasItem("c0aubo6")~ THEN ~I'll leave that thought for another time. I'm sure the bowstring could make it far more advanced than I could imagine, but first... I want to see how much progress I can make with my own ability. Maybe when I've reached my own limit, I can think about using this.~
== C0AUR25J ~Of course, this could be used for more than just my own bow, <CHARNAME>. If you have something in mind for it, I'm happy to let you decide how it should be used.~
== C0AUR25J IF ~PartyHasItem("c0aubo6")~ THEN ~But if you'll allow it... I would like to see just what miracles occur when the Wonderbringer's creation is combined with my own.~
EXIT

CHAIN C0AUR25J tob-bowstring-3
~No, wait, before we do...~
EXTERN C0AUR25J tob-bowstring-2

CHAIN IF WEIGHT #-1 ~Global("C0AuraToBBowstring","GLOBAL",3)~ THEN C0AUR25J tob-bowstring2
~It's... it's beautiful.~ [C0BLANK]
DO ~SetGlobal("C0AuraToBBowstring","GLOBAL",4)~
== C0AUR25J ~Feels a little strange to be saying it about my own work, but... I can feel the harmony of magic and artifice within the metal itself. It's hard to explain it.~
== C0AUR25J ~My uncle would be proud of me... if he could see it. It might be too soon to say it, for how young I am, but I might just consider this my magnum opus.~
== C0AUR25J ~Let's go, <CHARNAME>. I still have to try it out in practice before I can truly claim something that bold.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraPerfectSunshooter","GLOBAL",1)~ THEN C0AUR25J C0AuraSunshooter
~Well, that's it. After all this time, it's finally done... the Perfect Sunshooter. I never thought I'd see the day.~ [C0BLANK]
DO ~SetGlobal("C0AuraPerfectSunshooter","GLOBAL",2)~
== C0AUR25J ~I feel like I should be happier, but all I can think of is how much fighting we've gone through to push me into completing it. I feel guilty. Both for everything I've put this bow through, and for not admiring it like it deserves.~
END
  ++ ~It's incredible. You should be proud of what you've made.~ + C0AuraSunshooter-1
  ++ ~A weapon is used as its wielder decides. As long as you know what's right, you shouldn't be ashamed of carrying that bow.~ + C0AuraSunshooter-2
  ++ ~Since it means you'll be more useful, I'm satisfied.~ + C0AuraSunshooter-0

CHAIN C0AUR25J C0AuraSunshooter-0
~Yes, I guess I should be satisfied too. Let's go, <CHARNAME>. I should give it a test as soon as possible.~
EXIT

CHAIN C0AUR25J C0AuraSunshooter-1
~I am. The first weapon I ever had a part in making with my own hands, and up to now, it's never left my side. ~
EXTERN C0AUR25J C0AuraSunshooter-3

CHAIN C0AUR25J C0AuraSunshooter-2
~I'm not ashamed. I know that the path we've taken is the best that we've made it. And I wouldn't be ashamed of this bow. Not after everything it's done for me.~
EXTERN C0AUR25J C0AuraSunshooter-3

CHAIN C0AUR25J C0AuraSunshooter-3
~I just thought the day Uncle Dedalus first showed me the completed work... I was so innocent back then, I couldn't even imagine it being covered in blood.~
= ~Strangely, even though I knew I'd use it for battles that I'd hate, I never thought of a day where I'd actually put it down. It's like a partner to me now... and that's why I've worked hard to make it the best it could possibly be.~
= ~And even though I'm not excited, I'm... still glad. If it means I can do more for you, then it's a good thing I've succeeded. It may be the whole reason why I was motivated to perfect it at all.~
= ~I think you deserve some of the credit for the creation of the Perfect Sunshooter, don't you think, <CHARNAME>? Hehe.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraAbazigalWater","GLOBAL",1)~ THEN C0AUR25J C0AuraAbazigalWater
~...~ [C0BLANK]
DO ~SetGlobal("C0AuraAbazigalWater","GLOBAL",2)~
== C0AUR25J ~We'll have to... go through the water?~
END
  ++ ~I'm sorry. But it seems to be our only option.~ + C0AuraAbazigalWater.1
  ++ ~Unless you're skilled enough to pick open those gates, yes.~ + C0AuraAbazigalWater.1
  ++ ~You can stay here if you like. Or I can send you back to the pocket plane.~ + C0AuraAbazigalWater.2

CHAIN C0AUR25J C0AuraAbazigalWater.1
~*sigh* Just can't get away from it no matter how hard I try, can I...~
EXTERN C0AUR25J C0AuraAbazigalWater.2

CHAIN C0AUR25J C0AuraAbazigalWater.2
~...No, no. I'm fine. I can do this. I've gotten this far.~
= ~Besides, I'd much rather deal with this than not knowing what might happen to you on the other side. Just... don't get too far ahead of me, okay? Worst case scenario, I just might need you to pull me out...~
EXIT
