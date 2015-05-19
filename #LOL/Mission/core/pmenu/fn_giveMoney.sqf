/*
	File: fn_giveMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected amount of money to the selected player.
*/
private["_unit","_amount"];
_amount = ctrlText 1500;
ctrlShow[1600,false];
if((lbCurSel 1401) == -1) exitWith {hint "Vous devez séléctionner quelqu'un.";ctrlShow[1600,true];};
_unit = lbData [1401,lbCurSel 1401];
_unit = call compile format["%1",_unit];
if(isNil "_unit") exitWith {ctrlShow[1600,true];};
if(_unit == player) exitWith {ctrlShow[1600,true];};
if(isNull _unit) exitWith {ctrlShow[1600,true];};
if(parseNumber(_amount) > 999999) exitWith {hint "Vous ne pouvez pas donner plus de 999 999 €"};
//A series of checks *ugh*
if(!life_use_atm) exitWith {hint "You recently robbed the bank! You can't give money away just yet.";ctrlShow[1600,true];};
if(!([_amount] call fnc_isnumber)) exitWith {hint "You didn't enter an actual number format.";ctrlShow[1600,true];};
if(parseNumber(_amount) <= 0) exitWith {hint "You need to enter an actual amount you want to give.";ctrlShow[1600,true];};
if(parseNumber(_amount) > life_cash) exitWith {hint "You don't have that much to give!";ctrlShow[1600,true];};
if(isNull _unit) exitWith {ctrlShow[1600,true];};
if(isNil "_unit") exitWith {ctrlShow[1600,true]; hint "The selected player is not within range";};
hint format["Vous avez donné %1 € à %2",[(parseNumber(_amount))] call life_fnc_numberText,_unit getVariable["realname",name _unit]];
life_cash = life_cash - (parseNumber(_amount));
[0] call SOCK_fnc_updatePartial;
[[_unit,_amount,player],"life_fnc_receiveMoney",_unit,false] spawn life_fnc_MP;
[] call life_fnc_p_updateMenu;

if(parseNumber(_amount) > 200000) then {
	_pname = player getVariable["realname",profileName];
	_uname = _unit getVariable["realname",name _unit];
	_upid = getPlayerUID _unit;
	[2,format["Joueur %1 a donné %2 € à %3 [PID RECEVEUR : %4]",_pname,_val_uname,_upid]] call life_fnc_logToServer;
};

ctrlShow[1600,true];