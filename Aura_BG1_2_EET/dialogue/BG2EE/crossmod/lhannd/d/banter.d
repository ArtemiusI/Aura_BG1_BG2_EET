CHAIN
IF ~InParty("L#LHA")
Range("L#LHA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#LHA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Lhannd","GLOBAL",0)~ THEN L#LHAB banter1
~You're not a noble, are you, Aura?~
DO ~SetGlobal("C0AuraL#Lhannd","GLOBAL",1)~
== BC0AURA2 ~No, I'm not. We Lantanna don't really have 'nobility' in the traditional sense... it's hard to explain what the equivalent would be in these lands.~
== L#LHAB ~I guess that's why I couldn't figure you out. You look well-off, but you don't have the typical noble gait or attitude... come to think of it, I don't think I've ever met a gnome noble before.~
== BC0AURA2 ~Ah, you'll find a few upper-class families in some of the cities farther north... I've met a few, but I could never get along much with them. They're a bit snooty for my taste.~
== L#LHAB ~Isn't that just the way your bog-standard noble is, though?~
== BC0AURA2 ~You'd be surprised. When you're too much for even other nobles to stand... well, there's a reason you don't see gnomish nobility at your typical party all too often.~
== L#LHAB ~Huh. Even more annoying than other nobles... I didn't think that was possible. Makes me appreciate the turnip peddlers we get around here a bit more.~
== BJAN IF ~InParty("JAN")~ THEN ~Hey! Are you implying that we turnip peddlers weren't worthy of appreciation before?~
== L#LHAB ~Sorry. I don't mean to generalize. After getting to know you, Aura, I'm starting to think I don't understand some groups as much as I thought.~
== BC0AURA2 ~Hehe, it's alright. You're self-aware enough to recognize it, Lhannd, and that's what matters.~
EXIT

CHAIN
IF ~InParty("L#LHA")
Range("L#LHA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#LHA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#Lhannd","GLOBAL",1)~ THEN L#LHAB banter2
~I don't think I've mentioned it before, Aura, but that is a *very* shiny bow. I have to look away when it catches the sunlight.~
DO ~SetGlobal("C0AuraL#Lhannd","GLOBAL",2)~
== BC0AURA2 ~The Sunshooter? It's my pride and joy. I don't normally like making weapons, but this one's an exception.~
== L#LHAB ~I'm just a little worried that it might reflect the light back into your eyes and throw off your aim. Does that never become a problem?~
== BC0AURA2 ~Well, I have light-blocking lenses in my goggles that are designed to protect from glares. So I've considered the issue at least.~
== L#LHAB ~I guess it helps to have a creative mind to work around these kinds of problems. The shine is certainly appealing, though I wonder if a matte finish wouldn't be just as stylish... and more practical.~
== BC0AURA2 ~Now you're starting to think more like a Lantanna than I do. We usually consider practicality above everything else, but life gets less pleasant if that's all we think about, right?~
== L#LHAB ~I think there's just the right balance of practicality and elegance somewhere in there. Why don't we draw up some designs together when we have the time?~
EXIT

CHAIN
IF ~InParty("L#LHA")
Range("L#LHA",15)
InParty("C0Aura")
Range("C0Aura",15)
!StateCheck("L#DVA",CD_STATE_NOTVALID)
!StateCheck("C0Aura",CD_STATE_NOTVALID)
Global("C0AuraL#LhanndToB","GLOBAL",0)~ THEN L#LHA25B bantertob
~Sometimes I wonder, Aura...~
DO ~SetGlobal("C0AuraL#LhanndToB","GLOBAL",1)~
== BC0AUR25 ~Go ahead.~
== L#LHA25B ~If I had met you sooner, and brought you to my father... could you have saved his life? If the power of faith and divine assistance couldn't cure him, maybe knowledge and science, could've perhaps... could've created some sort of remedy...~
== BC0AUR25 ~Lhannd... it's not that simple. Some things can't be changed, even if it's a terrible thing. I've had to learn that myself.~
== L#LHA25B ~I know that. But I have to wonder sometimes if the gods are simply playing cruel tricks, tricks that decent mortals like you never would.~
== BC0AUR25 ~I can't presume to know what the gods think. I've never committed myself to a deity... but I'd like to think sometimes there are lessons we have to accept. It may not seem right, but...~
== L#LHA25B ~*sigh* I know. I just miss him so much.~
== BC0AUR25 ~That said... even if this doesn't make you feel better, Lhannd... I don't think you should blame yourself. Nobody who has ever cared about you would want that.~
== L#LHA25B ~It doesn't, but still... thank you for trying. I know you would never have given up on my father, if you had been there from the start. You're too kind, Aura.~
EXIT