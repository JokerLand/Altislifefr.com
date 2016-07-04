private["_unit","_amount"];
if(playerSide != west) exitWith {hint "Vous ne disposez pas des habilitations requise pour faire cela"};
if((lbCurSel 2406) == -1) exitWith {hint "Vous devez sélectionner quelqu'un."};
if((lbCurSel 2407) == -1) exitWith {hint "Vous devez choisir parmi un crime de la liste."};
_unit = lbData [2406,lbCurSel 2406];
_unit = call compile format["%1",_unit];
_amount = lbData [2407,lbCurSel 2407];
if(isNil "_unit") exitWith {};
if(side _unit == west) exitWith {hint "Vous ne pouvez pas ajouter des policiers à la WantedList" };
if(side _unit == east) exitWith {hint "Vous ne pouvez pas ajouter des membres de l'armée à la WantedList" };
if(side _unit == independent) exitWith {hint "Vous ne pouvez pas ajouter des medecins à la WantedList" };
if(_unit == player) exitWith {hint "Vous ne pouvez pas vous ajouter vous-même à la WantedList";};
if(isNull _unit) exitWith {};

[[1,"STR_Wanted_AddP", true, [_unit getVariable["realname",name _unit],_amount,getPlayerUID _unit]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;

[[getPlayerUID _unit,_unit getVariable["realname",name _unit],_amount],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
