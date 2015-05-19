/*
	READ THE FILE NAME!
*/
private["_uiDisp","_time","_timer","_state"];
disableSerialization;
_state = _this select 0;
6 cutRsc ["life_timer","PLAIN"];
_uiDisp = uiNamespace getVariable "life_timer";
_timer = _uiDisp displayCtrl 38301;
if(_state == 0) then {_time = time + (5 * 60);};
if(_state == 1) then {_time = time + (4.5 * 60);};
if(_state == 2) then {_time = time + (4 * 60);};
if(_state == 3) then {_time = time + (3.5 * 60);};
while {true} do {
	if(isNull _uiDisp) then {
		6 cutRsc ["life_timer","PLAIN"];
		_uiDisp = uiNamespace getVariable "life_timer";
		_timer = _uiDisp displayCtrl 38301;
	};
	if(round(_time - time) < 1) exitWith {};
	if(!(fed_bank getVariable["chargeplaced",false])) exitWith {};
	_timer ctrlSetText format["%1",[(_time - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
	sleep 0.08;
};
6 cutText["","PLAIN"];