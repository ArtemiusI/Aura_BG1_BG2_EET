CHAIN IF WEIGHT #-1 ~Global("C0AU01Telescope","C0AU01",1)~ THEN C0AU01TK telescope
~You wouldn't *believe* how much you can see with a telescope this big. Getting the materials needed to build it was expensive, but it's more than worth it for the improved clarity.~
DO ~SetGlobal("C0AU01Telescope","C0AU01",2)~
END
+ ~Global("C0AuraKnowsBG1","GLOBAL",1)~ + ~It's a lot more impressive than the one from the Hall of Wonders.~ + telescope.1
++ ~Can I have a look?~ + telescope.2
++ ~I'll leave it alone. Wouldn't want to, uh, ruin the polish or something.~ EXIT

CHAIN C0AU01TK telescope.1
~I know, right? Well, that one was a little more for accessory than practical use, but *this*, this is the real thing.~
END
++ ~Can I have a look?~ + telescope.2
++ ~Let's go.~ EXIT

CHAIN C0AU01TK telescope.2
~You can try, but I don't think you'll see much. It's not the right time of the season.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Painting","C0AU01",1)~ THEN C0AU01TK painting
~I painted those myself. I've been improving my skills ever since I had a chance to sit down and practice for a few hours. Pretty, aren't they?~
DO ~SetGlobal("C0AU01Painting","C0AU01",2)~
END
++ ~Have you ever thought of becoming a career artist?~ + painting.1
++ ~They're very well done.~ + painting.2
++ ~I've looked at them long enough.~ EXIT

CHAIN C0AU01TK painting.1
~Nah. It's not as much fun if it becomes work. I like to take my time and relax when I'm painting.~
EXIT

CHAIN C0AU01TK painting.2
~Aww, thank you. I still consider myself an amateur, but with enough practice, I'll master the art of ink painting one day.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Desk","C0AU01",1)~ THEN C0AU01TK desk
~Eep! How embarrassing. I usually take care of my notes and tools better than this, I swear. I just haven't been around long enough, and Pico doesn't know how to properly organize them. I'll clean up eventually.~
DO ~SetGlobal("C0AU01Desk","C0AU01",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Shelf","C0AU01",1)~ THEN C0AU01TK shelf
~Do you like that smell, <CHARNAME>? That's from the incense that's burning right there. I bought it from a Shou trader at Waukeen's Promenade some time ago. I find that it calms the nerves.~
DO ~SetGlobal("C0AU01Shelf","C0AU01",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Contraption","C0AU01",1)~ THEN C0AU01TK resonator
~It's a Jansen-Brand Thaumaturgical Resonator. I didn't make up the name... as you can probably guess.~
DO ~SetGlobal("C0AU01Contraption","C0AU01",2)~
END
++ ~What does it do?~ + resonator.1

CHAIN C0AU01TK resonator.1
~I don't know. It's not one of mine, it was here before I moved in. It was really dusty too, like no one's touched it in years.~
= ~Supposedly, it has some kind of reaction to powerful magic. Not that it ever does, with magic as tightly controlled in this city as it is. I tidied up all the gears and receptors, but I've never seen it become active.~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Clock","C0AU01",1)~ THEN C0AU01TK clock
~Ha-ha! I'm glad you noticed that. It's one of the inventions I'm more proud of. It uses different colored salts in specific hours of the day to tell the time. Sure, it's a bit impractical, but it's neat, isn't it?~
DO ~SetGlobal("C0AU01Clock","C0AU01",2)~
EXIT

CHAIN IF WEIGHT #-1 ~Global("C0AU01Portal","C0AU01",1)~ THEN C0AU01TK portal
~I really need to clean up when I get a chance. It's like everything I need disappears whenever I'm looking for something...~
DO ~SetGlobal("C0AU01Portal","C0AU01",2)~
END
++ ~Did you build this portal?~ + portal.1

CHAIN C0AU01TK portal.1
~Oh, no... that was made by Jan, I think... he's the one who does most of the inventing in the family. I just did a bit of maintenance on it.~
== C0AU01TK IF ~IsValidForPartyDialog("JAN")~ THEN ~Whatever did you build this for in the first place anyways, Jan? It looked like you gave up halfway through.~
== JANJ IF ~IsValidForPartyDialog("JAN")~ THEN ~Ah, now that's a long and unfortunate story. You see, with how much our family's turnip business has been flourishing, the little space we have within our own property for harvesting simply isn't big enough anymore. Naturally, I decided the simplest solution would be to build an inter-dimensional portal that would lead to the fabled Plane of Vegetable Harvests as a venue for expanding our business. Alas, the Cowled Wizards caught wind of my plan when I tried to power up the portal, and confiscated the translocation crystal that I, er... acquired through not-so-legal venues. Not only that, but they slapped on a hefty fine just for good measure. It was very rude of them.~
== C0AU01TK IF ~IsValidForPartyDialog("JAN")~ THEN ~So, you were trying to open a pocket dimension to create a turnip farm. *sigh* I should've probably saw that coming.~
== C0AU01TK ~Anyways, it's not exactly very useful as it is. I'm not especially knowledgeable when it comes to building magical portals, and even if I was, it's missing a power source. It's a shame, I really wanted to see if I could tune it to send me home to Lantan for a visit.~
EXIT