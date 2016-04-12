#include <macro.h>
/*
	File: fn_robcom.sqf
	Author: Bryan "Tonic" Boardwine
	Edit : AltisLifeFR.com

	Description:
	Confisque la/les radios du suspect
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _unit OR !isPlayer _unit) exitWith {};

_unit linkItem "tf_anprc152";
_unit unassignItem "tf_anprc152";
_unit linkItem "tf_anprc148jem";
_unit unassignItem "tf_anprc148jem";

_unit removeItems "tf_anprc152";
_unit removeItems "tf_anprc148jem";


[] call life_fnc_saveGear;

hint parseText format
[
	"<t align='center' size='2' font='PuristaMedium'color='#007e00'>INFORMATIONS</t><br/>
	<t align='center'>______________________</t><br/>
	<t size='1.5'>Vous avez retiré les moyens de communication de l'individu, merci de lui en aviser</t><br/>
	<t align='center'>______________________</t>"
];