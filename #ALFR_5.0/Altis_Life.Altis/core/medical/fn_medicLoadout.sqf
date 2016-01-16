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
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;
sleep 1;
player addUniform "U_Rangemaster";
player addBackpack "ALFR_Police_Backpack";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "FirstAidKit";
player addItem "Medikit";
removeGoggles player;
removeHeadGear player;
if(hmd player != "") then {
        player unlinkItem (hmd player);
};
// ITEMS 
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152_1";
player linkItem "ItemGPS";
player linkItem "pmc_earpiece";

[[player,0,"textures\medic_uniform.jpg"],"life_fnc_setTexture",true,false] call life_fnc_MP;

[] call life_fnc_saveGear;