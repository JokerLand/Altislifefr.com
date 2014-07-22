/*
	File: fn_robReceive.sqf
	Author: Bryan "Tonic" Boardwine
*/
private["_cash"];
_cash = [_this,0,0,[0]] call BIS_fnc_param;
if(_cash == 0) exitWith {titleText["Il n'a pas d'argent..","PLAIN"]};

life_cash = life_cash + _cash;
titleText[format["Vous avez volé $%1",[_cash] call life_fnc_numberText],"PLAIN"];