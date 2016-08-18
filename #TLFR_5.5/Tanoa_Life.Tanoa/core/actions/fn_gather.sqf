#include "..\..\script_macros.hpp"
/*
    File: fn_gather.sqf
    Author: Devilfloh and GeK for wwww.altislifefr.com

    Description:
    Main functionality for gathering.
*/
private["_maxGather","_resource","_amount","_maxGather","_requiredItem","_ui","_progress","_pgText","_cP","_upp","_time"];
if ((vehicle player) != player) exitWith {};
if (player getVariable "restrained") exitWith {hint localize "STR_NOTF_isrestrained";};
if (player getVariable "playerSurrender") exitWith {hint localize "STR_NOTF_surrender";};

life_action_gathering = true;
_zone = "";
_requiredItem = "";
_zoneSize = (getNumber(missionConfigFile >> "CfgGather" >> "zoneSize"));
_exit = false;

_resourceCfg = missionConfigFile >> "CfgGather" >> "Resources";
for "_i" from 0 to count(_resourceCfg)-1 do {

    _curConfig = _resourceCfg select _i;
    _resource = configName _curConfig;
    _maxGather = getNumber(_curConfig >> "amount");
    _resourceZones = getArray(_curConfig >> "zones");
    _requiredItem = getText(_curConfig >> "item");
    {
        if ((player distance (getMarkerPos _x)) < _zoneSize) exitWith {_zone = _x;};
    } forEach _resourceZones;

    if (_zone != "") exitWith {};
};

if (_zone isEqualTo "") exitWith {life_action_gathering = false;};

if (_requiredItem != "") then {
    _valItem = missionNamespace getVariable "life_inv_" + _requiredItem;

    if (_valItem < 1) exitWith {
        switch (_requiredItem) do {
         //Messages here
        };
        life_action_gathering = false;
        _exit = true;
    };
};

if (_exit) exitWith {life_action_gathering = false;};

_amount = _maxGather;
_diff = [_resource,_amount,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if (_diff isEqualTo 0) exitWith {
    hint localize "STR_NOTF_InvFull";
    life_action_gathering = false;
};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_upp = "Recolte";
_ui = uiNamespace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
_time = _diff / 50;

while{true} do {
        sleep _time;
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
        if(_cP >= 1) exitWith {};
        if(player != vehicle player) exitWith {5 cutText ["","PLAIN"];};
        if(life_action_surrender) exitWith {5 cutText ["","PLAIN"];};
    };

if(player != vehicle player) exitWith {};
if(life_action_surrender) exitWith {};

if ([true,_resource,_diff] call life_fnc_handleInv) then {
    _itemName = M_CONFIG(getText,"VirtualItems",_resource,"displayName");
    titleText[format[localize "STR_NOTF_Gather_Success",(localize _itemName),_diff],"PLAIN"];
};

switch (_requiredItem) do {
            case "pickaxe": {player say3D "mining";};
            default {player say3D "harvest";};
        };
player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};

5 cutText ["","PLAIN"];

sleep 1;
life_action_gathering = false;