#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/
if(__GETC__(life_adminlevel) < 7) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

createDialog "RscDisplayDebugPublic";
//[[0,format["Admin %1 a ouvert la console de debug.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;