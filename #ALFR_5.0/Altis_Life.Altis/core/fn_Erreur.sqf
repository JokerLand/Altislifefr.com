/*
	File: fn_error.sqf
	Author: Bryan "Tonic" Boardwine
	Edité par AltisLifeFr.com

	Description:
	Usage :
			  exitWith { [localize "STR_GNOTF_CreateGang"] call life_fnc_Erreur;};
			  exitWith { ["Invalid Target"] call life_fnc_Erreur; };


*/

private ["_msg"];
_msg = _this select 0;

hint parseText format
[
	"<t align='center' size='2' font='PuristaMedium'color='#ff3533'>! ATTENTION	!</t><br/>
	<t align='center'>______________________</t><br/>
	<t size='1.5'>%1</t><br/>
	<t align='center'>______________________</t>", _msg
];