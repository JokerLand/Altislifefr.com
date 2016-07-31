/*
    File: fn_civLoadout.sqf
    Author: Tobias 'Xetoxyc' Sittenauer
    
    Description:
    Loads the civs out with the default gear, with randomized clothing.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

_clothings = ["ALFR_FR_tenualfr_2","ALFR_FR_tenualfr_1","ALFR_FR_tenualfr"];
player addUniform (selectRandom _clothings);

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_playerSkins;
[] call life_fnc_saveGear;