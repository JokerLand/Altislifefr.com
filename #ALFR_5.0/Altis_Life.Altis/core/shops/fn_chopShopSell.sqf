#include <macro.h>
/*
	File: fn_chopShopSell.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sells the selected vehicle off.
*/
disableSerialization;
private["_control","_price","_vehicle","_nearVehicles","_price2"];
if(life_chopvehicle_sell_garage + 5 > time) exitWith {hint "Pas si vite! Tu dois attendre 5 secondes avant de vendre à nouveau.";};
_control = CONTROL(39400,39402);
_price = _control lbValue (lbCurSel _control);
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format["%1", _vehicle];
_nearVehicles = nearestObjects [getMarkerPos life_chopShop,["Car","Truck"],25];
_vehicle = SEL(_nearVehicles,_vehicle);
if(isNull _vehicle) exitWith {};

hint localize "STR_Shop_ChopShopSelling";
life_action_inUse = true;
_price2 = CASH + _price;
life_chopvehicle_sell_garage = time;
[[player,_vehicle,_price,_price2],"TON_fnc_chopShopSell",false,false] call life_fnc_MP;
playSound "caching";