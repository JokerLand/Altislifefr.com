/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!
player say3D "cuff";
// Serflex
if (side player == civilian) then {
	if(life_inv_serflex < 1) exitWith { hint "Vous n'avez pas de Serflex sur vous!"; };
	life_inv_serflex = life_inv_serflex - 1;
	player say3D "cuff";
	hint "Vous avez attaché votre cible avec un Serflex. Pour plus d'options, utilisez votre menu d'interaction (Par défaut : 'Windows gauche')";
};

_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] call life_fnc_MP;
[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] call life_fnc_MP;