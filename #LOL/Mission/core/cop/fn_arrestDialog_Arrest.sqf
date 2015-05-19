/*

	Player clicked arrest/ok

*/

private ["_time"];

if(playerSide != west) exitWith {};
if(isNil "life_pInact_curTarget") exitWith {hint "Joueur introuvable."};

//Get minutes
_time = ctrlText 1400;


if(!([_time] call fnc_isnumber)) exitWith
{
	hint "Vous devez entrer un nombre.";
};

_time = parseNumber _time; //requested number
_time = round _time;

if(_time < 5 || _time > 60) exitWith { hint hint "La durée doit être comprise entre 5 et 60 minutes !"; };
_note = ctrlText 1401;
_reason = ctrlText 1402;
closeDialog 0;
[life_pInact_curTarget, _time, _note, _reason] call life_fnc_arrestAction;