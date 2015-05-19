#include <macro.h>
/*
	File: fn_adminMarkers.sqf
	Sourced from Lystics Player Markers Loop
*/
if(__GETC__(life_adminlevel) < 5) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};
life_markers = !life_markers;
_pname = player getVariable ["realname",name player];
if(life_markers) then {
	PlayerMarkers = [];
	FinishedLoop = false;
	hint localize "STR_ANOTF_MEnabled";
	_message = format["%1 a activé ses marqueurs !",_pname];
	adminLog = _message;
	publicVariableServer "adminLog";
	while{life_markers} do {
		{
			if !(_x in allUnits) then {
				deleteMarkerLocal str _x;
			};
		} forEach PlayerMarkers;
		PlayerMarkers = [];
		{
			if(alive _x && isplayer _x) then {
				deleteMarkerLocal str _x;
				_pSee = createMarkerLocal [str _x,getPos _x];
				_pSee setMarkerTypeLocal "mil_triangle";
				_pSee setMarkerPosLocal getPos _x;
				_pSee setMarkerSizeLocal [1,1];
				_pSee setMarkerTextLocal format['%1',_x getVariable["realname",name _x]];
				_pSee setMarkerColorLocal ("ColorRed");
				PlayerMarkers = PlayerMarkers + [_x];
		};
	} forEach allUnits;
	sleep 0.2;
};
FinishedLoop = true;
} else {
	if(isNil "FinishedLoop") exitWith {};
	hint localize "STR_ANOTF_MDisabled";
	waitUntil{FinishedLoop};
	{
		deleteMarkerLocal str _x;
	} forEach PlayerMarkers;
	_message = format["%1 a désactivé ses marqueurs !",_pname];
	adminLog = _message;
	publicVariableServer "adminLog";
};