#include <macro.h>
/*
	File: fn_vehInvSearch.sqf
	Author: Bryan "Tonic" Boardwine
	edited by [midgetgrimm]
	Description:
	Searches the vehicle for illegal items.
*/
private["_vehicle","_vehicleInfo","_value","_list"];
_vehicle = cursorTarget;
_list = ["Air","Ship","LandVehicle"];
if(isNull _vehicle OR {!(KINDOF_ARRAY(_vehicle,_list))}) exitWith {};

_vehicleInfo = _vehicle GVAR ["Trunk",[]];
if(EQUAL(count _vehicleInfo,0)) exitWith {hint localize "STR_Cop_VehEmpty"};
//diag_log format["|_|_|_|_| %1 _vehicleInfo",_vehicleInfo];
_value = 0;
_illegalValue = 0;
{
	_var = SEL(_x,0);
	_val = SEL(_x,1);
	_illegalItemVar = M_CONFIG(getText,"VirtualItems",_var,"variable");
	_illegalPrice = M_CONFIG(getNumber,"VirtualItems",_var,"sellPrice");
	_isIllegalItem = M_CONFIG(getNumber,"VirtualItems",_var,"illegal");
	if(_isIllegalItem == 1 ) then{
		_illegalValue = _illegalValue + (round(_val * _illegalPrice / 2));
	};
	
} foreach (SEL(_vehicleInfo,0));
_value = _illegalValue;
if(_value > 0) then {
	[[0,"STR_NOTF_VehContraband",true,[[_value] call life_fnc_numberText]],"life_fnc_broadcast",true,false] call life_fnc_MP;
	ADD(BANK,_value);
	_vehicle SVAR ["Trunk",[],true];
} else {
	//code taken from Maximum's Altis Life with permission, simple but its where i got it from
	if (!isNull _vehicle) then {
		closeDialog 0;
		sleep 0.01;
		[_vehicle] call life_fnc_openInventory;
		hint "Force opened the inventory of the vehicle";
	} else {
		hint "Trunk must be jammed..";
	};
	//end maximum code
	//hint localize "STR_Cop_NoIllegalVeh";
};
/*
//just saving default code
#include <macro.h>
//File: fn_vehInvSearch.sqf Author: Bryan "Tonic" Boardwine Description:Searches the vehicle for illegal items.
private["_vehicle","_vehicleInfo","_value","_list"];
_vehicle = cursorTarget;
_list = ["Air","Ship","LandVehicle"];
if(isNull _vehicle OR {!(KINDOF_ARRAY(_vehicle,_list))}) exitWith {};

_vehicleInfo = _vehicle GVAR ["Trunk",[]];
if(EQUAL(count _vehicleInfo,0)) exitWith {hint localize "STR_Cop_VehEmpty"};

_value = 0;
{
	_var = SEL(_x,0);
	_val = SEL(_x,1);
	
	if(EQUAL(ITEM_ILLEGAL(_var),1)) then {
		if(!(EQUAL(ITEM_SELLPRICE(_var),-1))) then {
			ADD(_value,(round(_val * ITEM_SELLPRICE(_var) / 2)));
		};
	};
} foreach (SEL(_vehicleInfo,0));

if(_value > 0) then {
	[[0,"STR_NOTF_VehContraband",true,[[_value] call life_fnc_numberText]],"life_fnc_broadcast",true,false] call life_fnc_MP;
	ADD(BANK,_value);
	_vehicle SVAR ["Trunk",[],true];
} else {
	hint localize "STR_Cop_NoIllegalVeh";
};
*/
