/*
	File: fn_bankTransfer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Figure it out again.
*/
private["_val","_unit","_tax"];
_val = parseNumber(ctrlText 2702);
_unit = call compile format["%1",(lbData[2703,(lbCurSel 2703)])];
if(isNull _unit) exitWith {};
if((lbCurSel 2703) == -1) exitWith {hint "Vous devez selectionner quelqu'un à qui transferer"};
if(isNil "_unit") exitWith {hint "Le joueur ne semble pas exister?"};
if(_val > 999999) exitWith {hint "Vous ne pouvez pas transferer plus de $999,999";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "Vous devez entrer un nombre."};
if(_val > life_atmcash) exitWith {hint "Vous n'avez pas assez d'argent sur votre compte!"};
_tax = [_val] call life_fnc_taxRate;
if((_val + _tax) > life_atmcash) exitWith {hint format["Vous n'avez pas assez d'argent sur votre compte, pour transferer $%1 vous avez besoin de $%2 pour la taxe.",_val,_tax]};

life_atmcash = life_atmcash - (_val + _tax);

[[_val,player getVariable["realname",name player]],"clientWireTransfer",_unit,false] spawn life_fnc_MP;
[] call life_fnc_atmMenu;
hint format["Vous avez transferer $%1 à %2.\n\nA un taxe de $%3 a été retirée de votre compte.",[_val] call life_fnc_numberText,_unit getVariable["realname",name _unit],[_tax] call life_fnc_numberText];
[] call SOCK_fnc_updateRequest; //Silent Sync