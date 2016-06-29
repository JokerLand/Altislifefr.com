#include "..\..\script_macros.hpp"
/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the HUD when it needs to.
*/
private["_ui","_food","_water","_health"];
disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_alcool = _ui displayCtrl 23520;


//Update food
_food ctrlSetPosition [safeZoneX+safeZoneW-0.10,safeZoneY+safeZoneH-0.400];
_food ctrlSetText format["%1%2", life_hunger, "%"];
_food ctrlSetBackgroundColor [0, 0, 0, 0.5]; 
if(life_thirst < 0.3) then { 
	_food ctrlSetBackgroundColor [255, 0, 0, 0.5]; 
};
_food ctrlCommit 0;

//Update Water
_water ctrlSetPosition [safeZoneX+safeZoneW-0.10,safeZoneY+safeZoneH-0.353];
_water ctrlSetText format["%1%2", life_thirst, "%"];
_water ctrlSetBackgroundColor [0, 0, 0, 0.5]; 
if(life_thirst < 0.3) then { 
	_water ctrlSetBackgroundColor [255, 0, 0, 0.5]; 
};
_water ctrlCommit 0;


//Update Health
_health ctrlSetPosition [safeZoneX+safeZoneW-0.10,safeZoneY+safeZoneH-0.306];
_dam = round((1 - (damage player)) * 100);
_health ctrlSetText format["%1%2", _dam, "%"];
_health ctrlSetBackgroundColor [0, 0, 0, 0.5]; 
if(damage player > 0.5) then { 
	_health ctrlSetBackgroundColor [255, 0, 0, 0.5]; 	
};
_health ctrlCommit 0; 

//Update Alcool
_alcool ctrlSetPosition [safeZoneX+safeZoneW-0.10,safeZoneY+safeZoneH-0.259];
_alcool ctrlSetText format["%1", life_drink];
_alcool ctrlSetBackgroundColor [0, 0, 0, 0.5]; 
if(life_drink > 0.12) then { 
	_alcool ctrlSetBackgroundColor [255, 0, 0, 0.5]; 	
};
_alcool ctrlCommit 0;