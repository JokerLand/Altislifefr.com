#include <macro.h>
/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(EQUAL(_data,"")) exitWith {hint "Vous avez rien sélectionné à retirer.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Vous n'avez pas saisi un format de nombre réel."};
if(parseNumber(_value) <= 0) exitWith {hint "Vous devez entrer un montant réel que vous souhaitez supprimer."};
if(EQUAL(ITEM_ILLEGAL(_data),1) && ([west,visiblePosition player,100] call life_fnc_nearUnits)) exitWith {titleText["Ceci est un élément illégal et les flics sont à proximité , vous ne pouvez pas disposer de la preuve","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Vous ne pouvez pas supprimer un article lorsque vous êtes dans un véhicule.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Impossible de supprimer, peut être vous ne disposez pas de ce montant?"};

hint format["Vous avez supprimé avec succès %1 %2 de votre inventaire.",(parseNumber _value),(localize ITEM_NAME(_data))];
	
[] call life_fnc_p_updateMenu;