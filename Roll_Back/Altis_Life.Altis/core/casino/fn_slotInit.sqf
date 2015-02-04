/*
	File: fn_slotInit.sqf
	Author: "Sakzy" - www.altislifefr.com

	Description:
	Create Dialog slotmachine.
*/
disableSerialization;
life_slot_current = _this select 3;
createDialog "slots";
_cost = "Error";
switch (life_slot_current) do
{
	case 0:{_cost = 2000;};
	case 1:{_cost = 5000;};
	case 2:{_cost = 10000;};
};

//Setup some things we aready know about.x
_ui = findDisplay 8500;
_slotText = _ui displayCtrl 1101;
_slotText ctrlSetStructuredText parseText format["Prix d'un essai = $%1",[_cost] call life_fnc_numberText];


_highPayout = [8,8,8,life_slot_current] call life_fnc_slotRewards;
_slotMax = _ui displayCtrl 1102;
_slotMax ctrlSetStructuredText parseText format["Gain max = $%1",[_highPayout] call life_fnc_numberText];