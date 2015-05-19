/*
	File: fn_giveItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected item & amount to the selected player and
	removes the item & amount of it from the players virtual
	inventory.
*/
private["_unit"];
ctrlShow[1603,false];
if((lbCurSel 1400) == -1) exitWith {hint  "Vous devez séléctionner quelqu'un !";ctrlShow[1603,true];};
_unit = lbData [1400,lbCurSel 1400];
_unit = call compile format["%1",_unit];
if((lbCurSel 1300) == -1) exitWith {hint "Vous devez choisir un item.";ctrlShow[1603,true];};
_item = lbData [1300,(lbCurSel 1300)];
if(isNil "_unit") exitWith {ctrlShow[1603,true];};
if(_unit == player) exitWith {ctrlShow[1603,true];};
if(isNull _unit) exitWith {ctrlShow[1603,true];};

//A series of checks *ugh*
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "Le joueur séléctionné n'est pas a portée";};
if(!([false,_item,1] call life_fnc_handleInv)) exitWith {hint "Erreur";ctrlShow[1603,true];};
[[_unit,1,_item,player],"life_fnc_receiveItem",_unit,false] spawn life_fnc_MP;
_type = [_item,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Vous avez donné un(e) %2 à %1",_unit getVariable["realname",name _unit],_type];
[] call life_fnc_p_updateMenu;

ctrlShow[1603,true];