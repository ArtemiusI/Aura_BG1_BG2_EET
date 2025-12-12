I_C_T O#ROSLIN 14 C0AuraBackBrynnlaw1
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~Another sea venture? And back to that horrible asylum, no less? Well... it's been so many trips, so what's one more? Besides, I've gone through far worse at this point.~
END

I_C_T O#SION 6 C0AuraBackBrynnlaw2
== C0AURA2J IF ~InParty("C0Aura") InMyArea("C0Aura") !StateCheck("C0Aura",CD_STATE_NOTVALID)~ THEN ~I think I've heard this tale before... where was it? Oh, yes! My grandmother's book, about the North.~
END

CHAIN IF WEIGHT #-1 ~Global("C0AuraImoenCrossmodBrynnlaw","GLOBAL",1)~ THEN BC0AURA2 C0AuraImoenSpellhold
~Imoen?~ [C0BLANK]
DO ~SetGlobal("C0AuraImoenCrossmodBrynnlaw","GLOBAL",2)~
== BIMOEN2 ~Yep? What's up?~
== BC0AURA2 ~Do you need a hug?~
== BIMOEN2 ~Aw, you're worried about me. That's sweet, but I'll be okay. Though I might ask for one if you'll also let me squeeze your cheeks...~
== BC0AURA2 ~Come on. Be serious.~
== BIMOEN2 ~Alright, alright.~
== BIMOEN2 ~I'm not going to put up a brave face and say it doesn't hurt. This really sucks. I won't pretend it doesn't. But I thought it might be worse. I was afraid my legs would give out on me the moment I stepped in here again.~
== BIMOEN2 ~I guess I've gotten used to suffering. At least I won't have to face it alone. This time, I've got friends next to me. And I know I'm here to do the right thing.~
== BC0AURA2 ~As long as you're not forcing yourself. If I get the feeling like you're hiding pain behind that smile, Imoen, I'm going to make you sit down until I think you're alright.~
== BIMOEN2 ~Yeesh. That's harsh. I miss you being all meek and easy to push around sometimes. But this side of you is cute too.~
== BC0AURA2 ~Heehee...~
== BIMOEN2 ~I'll hold off on the hug for now. I'll feel like I've earned it once we're through here. But I'll hold your hand for a while.~
== BC0AURA2 ~Sure.~
EXIT
