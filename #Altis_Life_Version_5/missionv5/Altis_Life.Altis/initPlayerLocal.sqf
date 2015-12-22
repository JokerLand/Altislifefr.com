/*
	File: initPlayerLocal.sqf
	
	Description:
	Starts the initialization of the player.
*/
"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
if(!hasInterface) exitWith {}; //This is a headless client, he doesn't need to do anything but keep being headless..
#define CONST(var1,var2) var1 = compileFinal (if(typeName var2 == "STRING") then {var2} else {str(var2)})
CONST(BIS_fnc_endMission,BIS_fnc_endMission);

if (isNil "tm4_handler_disableGroupView") then {tm4_handler_disableGroupView = [] spawn {while {alive player} do {waitUntil {sleep .5; cameraView == "group"}; player switchCamera "Internal"; sleep .5; }; terminate tm4_handler_disableGroupView; tm4_handler_disableGroupView = nil; }; };

//[] execVM "SpyGlass\fn_initSpy.sqf";
[] execVM "core\init.sqf";