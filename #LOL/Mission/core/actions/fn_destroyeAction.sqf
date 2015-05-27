/*
	File: fn_destroyeAction.sqf
	Author: Bryan "Tonic" Boardwine and altislifefr.com
	
	Description:
	Détruit le véhicule même s'il est assuré
*/
private["_vehicle","_type","_time","_price","_vehicleData","_upp","_ui","_progress","_pgText","_cP"];
_vehicle = cursorTarget;
if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {};
if(player distance cursorTarget > 10) exitWith {};
if((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship")) then
{
	_vehicleData = _vehicle getVariable["vehicle_info_owners",[]];
	if(count _vehicleData == 0) exitWith {deleteVehicle _vehicle}; //Bad vehicle.
	_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
	[[0,"STR_NOTF_BeingDestroye",true,[(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	life_action_inUse = true;
	
	_upp = localize "STR_NOTF_Destroying";
	//Setup our progress bar.
	disableSerialization;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;
	while{true} do
	{
		sleep 0.09;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vehicle > 10) exitWith {};
		if(!alive player) exitWith {};
	};
	5 cutText ["","PLAIN"];
	
	if(player distance _vehicle > 10) exitWith {hint localize "STR_NOTF_DestroyingCancelled"; life_action_inUse = false;};
	if(!alive player) exitWith {life_action_inUse = false;};
	//_time = _vehicle getVariable "time";
	//if(isNil {_time}) exitWith {deleteVehicle _vehicle; hint "This vehicle was hacked in"};
	//if((time - _time)  < 120) exitWith {hint "This is a freshly spawned vehicle, you have no right impounding it."};
	if((count crew _vehicle) == 0) then
	{
		if(!((_vehicle isKindOf "Car") || (_vehicle isKindOf "Air") || (_vehicle isKindOf "Ship"))) exitWith {life_action_inUse = false;};
		_type = getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName");
		
		
		life_destroye_inuse = true;
        [[_vehicle,true,player],"TON_fnc_vehicleDeleteAction",false,false] spawn life_fnc_MP;
		waitUntil {!life_destroye_inuse};
		hint format[localize "STR_NOTF_Destroyed",_type];
		[[0,"STR_NOTF_HasDestroyed",true,[profileName,(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;

	}
		else
	{
		hint localize "STR_NOTF_DestroyingCancelled";
	};
};
life_action_inUse = false;