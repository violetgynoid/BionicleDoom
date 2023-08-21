class Lhikan : DoomPlayer 
{
		Default
		{
		Speed 1;
		Player.DisplayName "Toa Lhikan";
		Player.StartItem "LhikanSword";
		Player.StartItem "Clip", 50;
		Player.Face "LHF";
		XScale 0.6667;
		YScale 0.8004;
		}
		States
		{
		Spawn:
		LHPS A -1;
		Loop;
		See:
		LHPS ABCD 4;
		Loop;
		}
}
class Nokama : DoomPlayer
{
	Default
	{
		Speed 1;
		Player.DisplayName "Toa Nokama";
		Player.StartItem "Socket";
		Player.StartItem "Clip", 100;
	}
}
class Lesovikk : DoomPlayer
{
	Default
	{
		Speed 1.2;
		Player.DisplayName "Toa Lesovikk";
		Player.StartItem "AirSword";
		Player.StartItem "Cordak";
		Player.StartItem "Clip", 50;
	}
}
class Pohatu : DoomPlayer 
{
	Default
	{
		Speed 1;
		Player.DisplayName "Toa Pohatu";
		Player.StartItem "Socket";
		Player.StartItem "Cordak";
		Player.StartItem "Clip", 50;
		Player.Face "HAU";
	}
}
class Bomonga : DoomPlayer
{
	Default
	{
		Speed 1;
		Player.DisplayName "Toa Bomonga";
		Player.StartItem "Socket";
		Player.StartItem "Clip", 100;
	}
}
class Matoro : DoomPlayer
{
	Default
	{
		Speed 1;
		Player.DisplayName "Toa Matoro";
		Player.StartItem "MatoroClaws";
		Player.StartItem "Cordak";
		Player.StartItem "Clip", 50;
	}
}