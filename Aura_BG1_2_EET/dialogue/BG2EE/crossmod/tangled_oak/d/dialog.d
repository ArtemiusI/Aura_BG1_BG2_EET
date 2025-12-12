I_C_T L#NIDICC 6 C0AuraTangledOakDicca
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~That's horrible! But... hiding the truth was only ever going to make things worse for everyone, even you. How could you not realize that?~
END

I_C_T L#NIFINN 20 C0AuraTangledOakIllusion
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~An illusionary barrier... I thought something seemed off when we were there before.~
== C0AURA2J ~If I couldn't see through it right away, it must be rather powerful, but now that I know what to look for, I think I might be able to help with this, <CHARNAME>.~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraTangledOakTalk","GLOBAL",1)~ THEN C0AURA2J tangledoak
~So this is the Tangled Oak Isle...! Goodness, I've always wanted to visit, but I've never been able to make the time. It's such a wonderful place! And... rather nostalgic, too.~ [C0BLANK]
DO ~SetGlobal("C0AuraTangledOakTalk","GLOBAL",2)~
== C0AURA2J ~The design of the buildings and the general environment has its differences, of course, but it almost reminds me a little of Anchoril, with its proximity to the ocean and arcadian feel.~
END
  ++ ~I wonder how long that will last. There's a good chance it'll just look like any other part of Athkatla one day.~ EXTERN C0AURA2J tangledoak-1
  ++ ~There is a sort of pastoral appeal to it compared to the city's districts.~ EXTERN C0AURA2J tangledoak-2
  ++ ~Your home is a port town, isn't it? I imagine a lot of the sights here are familiar to you.~ EXTERN C0AURA2J tangledoak-3
  ++ ~We should look around. There's no sense talking about this place when we could just explore it.~ EXTERN C0AURA2J tangledoak-4

CHAIN C0AURA2J tangledoak-1
~Mmm, true. It'll be a shame if this place loses its unique beauty from future gentrification... at the same time, though, industrialization and growth isn't always a bad thing. I just hope it won't happen too quickly.~
EXTERN C0AURA2J tangledoak-5

CHAIN C0AURA2J tangledoak-2
~Hehe, you think so too? I hear it's hard to find places like this in Amn anymore. The few that are left have been well cared for by people who've lived there for generations, so they have a kind of appeal that's hard to replicate in the city.~
EXTERN C0AURA2J tangledoak-5

CHAIN C0AURA2J tangledoak-3
~Oh, yes. The colours and structure are completely different, of course, but Anchoril has always prided itself on its culture of fishing and tea cultivation. Though you'll see many more people than here, since it is also the center of trade for Lantan.~
EXTERN C0AURA2J tangledoak-5

CHAIN C0AURA2J tangledoak-4
~Good point. Let's not get too hasty with it though. I want to take my time while enjoying the sights, if I can.~
EXIT

CHAIN C0AURA2J tangledoak-5
~*sigh* You know, if I was an Amnian, this is the sort of place I'd like to live... or so I'd think. I doubt this place will be the close to the same in ten, maybe even five years. It's a good thing we came now, huh?~
= ~Let's take a look around, <CHARNAME>. I'd love to see just what kind of place the Tangled Oak Isle really is in our current time.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraTangledOakIllusionCheck","GLOBAL",1)~ THEN C0AURA2J tangledoak-illusion
~Okay, this place is where something seems off... this is a very tricky illusion to be sure, but if I just focus, I know I can...~ [C0BLANK]
DO ~SetGlobal("C0AuraTangledOakIllusionCheck","GLOBAL",2)
        PlaySound("ACT_09")
        Unlock("SECRET01")
        OpenDoor("SECRET01")
        ActionOverride("L#NISCR",DestroySelf())
        SetGlobal("L#NIMainQuest","GLOBAL",24)~ EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraTangledOakIllusionCheck","GLOBAL",2)~ THEN C0AURA2J tangledoak-illusion-2
~Aha! I think I can pat myself on the back a little, don't you think?~ [C0BLANK]
DO ~SetGlobal("C0AuraTangledOakIllusionCheck","GLOBAL",3)~
END
  ++ ~Well done.~ + tangledoak-illusion-2-1
  + ~!Race(Player1,HALFLING) !Race(Player1,GNOME) !Race(Player1,DWARF)~ + ~(Pat her on the head)~ + tangledoak-illusion-2-2
  ++ ~Looks like you're good for something.~ + tangledoak-illusion-2-1

CHAIN C0AURA2J tangledoak-illusion-2-1
~We'd better be careful though... I have a feeling whatever magic is behind this illusion is much more powerful, and probably more real as well.~
EXIT

CHAIN C0AURA2J tangledoak-illusion-2-2
~H–hey! I said on the back, not the... okay, okay, heehee, it doesn't feel so bad, I guess.~
EXTERN C0AURA2J tangledoak-illusion-2-1