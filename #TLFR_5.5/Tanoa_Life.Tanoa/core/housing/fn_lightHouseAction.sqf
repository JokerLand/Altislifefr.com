#include "..\..\script_macros.hpp"
/*
    File: fn_lightHouseAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description: getVariable
    Lights up the house.
*/
private "_house";
_house = param [0,ObjNull,[ObjNull]];
if (isNull _house) exitWith {};
if (!(_house isKindOf "House_F")) exitWith {};

if(isNull (_house GVAR ["light01",ObjNull]) || isNull (_house GVAR ["light02",ObjNull]) || isNull (_house GVAR ["light03",ObjNull]) || isNull (_house GVAR ["light04",ObjNull]) || isNull (_house GVAR ["light05",ObjNull]) || isNull (_house GVAR ["light06",ObjNull]) || isNull (_house GVAR ["light07",ObjNull]) || isNull (_house GVAR ["light08",ObjNull]) || isNull (_house GVAR ["light09",ObjNull]) || isNull (_house GVAR ["light10",ObjNull])) then { 
    [_house,true] remoteExecCall ["life_fnc_lightHouse",RCLIENT];
} else {
    [_house,false] remoteExecCall ["life_fnc_lightHouse",RCLIENT];
};