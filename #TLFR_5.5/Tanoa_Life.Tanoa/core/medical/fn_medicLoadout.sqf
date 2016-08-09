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
player addBackpack "TRYK_B_Medbag_BK";

//Items dans la tenue
player addItemToBackpack "Medikit";

//Items
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;