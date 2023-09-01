/// Technic Replacement Weapons ///

class TShotgun : Shotgun replaces Shotgun
{
	Default
	{
	Weapon.SelectionOrder 1299;
	Inventory.PickupMessage "You got the Technic Shotgun!";
	Obituary "%o was blasted with the Technic Shotgun!";
	Tag "Technic Shotgun";
	XScale 0.6667;
	YScale 0.8004;
	Weapon.SlotNumber 3;
	}
	States
	{
	Ready:
		TSHT A 1 A_WeaponReady;
		Loop;
	Deselect:
		TSHT A 1 A_Lower;
		Loop;
	Select:
		TSHT A 1 A_Raise;
		Loop;
	Fire:
		TSHT A 3;
		TSHT A 7 A_FireShotgun;
		TSHT BC 5;
		TSHT D 4;
		TSHT CB 5;
		TSHT A 3;
		TSHT A 7 A_ReFire;
		Goto Ready;
	Flash:
		TSHF A 4 Bright A_Light1;
		TSHF B 3 Bright A_Light2;
		Goto LightDone;
	Spawn:
		TSGN A -1;
		Stop;
	}
}	
//Class TSuperShotgun : SuperShotgun replaces SuperShotgun

//class TBFG: BFG9000 replaces BFG9000

//class TChaingun: Chaingun replaces Chaingun

//class TPistol: Pistol replaces Pistol

//class TPlasmaRifle: PlasmaRifle replaces PlasmaRifle

//class TRocketLauncher: RocketLauncher replaces RocketLauncher

/// Test Weapons ///

class BlazerClaw : Weapon
{
  Default
  {
  Weapon.SelectionOrder 4100;
	Weapon.Kickback 100;
    Inventory.PickupSound "Misc/W_PkUp";
    Inventory.PickupMessage "You got... your own bare hands?";
    Obituary "%o was bapped by %k's bare hands!"; 
	Weapon.SlotNumber 1;
	+WEAPON.WIMPY_WEAPON
	+WEAPON.MELEEWEAPON
	}
  States
  {
  Select:
		BLZC A 1 A_Raise;
		Goto Ready;
	Ready:
		BLZC A 1 A_WeaponReady;
		Loop;
	Fire:
		BLZC B 2;
		BLZC C 0 A_FireBullets (5.6, 0, 1, 6, "BulletPuff", FBF_USEAMMO|FBF_NORANDOM);
		BLZC C 0 A_GunFlash;
		BLZC C 3;
		BLZC D 4;
		Goto Ready;
	AltFire:
		BLZC E 2;
		TNT1 A 0 A_JumpIfInventory("PowerStrength", 1, "Berserked");
  Normal:
		BLZC F 3;
		BLZC G 3 A_CustomPunch(2 * random(1, 10), TRUE);
		Goto AltFireEnd;
  Berserked:
		BLZC F 3;
		BLZC G 3 A_CustomPunch(20 * random(1, 10), TRUE);
  AltFireEnd:
		BLZC H 4;
		BLZC I 4;
		BLZC J 5 A_ReFire;
		Goto Ready;
	Deselect:
		BLZC A 1 A_Lower;
		Loop;
  }
}
 
class Socket : Weapon
{
	Default
	{
	Weapon.SelectionOrder 4000;
	Weapon.Kickback 100;
    Inventory.PickupSound "Misc/W_PkUp";
    Inventory.PickupMessage "You got... your own bare hands?";
    Obituary "%o was bapped by %k's bare hands!"; 
	Weapon.SlotNumber 1;
	+WEAPON.WIMPY_WEAPON
	+WEAPON.MELEEWEAPON
  }
	states
	{
	Ready:
		FIST A 1 A_WeaponReady;
		Loop;
	Deselect: 
		FIST A 1 A_Lower;
		Loop;
	Select:
		FIST A 1 A_Raise;
		Loop;
	Fire:
		FIST B 4;
		FIST C 4 A_Punch;
		FIST D 5;
		FIST C 4;
		FIST B 5 A_ReFire;
		Goto Ready;
		}
}
//
// Player Character Weapons // 
//
class LhikanSword : Weapon
{
	Default
	{
	Weapon.SelectionOrder 4190;
	Weapon.Kickback 100;
    Inventory.PickupSound "Misc/W_PkUp";
    Inventory.PickupMessage "You got your Fire Greatswords!";
    Obituary "%o was defeated with Lhikan's Toa Tools!"; 
	Weapon.SlotNumber 1;
	+WEAPON.MELEEWEAPON
	}
	states
	{
	Ready:
		LHIK A 1 A_WeaponReady;
		Loop;
	Deselect:
		LHIK A 1 A_Lower;
		Loop;
	Select:
		LHIK A 1 A_Raise;
		Loop;
	Fire:
		LHIK B 4;
		LHIF A 0 A_GunFlash;
		LHIF A 2 A_FireProjectile("LhikanFire", random(-8, 8), 0, 0, 1);
		LHIF A 2 A_FireProjectile("LhikanFire", random(-8, 8), 0, 0, 1);
		LHIF A 2 A_FireProjectile("LhikanFire", random(-8, 8), 0, 0, 1);
		LHIF A 2 A_FireProjectile("LhikanFire", random(-8, 8), 0, 0, 1);
		LHIF A 2 A_FireProjectile("LhikanFire", random(-8, 8), 0, 0, 1);
		LHIF B 7; 
		LHIK C 7 A_ReFire;
		Goto Ready;
	Flash: 
		LHIF A 10 Bright A_Light1;
		LHIF B 7 Bright A_Light2;
		LHIF B 0 A_Light0;
		Stop;
	AltFire:
		LHIK D 3;
		LHIK E 3;
		LHIK F 5 A_CustomPunch(20, FALSE, 0);
		LHIK G 4;
		LHIK G 2 A_ReFire;
		Goto Ready;
}
}
class LhikanFire : FastProjectile
{
	Default
	{
	Projectile;
	Radius 8;
	Height 8;
	Speed 35;
	Damage 1;
	+RANDOMIZE
	+ZDOOMTRANS
	}
	States
	{
		Spawn:
			BAL1 AB 3 Bright;
			Loop;
		Death:
			BAL1 CDE 4 Bright;
			Stop;
	}
}

Class AirSword: Weapon
{
	Default
	{
		Weapon.SelectionOrder 4195;
		Weapon.Kickback 500;
		Inventory.PickupMessage "You got your Air Sword! Better not let it out of your sight again...";
		Obituary "%o was killed with the Air Sword under suspicious circumstances!";
		Weapon.SlotNumber 1;
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 20;
		Weapon.AmmoType "Clip";
		Weapon.WeaponScaleX 0.6667;
		Weapon.WeaponScaley 0.8005;
		+WEAPON.MELEEWEAPON
	}
	states
	{
		Ready:
		ARSW A 1 A_WeaponReady;
		Loop;
		Deselect:
		ARSW A 1 A_Lower;
		Loop;
		Select:
		ARSW A 1 A_Raise;
		Loop;
		Fire:
		ARSW B 3;
		ARSW C 3;
		ARSW D 0 A_JumpIfInventory ("PowerStrength", 1, "Berserked");
		Normal: 
		ARSW D 3 A_CustomPunch(3* random(1,10), TRUE);
		ARSW E 3;
		ARSW F 3;
		Goto Ready;
		Berserked: 
		ARSW D 3 A_CustomPunch(30* random(1,10), TRUE);
		ARSW E 3;
		ARSW F 3;
		Goto Ready;
		AltFire: 
		ARSW G 4;
		ARSW H 4 A_FireProjectile ("AirSwordMissile", TRUE, +FPF_NOAUTOAIM) ;
		ARSW I 8;
		Goto Ready;
		}
}

class AirSwordMissile : FastProjectile
{
	Default
	{
	Projectile;
	Radius 16;
	Height 8;
	Speed 45;
	Damage 5;
	+RANDOMIZE
	+ZDOOMTRANS
	}
	States
	{
		Spawn:
			PLSL A 3 Bright;
			Loop;
		Death:
			PLSL A 4 Bright;
			Stop;
	}
}		

class MatoroClaws : Weapon
{
	Default
	{
		Weapon.SelectionOrder 4200;
		Weapon.Kickback 100;
		Inventory.PickupSound "Misc/W_PkUp";
		Inventory.PickupMessage "You got your Twin Cutter!";
		Obituary "%o was shredded by the Twin Cutters!"; 
		Weapon.SlotNumber 1;
		+WEAPON.WIMPY_WEAPON
		+WEAPON.MELEEWEAPON
  }
	states
	{
		Ready:
		MATO A 1 A_WeaponReady;
		Loop;
		Deselect: 
		MATO A 1 A_Lower;
		Loop;
		Select:
		MATO A 1 A_Raise;
		Loop;
		Fire:
		MATO C 4;
		MATO D 3 A_Punch;
		MATO D 5;
		MATO E 5;
		MATO B 5 A_ReFire;
		Goto Ready;
		AltFire: 
		MATO F 3;
		MATO G 0 A_FireBullets (5, 0, 6, 5, "BulletPuff");
		MATO G 0 A_StartSound ("WeaponMed2", CHAN_WEAPON);
		MATO I 7 A_GunFlash;
		MATO J 3;
		MATO K 7;
		MATO E 5;
		MATO A 5 A_ReFire;
		Goto Ready;
		Flash:
		MATO I 7 Bright A_Light1;
		MATO J 3 Bright A_Light2;
		Goto LightDone;
		}
}

//
// Cordak
//

class Cordak : Weapon
{
	Default
	{
		Weapon.SelectionOrder 701;
		Weapon.BobStyle "Smooth";
		Weapon.SlotNumber 4;
		Weapon.AmmoUse 3;
		Weapon.AmmoType "Clip";
		Weapon.AmmoGive 30;
		Weapon.SlotPriority 2;
		Weapon.WeaponScaleX 0.6667;
		Weapon.WeaponScaley 0.8005;
		Inventory.PickupMessage "You got the Cordak Blaster!";
		Obituary "%o was blasted to bits by %k's Cordak Blaster!";
		Tag "Cordak Blaster";
	}
	States
	{
	Ready:
		CDKB A 1 A_WeaponReady;
		Loop;
	Deselect:
		CDKB A 1 A_Lower;
		Loop;
	Select:
		CDKB A 1 A_Raise;
		Loop;
	Fire:
		CDKB A 0 A_PlaySound("Weapons/Cordak2", CHAN_WEAPON);
		CDKB B 5;
		CDKF A 3 A_FireProjectile("CordakRocket", 0, 1, 0, 0);
		CDKF B 3;
		CDKF C 3;
		CDKB C 5;
		CDKB D 5;
		CDKB A 3;
		CDKB A 0 A_ReFire;
		Goto Ready;
	Flash:
		CDKF B 3 Bright A_Light1;
		CDKF C 3 Bright A_Light2;
		CDKF D 3 Bright A_Light2;
		Goto LightDone;
	Spawn:
		MGUN A -1;
		Stop;
	}
}
Class CordakRocket : FastProjectile
{
	Default
	{
	Projectile;
	Radius 7;
	Height 8;
	Speed 50;
	Damage 5;
	+RANDOMIZE
	+ZDOOMTRANS
	}
	States
	{
		Spawn:
			CDKR A 1 Bright;
			Loop;
		Death:
			CDKE A 8 Bright;
			CDKE B 0 Bright A_Explode(30, 64);
			CDKE B 6 Bright A_PlaySound("Weapons/Explode2", CHAN_WEAPON);
			CDKE C 4 Bright;
			Stop;
		}
}

//
// Kanoka Launcher 
//

Class KanokaLauncher : Weapon 
{
	Default
	{
	Weapon.AmmoGive 5;
	Weapon.BobStyle "InverseSmooth";
	Weapon.AmmoUse 1;
	Weapon.BobRangeX 0.8;
	Weapon.SlotNumber 2;
	Weapon.SlotPriority 10;
	Weapon.AmmoType "Clip";
	Inventory.PickupMessage "You got the Metru Nui Kanoka launcher!!";
	Obituary "%o couldn't handle a game of Akilini!";
	Tag "Kanoka Launcher";
	}
	States
	{
	Ready:
		KNKL A 1 A_WeaponReady;
		Loop;
	Deselect:
		KNKL A 1 A_Lower;
		Loop;
	Select:
		KNKL A 1 A_Raise;
		Loop;
	Fire:
		KNKL B 4;
		KNKL C 0 A_StartSound("Weapons/CordakFire", CHAN_AUTO, CHANF_OVERLAP);
		KNKL C 6 A_FireProjectile("KanokaDisk", 0, 1, 0, 0);
		KNKL DEFG 8;
		KNKL H 4;
		KNKL A 0 A_ReFire;
		Goto Ready;
	Spawn:
		MGUN A -1;
		Stop;
	}
}
Class KanokaDisk : Actor
{
  Default
  {
    BounceFactor 0.75;
	WallBounceFactor 0.80;
    Radius 8;
    Height 4;
    Speed 35;
    Damage 15;
    XScale 1;
    YScale 1;
    SeeSound "";
    DeathSound "";
    Projectile;
    +HexenBounce
    +CanBounceWater
    +SkyExplode
  }

  States
  {
  Spawn:
    KNKF A 0  NoDelay;
    KNKF ABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABCABC 2;
  Death:
    KNKF DEF 2;
    Stop;
  }
}
///
/// Midak Skyblaster: Tweak like ALL of these god damn values idgaf
///
Class Midak : Weapon
{
	Default
	{
		Weapon.AmmoUse 1;
		Weapon.AmmoGive 2;
		Weapon.SlotNumber 5;
		Weapon.SelectionOrder 2501;
		Weapon.BobStyle "Smooth";
		Weapon.AmmoType "RocketAmmo"; //Change to LightEnergy later?
		YScale 0.6667;
		XScale 0.8004;
		Weapon.WeaponScaleX 0.6667;
		Weapon.WeaponScaleY 0.8004;
		+WEAPON.NOAUTOFIRE;
		Inventory.PickupMessage "You got the Midak Skyblaster!";
		Tag "Midak Skyblaster";
	}
	states
	{
		Ready:
			MIDK A 1 A_WeaponReady;
			Loop;
		Deselect:
			MIDK A 1 A_Lower;
			Loop;
		Select:
			MIDK A 1 A_Raise;
			Loop;
		Fire:
			MIDK B 8 A_GunFlash;
			MIDK C 8 A_FireProjectile("LightBall");
			MIDK D 4;
			MIDK E 4 A_ReFire;
			Goto Ready;
		Flash:
			MIDF B 8 Bright A_Light1;
			MIDF C 8 Bright; 
			MIDF D 4 Bright A_Light2;
			Goto LightDone;
		Spawn:
			MIDK F -1;
			Stop;
		}
}
Class LightBall : Actor // Sprites to be replaced
{
  Default
  {
    BounceFactor 0.85;
	WallBounceFactor 0.85;
    Radius 8;
    Height 4;
    Speed 55;
    Damage 30;
    XScale 0.6667;
    YScale 0.8004;
    //SeeSound "";
    //DeathSound "",
    Projectile;

  }
	States
	{
		Spawn:
			MIDB A 1 Bright;
			Loop;
		Death:
			MIDB A 7 Bright;
			MIDB B 1 Bright A_Explode(30, 64);
			MIDB C 6 Bright A_PlaySound("Weapons/Explode2", CHAN_WEAPON);
			MIDB D 4 Bright;
			Stop;
		}

}
		