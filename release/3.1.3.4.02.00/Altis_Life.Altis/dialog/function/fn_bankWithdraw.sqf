/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999) exitWith {hint "Vous ne pouvez pas retirer plus de $999,999";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "Vous devez entrer un nombre."};
if(_val > life_atmcash) exitWith {hint "Vous n'avez pas autant sur votre compte en banque !"};
if(_val < 100 && life_atmcash > 20000000) exitWith {hint "Vous ne pouvez pas retirer moins de $100"}; //Temp fix for something.

life_cash = life_cash + _val;
life_atmcash = life_atmcash - _val;
hint format ["Vous avez retiré $%1 de votre compte en banque",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[] call SOCK_fnc_updateRequest; //Silent Sync