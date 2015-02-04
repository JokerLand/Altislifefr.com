#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
	File: fn_safeTake.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gateway to fn_vehTakeItem.sqf but for safe(s).
*/
private["_ctrl","_num","_safeInfo"];
disableSerialization;

if((lbCurSel 3502) == -1) exitWith {hint "Vous devez selectionner un objet!";};
_ctrl = ctrlSelData(3502);
_num = ctrlText 3505;
_safeInfo = life_safeObj getVariable["safe",0];

//Error checks
if(!([_num] call fnc_isnumber)) exitWith {hint "Format du nombre invalide";};
_num = parseNumber(_num);
if(_num < 1) exitWith {hint "Vous ne pouvez rien entrer en dessous de 1!";};
if(_ctrl != "goldbar") exitWith {hint "Vous ne pouvez pas stocker autre chose que des lingots d'or dans le coffre."};
if(_num > _safeInfo) exitWith {hint format["Il n'y a pas %1 lingots d'or dans le coffre!",_num];};

//Secondary checks
_num = [_ctrl,_num,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_num == 0) exitWith {hint "Votre inventaire est plein."};


//Take it
if(!([true,_ctrl,_num] call life_fnc_handleInv)) exitWith {hint "Ne peut pas être ajouté a votre inventaire.";};
life_safeObj setVariable["safe",_safeInfo - _num,TRUE];
[life_safeObj] call life_fnc_safeInventory;