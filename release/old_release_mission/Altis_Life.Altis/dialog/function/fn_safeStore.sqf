#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	File: fn_safeStore.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Gateway copy of fn_vehStoreItem but designed for the safe.
*/
private["_ctrl","_num"];
disableSerialization;
_ctrl = ctrlSelData(3503);
_num = ctrlText 3506;

//Error checks
if(!([_num] call fnc_isnumber)) exitWith {hint "Format du nombre invalide";};
_num = parseNumber(_num);
if(_num < 1) exitWith {hint "Vous ne pouvez rien entrer en dessous de 1!";};
if(_ctrl != "goldbar") exitWith {hint "Vous ne pouvez pas stocker autre chose que des lingots d'or dans le coffre."};
if(_num > life_inv_goldbar) exitWith {hint format["Vous n'avez pas %1 lingots d'or sur vous",_num];};

//Store it.
if(!([false,_ctrl,_num] call life_fnc_handleInv)) exitWith {hint "Ne peut pas faire le stockage.";};
_safeInfo = life_safeObj getVariable["safe",0];
life_safeObj setVariable["safe",_safeInfo + _num,true];

[life_safeObj] call life_fnc_safeInventory;