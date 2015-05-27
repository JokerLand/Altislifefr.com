/*
	File: initPlayerLocal.sqf
	
	Description:
	Starts the initialization of the player.
*/
if(!hasInterface) exitWith {}; //This is a headless client, he doesn't need to do anything but keep being headless..
0 cutText["Connexion terminée, veuillez patienter...","BLACK FADED"];
0 cutFadeOut 9999999;
0 fadeSound 0;
#define __CONST__(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
__CONST__(BIS_fnc_endMission,BIS_fnc_endMission);
[] execVM "core\init.sqf";
//[] execVM "SpyGlass\fn_initSpy.sqf";
[] spawn life_fnc_emptyFuel;

//Execute JIP code.
if((_this select 1)) then {
	[] execVM "core\jip.sqf";
};
[31,format["Joueur %1 connecte au serveur",profileName]] spawn life_fnc_logToServer;