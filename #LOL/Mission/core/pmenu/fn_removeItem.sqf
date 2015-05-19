/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[1300,(lbCurSel 1300)];
if(_data == "") exitWith {hint "Vous n'avez rien séléctionné.";};
_ind = [_data,life_illegal_items] call fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Vous ne pouvez pas détruire un objet illégal a proximité de la gendarmerie","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Vous etes dans un véhicule.","PLAIN"]};
if(!([false,_data,1] call life_fnc_handleInv)) exitWith {hint "Impossible de supprimer cet objet"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Vous avez jeté un(e) %1.", _type];
	
[] call life_fnc_p_updateMenu;