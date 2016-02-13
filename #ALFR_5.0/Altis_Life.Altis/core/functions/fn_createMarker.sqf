if(isServer OR !hasInterface) exitwith {};
/*
	File: fn_createMarker.sqf
	Author: Skalicon
	
	Description:
	Adds a marker to the map locally
*/
Private["_playerName","_pos","_marker","_text"];
_playerName = [_this,0,"",[""]] call BIS_fnc_param;
_prefix = [_this,2,"911",["911"]] call BIS_fnc_param;

_pos = _this select 1;
_text = format["%2 %1", _playerName, _prefix];
_playerName = format["%2%1", _playerName, _prefix];

deleteMarkerLocal _playerName;
_marker = createMarkerLocal [_playerName, _pos];

_marker setMarkerColorLocal "ColorBlack";
_marker setMarkerTextLocal _text;

if(_prefix == "COMA") then {
	_marker setMarkerTypeLocal "loc_Hospital";
} else {
	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerTypeLocal "mil_dot";
	sleep 300;
	deleteMarkerLocal _playerName;
};