/*
        File: fn_medicLoadout.sqf
        Author: Bryan "Tonic" Boardwine
        
        Description:
        Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

removeAllWeapons player;
removeHeadgear player;
removeGoggles player;
player addUniform "U_Rangemaster";
player addBackpack "ALFR_Police_Backpack";
player addItem "ACE_fieldDressing";
player addItem "ACE_fieldDressing";
player addItem "ACE_fieldDressing";
player addItem "ACE_fieldDressing";
if(hmd player != "") then {
        player unlinkItem (hmd player);
};
// ITEMS 
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "pmc_earpiece";
player assignItem "pmc_earpiece";

[[player,0,"textures\medic_uniform.jpg"],"life_fnc_setTexture",true,false] call life_fnc_MP;

[] call life_fnc_saveGear;