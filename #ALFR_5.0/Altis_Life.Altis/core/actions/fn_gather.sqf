#include <macro.h>
/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" and "GeK" for www.altislifefr.com

	Description:
	Main functionality for gathering.
*/
if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_resourceZones","_zone","_ui","_progress","_pgText","_cP","_upp","_time"];
_resourceZones = ["apple_1","apple_2","apple_3","apple_4","peaches_1","peaches_2","peaches_3","peaches_4","heroin_1","cocaine_1","weed_1","lead_1","iron_1","salt_1","sand_1","diamond_1","oil_1","oil_2","rock_1"];
_minage = ["lead_1","iron_1","salt_1","sand_1","diamond_1","oil_1","oil_2","rock_1"];
_zone = "";

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
life_action_gathering = true;
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(EQUAL(_zone,"")) exitWith {life_action_gathering = false;};

if((_zone in _minage) && (life_inv_pickaxe < 1)) exitWith {
		life_action_gathering = false;
		hint "Vous avez besoin d'une pioche pour effectuer cette action.";
	};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = ["apple",104];};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = ["peach",104];};
	case (_zone in ["heroin_1"]): {_gather = ["heroin_unprocessed",17];};
	case (_zone in ["cocaine_1"]): {_gather = ["cocaine_unprocessed",17];};
	case (_zone in ["weed_1"]): {_gather = ["cannabis",26];};
	case (_zone in ["lead_1"]): {_gather = ["copper_unrefined",26];};
	case (_zone in ["iron_1"]): {_gather = ["iron_unrefined",21];};
	case (_zone in ["salt_1"]): {_gather = ["salt_unrefined",34];};
	case (_zone in ["sand_1"]): {_gather = ["sand",34];};
	case (_zone in ["diamond_1"]): {_gather = ["diamond_uncut",26];};
	case (_zone in ["oil_1"]): {_gather = ["oil_unprocessed",15];};
	case (_zone in ["oil_2"]): {_gather = ["oil_unprocessed",15];};
	case (_zone in ["rock_1"]): {_gather = ["rock",17];};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

_diff = [SEL(_gather,0),SEL(_gather,1),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(EQUAL(_diff,0)) exitWith {hint localize "STR_NOTF_InvFull"};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_upp = "recolte";
_ui = GVAR_UINS "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
_time = life_maxWeight / 100;

life_action_gathering = true;

while{true} do {
		if(_zone in _minage) then
		    {
				playSound "mining";
			};
		sleep _time;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
	};

if(([true,SEL(_gather,0),_diff] call life_fnc_handleInv)) then {
	_itemName = M_CONFIG(getText,"VirtualItems",SEL(_gather,0),"displayName");
	titleText[format[localize "STR_NOTF_Gather_Success",(localize _itemName),_diff],"PLAIN"];
};

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};

5 cutText ["","PLAIN"];

playSound "bag";

life_action_gathering = false;
