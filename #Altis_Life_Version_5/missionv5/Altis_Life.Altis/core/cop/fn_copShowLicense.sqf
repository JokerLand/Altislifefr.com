/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Deathblade
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Vous n'êtes pas un flic !";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_coplevel = call life_coplevel;

switch ( _coplevel ) do
{
	case 1: { _rang = "Rang 1"; };
	case 2: { _rang = "Rang 2"; };
	case 3: { _rang = "Rang 3"; };
	case 4: { _rang = "Rang 4"; };
	case 5: { _rang = "Rang 5"; };
	case 6: { _rang = "Rang 6"; };
	case 7: { _rang = "Rang 7"; };
	default {_rank =  "Erreur";};
};

_message = format["<img size='10' color='#FFFFFF' image='textures\insigne.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Policier d'Altis</t>", name player, _rang];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
