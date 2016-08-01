/*
    File: fn_seizePlayerWeaponAction.sqf
    Author: Skalicon
    Edited: CamaroZ
    Description:
    Removes the players weapons client side
*/

private["_unit"];

_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};


[player] remoteExec ["life_fnc_removerarmas",_unit];

hint "Vos armes ont été saisies par la Police";