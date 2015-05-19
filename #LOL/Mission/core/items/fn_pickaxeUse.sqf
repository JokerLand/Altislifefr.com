/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
if(life_gathering) exitWith {};
life_gathering = true;
switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 40): {_mine = "copperore"; _val = 2;};
	case (player distance (getMarkerPos "iron_1") < 40): {_mine = "ironore"; _val = 2;};
	case (player distance (getMarkerPos "salt_1") < 120) : {_mine = "salt"; _val = 4;};
	case (player distance (getMarkerPos "sand_1") < 75) : {_mine = "sand"; _val = 5;};
	case (player distance (getMarkerPos "diamond_1") < 40): {_mine = "diamond"; _val = 1;};
	case (player distance (getMarkerPos "oil_1") < 40) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "oil_2") < 40) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "rock_1") < 40): {_mine = "rock"; _val = 2;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint localize "STR_ISTR_Pick_NotNear";life_gathering = false;};
if(vehicle player != player) exitWith {hint localize "STR_ISTR_Pick_MineVeh";life_gathering = false;};
if(life_inv_pickAxe < 1) exitWith {hint "Vous n'avez pas de pioche";life_gathering = false;};
_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull";life_gathering = false;};
life_action_inUse = true;

switch(mine_state) do {
	case 0:
	{
		for "_i" from 0 to 3 do
		{
			player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
			waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
			sleep 2.5;
		};
	};
	case 1:
	{
		for "_i" from 0 to 2 do
		{
			player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
			waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
			sleep 2.5;
		};
	};
	case 2:
	{
		for "_i" from 0 to 1 do
		{
			player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
			waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
			sleep 2.5;
		};
	};
};
if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_ISTR_Pick_Success",_itemName,_diff],"PLAIN"];
	["mine",1] call life_fnc_addStatPoint;
};
life_gathering = false;
life_action_inUse = false;