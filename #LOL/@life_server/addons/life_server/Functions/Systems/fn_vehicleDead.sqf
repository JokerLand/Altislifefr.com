/*
	File: fn_vehicleDead.sqf
	
	Description:
	Tells the database that this vehicle has died and can't be recovered.
*/
private["_vehicle","_plate","_uid","_query","_sql","_dbInfo","_thread"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
hint str _vehicle;
if(isNull _vehicle) exitWith {}; //NULL

_dbInfo = _vehicle getVariable["dbInfo",[]];
if(count _dbInfo == 0) exitWith {};
_uid = _dbInfo select 0;
_plate = _dbInfo select 1;

_data = _vehicle getVariable ["Trunk",[]];
if(count _data == 0) then {_vehicle setVariable["Trunk",[[],0],true]; _data = [];} else {_data = _data select 0;};

_isInsured = _vehicle getVariable ["isInsure",false];

if(_isInsured) exitWith {
	_query = format["UPDATE vehicles SET active='0' WHERE pid='%1' AND plate='%2'",_uid,_plate];

	waitUntil {!DB_Async_Active};
	_thread = [_query,1] call DB_fnc_asyncCall;
};

_objects = "";

//Trunk Inventory Items
{
	if((_x select 0) != "money") then
	{
		_iVar = [_x select 0,0] call life_fnc_varHandle;
		_iName = [_iVar] call life_fnc_varToStr;
		_iVal = _x select 1;
		if(_iVal > 0) then
		{
			_objects = format["%1 -- %2 x %3",_objects,_iName,_iVal];
		};
	};
} foreach _data;

_vehicleClass = typeOf _vehicle;
_vehicle = getText(configFile >> "CfgVehicles" >> _vehicleClass >> "displayName");

[0,format["Véhicule %1 du joueur PID [%2] a été détruit et contenait : %3",_vehicle,_uid,_objects]] spawn life_fnc_serverLog;

_query = format["UPDATE vehicles SET alive='0' WHERE pid='%1' AND plate='%2' LIMIT 1",_uid,_plate];

waitUntil {!DB_Async_Active};
_thread = [_query,1] call DB_fnc_asyncCall;

sleep (1.3 * 60);
if(!isNil "_vehicle" && {!isNull _vehicle}) then {
	deleteVehicle _vehicle;
};