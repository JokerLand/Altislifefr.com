#include "\life_server\script_macros.hpp"
/*
    File: fn_addContainer.sqf
    Author: NiiRoZz

    Description:
    Add container in Database.
*/
private["_containerPos","_query","_className","_dir"];
params [
    ["_uid","",[""]],
    ["_container",objNull,[objNull]]
];

if (isNull _container || _uid isEqualTo "") exitWith {};

_containerPos = getPosATL _container;
_className = typeOf _container;
_dir = [vectorDir _container, vectorUp _container];

if (EXTDB_SETTING(getNumber,"DebugMode") isEqualTo 1) then {
    diag_log format["Query: %1",_query];
};

[_query,1] call DB_fnc_asyncCall;

uiSleep 0.3;

_queryResult = [_query,2] call DB_fnc_asyncCall;
//systemChat format["House ID assigned: %1",_queryResult select 0];
_container setVariable ["container_id",(_queryResult select 0),true];
