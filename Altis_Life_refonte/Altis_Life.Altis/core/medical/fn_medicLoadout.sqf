/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

removeAllContainers player;
removeAllWeapons player;
player addUniform "U_IG_Guerilla2_1";
player addBackpack "B_Bergen_blk";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "Medikit";
removeGoggles player;
removeHeadGear player;

[[player,0,"textures\medic_uniform.jpg"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;

[] call life_fnc_saveGear;