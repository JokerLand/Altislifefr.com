#include <macro.h>
/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : UpperM
*/

private["_target", "_message","_coplevel","_rang"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Vous n'êtes pas policier !";
};

if ((_target != player) && (player distance _target > 4)) exitWith {hint "Vous êtes trop loin";};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};


_coplevel = call life_coplevel;

switch ( _coplevel ) do
{
	case 1: { _rang = "Policier"; };
	case 2: { _rang = "Brigadier"; };
	case 3: { _rang = "Adjudant"; };
	case 4: { _rang = "Major"; };
	case 5: { _rang = "Lieutenant"; };
	case 6: { _rang = "Capitaine"; };
	case 7: { _rang = "Commandant"; };
	default { _rank =  "Erreur";};
};

_message = format["<img size='10' color='#FFFFFF' image='textures\insigne.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><t size='1'>Police d'Altis</t>", _rang, name player];

[[player, _message],"life_fnc_Insigne",_target,false] spawn life_fnc_MP;
