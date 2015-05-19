/*
	File: fn_handleDamage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles damage, specifically for handling the 'tazer' pistol and nothing else.
*/
private["_unit","_medic"];
_unit = _this select 0;
_medic = _this select 1;
_medic_state = _medic getVariable "medic_state";
if((side _medic) != west) then {
	switch(_medic_state) do {
		case 1:
		{
			[] spawn {sleep 7.7;player setDamage 0.2;};
		};
		case 2:
		{
			[] spawn {sleep 7.7;player setDamage 0.1;};
		};
	};
};
if(medic_state < 2) then {["medic",1] call life_fnc_addStatPoint;};