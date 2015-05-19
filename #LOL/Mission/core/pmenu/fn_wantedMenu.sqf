#include <macro.h>
/*
	File: fn_wantedMenu.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the Wanted menu and connects to the APD.
*/
private["_display","_list","_name","_crimes","_bounty","_units"];
disableSerialization;

createDialog "life_wanted_menu";

_display = findDisplay 2400;
_list = _display displayCtrl 1500;
lbClear _list;
_units = [];

{
	if (((side _x) != west) && alive _x) then {
		_side = switch(side _x) do {case civilian : {"CIVIL"}; case independent : {"SAMU"}; default {"??"};};
		_list lbAdd format["%1 - %2", _x getVariable["realname",name _x],_side];
		_list lbSetdata [(lbSize _list)-1,str(_x)];
	};
} foreach playableUnits;