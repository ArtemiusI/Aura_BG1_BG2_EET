CHAIN
IF ~InParty("C0Sirene")
Range("C0Sirene",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
OR(10)
AreaCheck("C0AUR1")
AreaCheck("AR0020")
AreaCheck("AR0300")
AreaCheck("AR0400")
AreaCheck("AR0500")
AreaCheck("AR0500")
AreaCheck("AR0700")
AreaCheck("AR0800")
AreaCheck("AR0900")
AreaCheck("AR1000")
Global("C0AuraSireneBanter","GLOBAL",0)~ THEN BC0AURA2 banter1
~It can't be comfortable to for you to stay in this city, Sirene. Are you alright?~
DO ~SetGlobal("C0AuraSireneBanter","GLOBAL",1)~
== BC0SIRE2 ~I am no stranger to the scrutiny of others, and with the company of friends, 'tis more than bearable, Aura... thank you for your concern.~
== BC0AURA2 ~No, that's not what I mean. I'm thinking about... the city's spirit.~
== BC0SIRE2 ~Spirit?~
== BC0AURA2 ~When we pass by the poor, and the sick... those that need help, but are ignored by the people who should care... I've noticed how you react, every time.~
== BC0SIRE2 ~That, too, is something I have seen much of... and it is a much more difficult pain to overcome. I have seen inequality in every society, yet few worse than here... and it oft reminds me of how powerless I feel.~
== BC0AURA2 ~I feel just as awful as you do. We try our best, but it always feels like too little, too slowly... sometimes, it feels unfair to see how much it takes to accomplish real change.~
== BC0SIRE2 ~The only respite is in seeing the relief in each innocent whose life is brighened by our actions. I am no true knight, and have no ambitions of great deeds... only simple acts of kindness. But often, I wonder if there is more I...~
== BC0AURA2 ~Please don't think of overburdening yourself, Sirene. I want to help others, but I want to see your happiness just as much.~
EXIT

CHAIN
IF ~InParty("C0Sirene")
Range("C0Sirene",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("C0Sirene",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraSireneBanter","GLOBAL",1)~ THEN BC0SIRE2 banter2
~You look utterly exhausted, Aura. There are concerningly dark shadows under your eyes.~
DO ~SetGlobal("C0AuraSireneBanter","GLOBAL",2)~
== BC0AURA2 ~Oh... are they that obvious? I thought maybe a slightly different eye shadow might conceal them...~
== BC0SIRE2 ~Tell me you have not been neglecting sleep again. If you continue to work throughout the night without rest, I may have to directly intervene soon.~
== BC0AURA2 ~I, um... I've just been... working on new experiments...~
== BC0SIRE2 ~And sneaking away with your weapons afterwards, to practice alone while you believe nobody notices.~
== BC0AURA2 ~No, I—~
== BC0SIRE2 ~What are you hoping for, Aura? This is a recent development for you, and it is a most unhealthy one. I half-feared you might have been possessed.~
== BC0AURA2 ~That might not be off the mark... I might just be crazy. I wanted to try and become stronger, and less of a liability in battle...~
== BC0SIRE2 ~You are anything but a liability. Why think so now, of all times?~
== BC0AURA2 ~Because... because I don't want to see you taking blows for my sake anymore. I want to be as brave as you... or even half as much, at least.~
== BC0SIRE2 ~Aura... no. Please do not think that way. My path was chosen for others, and to ensure that they would never need to suffer such pains. The less who are forced to follow it, the better.~
== BC0AURA2 ~But—~
== BC0SIRE2 ~Please, enough.~
EXIT
