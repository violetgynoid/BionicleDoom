class Bordakh : DoomImp replaces DoomImp
{
	Default
		{
		HitObituary "%o was clobbered by a Vahki's staff!";
		Obituary "%o couldn't surrender or run!" ;
		Tag "Vahki Bordakh" ;
		}
	States
	{
	Spawn:
		BORD AB 10 A_Look;
		Loop;
	See:
		BORD AABBCCDD 3 A_Chase;
		Loop;
	Melee:
		BORD EF 8 A_FaceTarget ;
		BORD G 6 A_CustomComboAttack("VahkiDisk", 32, 3 * random(1, 8), "imp/melee") ;
	Missile:
		BORD H 16 A_FaceTarget ;
		BORD I 6 A_CustomComboAttack("VahkiDisk", 32, 3 * random(1, 8), "imp/melee") ;
		BORD G 6; 
		Goto See;
	Pain:
		BORD J 4 A_Pain;
		Goto See;
	Death:
		BORD K 8;
		BORD L 8 A_Scream;
		BORD M 6;
		BORD N 6 A_NoBlocking;
		BORD O -1;
		Stop;
	XDeath:
		BORD P 5;
		BORD Q 5 A_XScream;
		BORD R 5;
		BORD S 5 A_NoBlocking;
		BORD TUV 5;
		BORD V -1;
		Stop;
	Raise:
		BORD ON 8;
		BORD MLK 6;
		Goto See;
	}
}
Class VahkiDisk: Actor
{
	Default
	{
    BounceFactor 0.75;
	WallBounceFactor 0.80;
    Radius 8;
    Height 8;
    Speed 10;
	FastSpeed 20;
    Damage 3;
    XScale 0.667;
    YScale 0.667;
    //DeathSound "";
    Projectile;
	+RANDOMIZE
    +StrifeDamage
    +HexenBounce
    +CanBounceWater
    +SkyExplode
	}
	States
  {
  Spawn:
    KNKF A 0 BRIGHT NoDelay;
    KNKF ABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABC 2 BRIGHT;
  Death:
    KNKF DEF 2 BRIGHT;
	Stop;
  }
}
class Tahnok : ZombieMan replaces ZombieMan 
{
		Default
		{
		SeeSound "Bohrok/wake1" ;
		AttackSound "Monsters/WeaponL3" ; 
		DeathSound "Bohrok/Wakeup";
		Obituary " %o was cleansed by the Bohrok!" ;
		Tag "Bohrok Tahnok" ;
		}
	States
	{
	Spawn:
		TAHN AB 10 A_Look;
		Loop;
	See:
		TAHN AABBCCDD 4 A_Chase;
		Loop;
	Melee:
		TAHN E 5 A_FaceTarget;
		TAHN F 5 A_CustomMeleeAttack(random(1, 5) * 1, "Destruction/Small2");
		TAHN G 5;
		Goto See;
	Missile:
		   TAHN H 10 A_FaceTarget;
		   TAHN H 0 A_StartSound("Monsters/WeaponL3", CHAN_5);
		   TAHN I 8 A_CustomBulletAttack (22.5, 0, 1, random(1,5) * 3, "BulletPuff", 0, CBAF_NORANDOM);
		   TAHN H 8 ;
		   Goto See ;
	Pain:
		TAHN J 3;
		TAHN J 3 A_Pain;
		Goto See;
	Death:
		TAHN J 3;
		TAHN K 3 A_Scream;
		TAHN L 3 A_NoBlocking;
		TAHN M 3;
		TAHN N 3;
		TAHN O -1;
		Stop;
	XDeath:
		TAHN P 5;
		TAHN Q 5 A_XScream;
		TAHN R 5 A_NoBlocking;
		TAHN STUVW 5;
		TAHN Y -1;
		Stop;
	Raise:
		TAHN N 5;
		TAHN MLK 5;
		Goto See;
	}
}	
class Kohrak : ShotgunGuy replaces ShotgunGuy 
{
		Default
		{
		SeeSound "Bohrok/Wakeup" ;
		AttackSound "Monsters/WeaponL3" ; 
		//DeathSound "Bohrok/Wakeup";
		Obituary " %o was cleansed by the Bohrok!" ;
		Tag "Bohrok Kohrak" ;
		}
	States
	{
	Spawn:
		KOHR AB 10 A_Look;
		Loop;
	See:
		KOHR AABBCCDD 4 A_Chase;
		Loop;
	Melee:
		KOHR E 5 A_FaceTarget;
		KOHR F 5 A_CustomMeleeAttack(random(1, 5) * 1, "Destruction/Small2");
		KOHR G 5;
		goto See;
	Missile:
		   KOHR H 10 A_FaceTarget ;
		   KOHR H 0 A_StartSound ("Monsters/WeaponL3", CHAN_BODY) ;
		   KOHR I 8 A_CustomBulletAttack (22.5, 0, 3, random(1,5) * 3, "BulletPuff", 0, CBAF_NORANDOM) ;
		   KOHR H 8 ;
		   goto See ;
	Pain:
		KOHR J 3;
		KOHR J 3 A_Pain;
		Goto See;
	Death:
		KOHR J 3;
		KOHR K 3 A_Scream;
		KOHR L 3 A_NoBlocking;
		KOHR M 3;
		KOHR N 3;
		KOHR O -1;
		Stop;
	XDeath:
		KOHR P 5;
		KOHR Q 5 A_XScream;
		KOHR R 5 A_NoBlocking;
		KOHR STUVW 5;
		KOHR Y -1;
		Stop;
	Raise:
		KOHR N 5;
		KOHR MLK 5;
		Goto See;
	}
}	
Class LehvakKal : ChaingunGuy replaces ChaingunGuy
{
	Default
	{
		SeeSound "Kal/Wakeup" ;
		AttackSound "Monsters/WeaponL3" ; 
		//DeathSound "Bohrok/Wakeup";
		Obituary " %o was cleansed by Lehvak-Kal!" ;
		Tag "Lehvak-Kal" ;
		XScale 0.6667;
		YScale 0.8004;
	}
	States
	{
	Spawn:
		LEHK AB 10 A_Look;
		Loop;
	See:
		LEHK AABBCCDD 3 A_Chase;
		Loop;
	Missile:
		LEHK H 10 A_FaceTarget;
		LEHK IH 4 BRIGHT A_CPosAttack;
		LEHK I 1 A_CPosRefire;
		Goto Missile+1;
	Pain:
		LEHK J 3;
		LEHK J 3 A_Pain;
		Goto See;
	Melee:
		LEHK E 5 A_FaceTarget;
		LEHK F 5 A_CustomMeleeAttack(random(1, 10) * 4, "Destruction/Small2");
		LEHK G 5;
		goto See;
	Death:
		LEHK K 5;
		LEHK L 5 A_Scream;
		LEHK M 5 A_NoBlocking;
		LEHK NOP 5;
		LEHK Q -1;
		Stop;
	XDeath:
		LEHK R 5;
		LEHK S 5 A_XScream;
		LEHK T 5 A_NoBlocking;
		LEHK UVW 5;
		LEHK W -1;
		Stop;
	Raise:
		LEHK P 5;
		LEHK ONMLK 5;
		Goto See;
	}
}
		