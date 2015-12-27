/*

Fichier : fn_AltislifefrErreur
Auteur : Sakzy

Utilisation :
			  exitWith { [localize "STR_GNOTF_CreateGang"] call life_fnc_Erreur;};
			  exitWith { ["Cible invalide"] call life_fnc_Erreur; };
*/

private ["_msg"];
_msg = _this select 0;

hint parseText format
[
	"<t align='center' size='2' font='PuristaMedium'color='#5882FA'>INFORMATIONS</t><br/>
	<t align='center'>______________________</t><br/>
	<t size='1.5'>%1</t><br/>
	<t align='center'>______________________</t>", _msg
];