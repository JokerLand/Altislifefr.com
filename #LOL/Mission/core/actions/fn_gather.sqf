/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
closeDialog 0;
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["apple_1","olive_field","flour_field","apple_2","apple_3","apple_4","peaches_1","peaches_2","Warm_Marker","peaches_3","peaches_4","heroin_1","cocaine_1","weed_1","ephed","boom","butane","ether","phosph","grape_1","malt","houblon","archeo_1","tabac","fossile_1"];
_zone = "";
if(life_gathering) exitWith {};
life_gathering = true;

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	hint localize "STR_NOTF_notNearResource";
	life_action_inUse = false;
	life_gathering = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1","apple_2","apple_3","apple_4"]): {_gather = "apple"; _val = 3;};
	case (_zone in ["peaches_1","peaches_2","peaches_3","peaches_4"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = 1;};
	case (_zone in ["ephed"]): {_gather = "ephed"; _val = 1;};
	case (_zone in ["phosph"]): {_gather = "phosph"; _val = 1;};
	case (_zone in ["butane"]): {_gather = "butane"; _val = 1;};
	case (_zone in ["ether"]): {_gather = "ether"; _val = 1;};
	case (_zone in ["grape_1"]): {_gather = "grapes"; _val = 2;};
	case (_zone in ["malt"]): {_gather = "malt"; _val = 2;};
	case (_zone in ["houblon"]): {_gather = "houblon"; _val = 2;};
	case (_zone in ["archeo_1"]): {_gather = "artefact"; _val = 1;};
	case (_zone in ["tabac"]): {_gather = "tabac"; _val = 2;};
	case (_zone in ["boom"]): {_gather = "explo_i"; _val = 1;};
	case (_zone in ["Warm_Marker"]): {_gather = "uranium1"; _val = 1;};
	case (_zone in ["flour_field"]): {_gather = "wheat"; _val = 1;};
	case (_zone in ["olive_field"]): {_gather = "olive"; _val = 2;};
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {hint localize "STR_NOTF_GatherVeh";life_gathering = false;};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull";life_gathering = false;};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
	player say2D "bag";
};

life_action_inUse = false;
life_gathering = false;