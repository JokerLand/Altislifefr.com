#include <macro.h>
/*
	File: fn_adminGodMode.sqf
	Author: Tobias 'Xetoxyc' Sittenauer
 
	Description: Enables God mode for Admin
*/

if(__GETC__(life_adminlevel) < 7) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

[] spawn {
  while {dialog} do {
   closeDialog 0;
   sleep 0.01;
  };
};
 
if(life_god) then {
	life_god = false;
	titleText ["God mode disabled","PLAIN"]; titleFadeOut 2;
	player allowDamage true;
	_pname = player getVariable ["realname",name player];
	_message = format["%1 a activé le God Mode !",_pname];
	adminLog = _message;
	publicVariableServer "adminLog";
} else {
	life_god = true;
	titleText ["God mode enabled","PLAIN"]; titleFadeOut 2;
	player allowDamage false;
	_pname = player getVariable ["realname",name player];
	_message = format["%1 a désactivé le God Mode !",_pname];
	adminLog = _message;
	publicVariableServer "adminLog";
}; 