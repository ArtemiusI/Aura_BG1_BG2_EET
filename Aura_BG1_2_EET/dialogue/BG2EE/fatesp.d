EXTEND_TOP FATESP 6 #2
+ ~!Dead("C0Aura") !InMyArea("C0Aura") Global("C0AuraSummoned","GLOBAL",0)~ + ~Bring me Aura, the gnome artificer.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("C0Aura25",[1999.1228],0) 
SetGlobal("C0AuraSummoned","GLOBAL",1)~ GOTO 8
END

EXTEND_TOP FATESP 6 #2
+ ~!Dead("C0Aura") !InMyArea("C0Aura") Global("C0AuraSummoned","GLOBAL",0)
	Gender(Player1,FEMALE)
	!Alignment(Player1,MASK_EVIL)
	CheckStatGT(Player1,9,CHR)
	CheckStatGT(Player1,11,INT)
	Global("C0AuraMatch","GLOBAL",0)~ + ~Bring me my lover, Aura.~
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("C0Aura25",[1999.1228],0) 
SetGlobal("C0AuraSummoned","GLOBAL",1)
SetGlobal("C0AuraMatch","GLOBAL",1)
SetGlobal("C0AuraRomanceActive","GLOBAL",2)~ GOTO 8
END