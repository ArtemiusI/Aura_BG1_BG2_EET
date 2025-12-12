I_C_T L#NDAMA 12 C0AuraL#NDAMA12
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~I'm glad you could help her, <CHARNAME>. This isn't just charity... it's saving two lives. It's horrible to imagine someone having to live like this.~
END

I_C_T2 L#NDANT 0 C0AuraL#NDANT0
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Whoa! Now that's a rodent of unusual size!~
END

I_C_T L#NDCAT 0 C0AuraL#NDCAT0
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Oh, kitty! C'mere, kitty!~
== L#NDCAT ~*sniffs* This one smells like she keeps cats. Yes, I think I like her. Meow.~
== C0AURA2J ~*pat pat*~
== L#NDCAT ~Oh, that's nice... behind my left ear, scratch it right there... *purr*~
== C0AURA2J ~Don't mind me, <CHARNAME>. Weren't you going to say something?~
== L#NDCAT ~Yes, go ahead and speak, <PRO_RACE>... meow.~
END

I_C_T L#NDMAI 4 C0AuraL#NDMAI4
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~A parasite that lives through text? The stuff of nightmares...~
END

I_C_T L#NDMAI 62 C0AuraL#NDMAI62
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura")~ THEN ~Ooh, dibs on the book!~
END

INTERJECT L#NDNIB 0 C0AuraL#NDNIB0
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura") Global("C0AuraKnowsBG1","GLOBAL",1)~ THEN ~Nib? Charleston Nib! The historian from the Sword Coast? I read the publication of your research material last month!~
EXTERN L#NDNIB 1

I_C_T2 L#NDNIB 14 C0AuraL#NDNIB14
== C0AURA2J IF ~IsValidForPartyDialog("C0Aura") Global("C0AuraImportItem4","GLOBAL",1)~ THEN ~*tap* *tap* Wow, it's back to its dormant state. Didn't I take a lightning bolt to the head reactivating this thing? Oh well... it'd be great if we could un-curse it for good.~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraSEParasite","GLOBAL",1)~ THEN C0AURA2J AURA-PARASITE
~Huh, wow. So this is supposed to be a piece of the parasite?~ [C0BLANK]
DO ~SetGlobal("C0AuraSEParasite","GLOBAL",2)~
= ~You know, <CHARNAME>, I usually get a good feeling from books, but this... I'd believe it if you told me it was evil. I'm getting goosebumps just looking at it.~
EXIT