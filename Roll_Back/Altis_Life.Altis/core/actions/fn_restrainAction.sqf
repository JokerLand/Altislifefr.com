/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if(side _unit == independent) exitWith {};
if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
player say3D "cuff";
if (side player == civilian) then {
	if(life_inv_menotte < 1) exitWith { hint "Vous n'avez pas de menottes"; };
	life_inv_menotte = life_inv_menotte - 1;
	player say3D "cuff";
	hint "Vous l'avez menotté";
};
if(!isPlayer _unit) exitWith {};
//Broadcast!

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,format["%1 was restrained by %2",_unit getVariable["realname", name _unit], player getVariable["realname",name player]]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;