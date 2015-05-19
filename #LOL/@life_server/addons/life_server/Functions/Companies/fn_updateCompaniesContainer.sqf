/*
	File: fn_updateCompaniesContainer.sqf
	Author: Mash6
*/
private["_house"];
_house = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _house) exitWith {};

_trunkData = _house getVariable["Trunk",[[],0]];
_contID = _house getVariable["contID",-1];

if(_contID == -1) exitWith {};

_trunkData = [_trunkData] call DB_fnc_mresArray;
_query = format["UPDATE containers SET inventory='%1' WHERE id='%2' LIMIT 1",_trunkData,_contID];
waitUntil{!DB_Async_Active};
[_query,1] call DB_fnc_asyncCall;