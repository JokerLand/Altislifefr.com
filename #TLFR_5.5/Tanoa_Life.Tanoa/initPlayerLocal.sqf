#include "script_macros.hpp"
#include "SHK_Fastrope.sqf"
/*
    File: initPlayerLocal.sqf
    Author:

    Description:
    Starts the initialization of the player.
*/
if (!hasInterface && !isServer) exitWith {
    [] call compile PreprocessFileLineNumbers "\life_hc\initHC.sqf";
}; //This is a headless client.

#define CONST(var1,var2) var1 = compileFinal (if (var2 isEqualType "") then {var2} else {str(var2)})
#define LIFE_SETTINGS(TYPE,SETTING) TYPE(missionConfigFile >> "Life_Settings" >> SETTING)

CONST(BIS_fnc_endMission,BIS_fnc_endMission);
if (LIFE_SETTINGS(getNumber,"spyGlass_toggle") isEqualTo 1) then {[] execVM "SpyGlass\fn_initSpy.sqf";};

[] execVM "core\init.sqf";
[] execVM "core\functions\fn_CacherMarkers.sqf";

//Desactivation vue satellite
if (isNil "tm4_handler_disableGroupView") then {tm4_handler_disableGroupView = [] spawn {while {alive player} do {waitUntil {sleep .5; cameraView == "group"}; player switchCamera "Internal"; sleep .5; }; terminate tm4_handler_disableGroupView; tm4_handler_disableGroupView = nil; }; };
