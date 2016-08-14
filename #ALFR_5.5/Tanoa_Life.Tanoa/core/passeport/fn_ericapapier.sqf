/*
File : fn_michealpapier.sqf
Create : Black Lagoon
Edit : Artkyom - AltisLifeFr.com
*/

private["_target", "_message"];

_target = cursorTarget;

if(playerSide != civilian) exitWith
{
	hint "Vous n'êtes pas un civil !";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_message = format["<img size='10' color='#FFFFFF' image='textures\passeport.paa'/><br/><br/><t size='2.5'>Erica Harris</t><br/><t size='1.5'>Citoyen d'Altis</t><br/><t size='1'>PASSEPORT ALTISLIFEFR.COM</t>", name player];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
