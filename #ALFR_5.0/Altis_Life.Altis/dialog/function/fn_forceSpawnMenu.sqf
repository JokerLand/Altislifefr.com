/*
	File: fn_forceSpawnMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Respawn Bruh
*/
closeDialog 0;
player setdamage 1;
player setVariable["ACE_medical_bloodVolume",0,true];
life_respawned = true;
spawnmenuon = 1;
//[] call life_fnc_spawnMenu;