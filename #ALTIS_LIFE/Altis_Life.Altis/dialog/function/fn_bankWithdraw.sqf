/*
	COPY PASTE TIME
*/
private["_val"];
_val = parseNumber(ctrlText 2702);
if(_val > 999999) exitWith {hint localize "STR_ATM_WithdrawMax";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint localize "STR_ATM_notnumeric"};
if(_val > life_atmcash) exitWith {hint localize "STR_ATM_NotEnoughFunds"};
if(_val < 100 && life_atmcash > 20000000) exitWith {hint localize "STR_ATM_WithdrawMin"}; //Temp fix for something.
if(life_atm_last_withdraw + 5 > time) exitWith {hint "Pas si vite! Tu dois attendre 5 secondes avant de retirer/déposer à nouveau.";};

life_cash = life_cash + _val;
life_atmcash = life_atmcash - _val;
hint format [localize "STR_ATM_WithdrawSuccess",[_val] call life_fnc_numberText];
[] call life_fnc_atmMenu;
[] call SOCK_fnc_updateRequestMoney; //Silent Sync
life_atm_last_withdraw = time;