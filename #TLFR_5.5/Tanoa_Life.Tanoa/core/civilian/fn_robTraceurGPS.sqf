/*
	File: fn_robPortable.sqf
	Author: Bryan "Tonic" Boardwine
	Edit by: UppperM

	Description: Voler le traceur GPS

*/
private["_robberTraceurGPS"];
_robberTraceurGPS = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

player removeItems "ItemGPS";

player linkItem "ItemGPS";
player unassignItem "ItemGPS";

[] call life_fnc_sessionUpdate; //Should make weapon remove persistent
hint "Votre traceur GPS a été volé/saisi.";