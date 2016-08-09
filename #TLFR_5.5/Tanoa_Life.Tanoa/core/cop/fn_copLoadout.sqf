#include "..\..\script_macros.hpp"
/*
    File: fn_copLoadout.sqf
    Author: Bryan "Tonic" Boardwine
    Edited: Itsyuka
    
    Description:
    Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.
player addUniform "hightline_gendarmerie_gilet";
player addVest "V_Rangemaster_belt";
player addHeadgear "hightline_gendarmerie_cap_01";

if(FETCH_CONST(life_coplevel) == 1) then
{
player addWeapon "DDOPP_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
player addMagazine "DDOPP_1Rnd_X26";
};

if(FETCH_CONST(life_coplevel) != 1) then
{
player addWeapon "DDOPP_X3";
player addMagazine "DDOPP_3Rnd_X3";
player addMagazine "DDOPP_3Rnd_X3";
player addMagazine "DDOPP_3Rnd_X3";
player addMagazine "DDOPP_3Rnd_X3";
player addMagazine "DDOPP_3Rnd_X3";
};

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";

[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;