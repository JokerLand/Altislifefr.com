﻿/*
	File: fn_p_updateMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the player menu (Virtual Interaction Menu)
*/
private["_dialog","_inv","_lic","_licenses","_near","_near_units","_mstatus","_shrt","_side"];
disableSerialization;
waitUntil {!isNull findDisplay 2001};
_side = switch(playerSide) do {case west:{"cop"}; case civilian:{"civ"}; case independent:{"med"};};
_dialog = findDisplay 2001;
_inv = _dialog displayCtrl 1300;
_cash = _dialog displayCtrl 1101;
_bank = _dialog displayCtrl 1100;
_near = _dialog displayCtrl 1400;
_near_i = _dialog displayCtrl 1401;
_lic = _dialog displayCtrl 1200;
_weight = _dialog displayCtrl 1102;
[] spawn life_fnc_adminMenuDisable;
_struct = "";
lbClear _inv;
lbClear _near;
lbClear _near_i;
switch(playerSide) do
{
	case west: 
	{
		ctrlShow[1605,false];
	};
	case civilian:
	{
		ctrlShow[1613,false];
	};
};
//Near players
_near_units = [];
{ if(player distance _x < 10) then {_near_units set [count _near_units,_x];};} foreach playableUnits;
{
	if(!isNull _x && alive _x && player distance _x < 10 && _x != player) then
	{
		_near lbAdd format["%1 - %2",_x getVariable["realname",name _x], side _x];
		_near lbSetData [(lbSize _near)-1,str(_x)];
		_near_i lbAdd format["%1 - %2",_x getVariable["realname",name _x], side _x];
		_near_i lbSetData [(lbSize _near)-1,str(_x)];
	};
} foreach _near_units;

_cash ctrlSetText format ["%1 €",[life_cash] call life_fnc_numberText];
_bank ctrlSetText format ["%1 €",[life_atmcash] call life_fnc_numberText];
_weight ctrlSetText format ["%1 / %2", life_carryWeight, life_maxWeight];
{
	_str = [_x] call life_fnc_varToStr;
	_shrt = [_x,1] call life_fnc_varHandle;
	_val = missionNameSpace getVariable _x;
	if(_val > 0) then
	{
		_inv lbAdd format["%1x - %2",_val,_str];
		_inv lbSetData [(lbSize _inv)-1,_shrt];
	};
} foreach life_inv_items;
{
	if((_x select 1) == _side) then
	{
		_str = [_x select 0] call life_fnc_varToStr;
		_val = missionNamespace getVariable (_x select 0);
		if(_val) then
		{
			_struct = _struct + format["%1<br/>",_str];
		};
	};
} foreach life_licenses;

if(_struct == "") then
{
	_struct = "Aucune License";
};

_lic ctrlSetStructuredText parseText format["
<t size='0.7px'>
%1
</t>
",_struct];