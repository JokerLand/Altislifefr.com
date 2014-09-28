/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

_unit setVariable["restrained",FALSE,TRUE];
_unit setVariable["Escorting",FALSE,TRUE];
_unit setVariable["transporting",FALSE,TRUE];
detach _unit;
player say3D "cuff";

[[0,format["%1 a été relaché par %2",_unit getVariable["realname",name _unit], player getVariable["realname",name player]]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;