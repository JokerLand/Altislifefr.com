#include "..\..\script_macros.hpp"
/*
    File: fn_medicLoadout.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Tenue
player addUniform "U_Pompiers_Uniforme";
player addBackpack "B_Pompiers_Sac";
player addWeapon "Rangefinder";
player addItem "pmc_earpiece";
player assignItem "pmc_earpiece";

//Items dans la tenue
player addItemToBackpack "Medikit";
player addItemToBackpack "FirstAidKit";
player addItemToBackpack "FirstAidKit";
player addItemToBackpack "FirstAidKit";

//Items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;