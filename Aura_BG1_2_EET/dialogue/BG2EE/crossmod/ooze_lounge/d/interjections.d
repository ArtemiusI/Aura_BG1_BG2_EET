INTERJECT L#NSCLE 5 C0AuraL#NSAMA5
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Juiblex, that's a demon! The tomes call him the patron of slimes. I've never heard of a gnome worshipper though!~
EXTERN L#NSCLE 6

I_C_T L#NSCHIL 2 C0AuraL#NSCHIL2
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Wow, it really is quite cozy. It doesn't even smell.~
END

I_C_T L#NSBEH 10 C0AuraL#NSBEH10
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~You know, he has a point. That was kinda an insensitive thing to ask, <CHARNAME>.~
END

I_C_T L#NSNYM 0 C0AuraL#NSNYM2
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Nym...? That name sounds familiar...~
== L#NSNYM ~Perhaps it should. You are Aurelia Glimmershine, are you not? Yes, your resemblance to your grandmother is stunning.~
== C0AURA2J ~You... you know my grandmother Minerva? That's right... I remember now. She wrote about you in her book. You were at Dorn's Deep.~
== L#NSNYM ~That is correct, and though I understand I was not written of in particularly flattering terms, I hope you possess enough wisdom to separate fact from fiction. No matter what the few stories with my name tell of me, I am nothing more than a humble merchant.~
== C0AURA2J ~...~
== C0AURA2J ~Do you know—~
== L#NSNYM ~If you seek to learn your grandmother's whereabouts, I fear I lack that knowledge. I would certainly offer it for a price, if I did. We were mere acquaintances, nothing more. And my presence here is purely for business.~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraOLBasilisks","GLOBAL",1)~ THEN C0AURA2J AURA-BASILISK
~Eep, basilisk tracks. That's nasty.~ [C0BLANK]
DO ~SetGlobal("C0AuraOLBasilisks","GLOBAL",2)~
== C0AURA2J IF ~HasItemEquiped("c0auiden",Myself)~ THEN ~It's okay, though. My goggles have one-way reflective lenses. I'd have no problem dealing with basilisks with these on... as long as they don't run up and bite me, anyway.~
== C0AURA2J IF ~HasItem("c0auiden",Myself) !HasItemEquiped("c0auiden",Myself)~ THEN ~It's okay, though. Remember how my goggles have one-way reflective lenses? Those come in handy at times like these.~
== C0AURA2J IF ~!HasItem("c0auiden",Myself)~ THEN ~Now, that's weird. What did I do with my goggles...?~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AuraOLLightpiercer","GLOBAL",1)~ THEN C0AURA2J AURA-LIGHTPIERCER
~Oooohhh... this arrow is amazing! Its magical energies are just radiating from it like a star!~ [C0BLANK]
DO ~SetGlobal("C0AuraOLLightpiercer","GLOBAL",2)~
== C0AURA2J ~Can I... can I use it? Pleeease?~
END
  ++ ~By all means. I'm sure it'll be a good fit for that bow you use.~ + AURA-LIGHTPIERCER-1
  ++ ~Fine. Just don't get careless with it!~ + AURA-LIGHTPIERCER-1
  ++ ~No, I've got my own plans for this thing.~ + AURA-LIGHTPIERCER-2

CHAIN C0AURA2J AURA-LIGHTPIERCER-1
~Yes! Oh, this is going to be so exciting!~
DO ~TakePartyItem("L#NSARR") XEquipItem("L#NSARR",Myself,SLOT_AMMO0,EQUIP)~ EXIT

CHAIN C0AURA2J AURA-LIGHTPIERCER-2
~Aww...~
EXIT