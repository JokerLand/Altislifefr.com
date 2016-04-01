/*
File : fn_copShowLicense.sqf
Create : Black Lagoon
Edit : Artkyom - AltisLifeFr.com
*/

private["_target", "_message"];

_target = cursorTarget;

if(playerSide != west) exitWith
{
	hint "Vous n'êtes pas un flic !";
};

if( isNull _target) then {_target = player;};

if( !(_target isKindOf "Man") ) then {_target = player;};

if( !(alive _target) ) then {_target = player;};

_message = format["<img size='10' color='#FFFFFF' image='icons\insigne.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1'>Fonctionnaire de Police</t>", name player];

[[player, _message],"life_fnc_copLicenseShown",_target,false] spawn life_fnc_MP;
