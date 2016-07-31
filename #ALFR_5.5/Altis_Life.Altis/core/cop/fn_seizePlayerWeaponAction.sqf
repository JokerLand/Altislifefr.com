#include "..\..\script_macros.hpp"
/*
    File: fn_seizePlayerWeaponAction.sqf
    Author: Skalicon
    Description:
    Removes the players weapons client side
	updated by: Dexter
*/
removeAllWeapons player;
[] call life_fnc_saveGear;
[] call life_fnc_syncData; //Should make weapon remove persistent
[] call life_fnc_LoadGear;
titleText["Your weapons were seized by the police.","PLAIN"];