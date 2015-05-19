#include <macro.h>

if(__GETC__(life_coplevel) < 1) exitWith {hint "Vous n'avez pas le grade requis !"};

removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;

{
	player unassignItem _x;
	player removeItem _x;
} foreach (assignedItems player);

if(hmd player != "") then {
	player unlinkItem (hmd player);
};


player addUniform "ALE_GendUniform";
player addVest "bulletproof_gend_vest";
player addHeadgear "ALE_H_Calot";
player addBackpack "cl3_police_tacticalbelt";
/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemWatch";
player assignItem "ItemWatch";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemRadio";
player assignItem "ItemRadio";

[] call life_fnc_saveGear;