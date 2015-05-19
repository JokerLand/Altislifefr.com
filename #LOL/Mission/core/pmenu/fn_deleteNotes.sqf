if(isNull stic_current_target) exitWith {};
#include <macro.h>
if(__GETC__(life_adminlevel) < 7) exitWith {hint "Vous ne pouvez pas faire cela."};
disableSerialization;

_display = findDisplay 2400;
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];

if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
_result = ["Êtes-vous sûr de vouloir supprimer les notes de cette personne ?", "Confirmation", true, true] call BIS_fnc_guiMessage;
if(_result) then {
	_pname = player getVariable ["realname",name player];
	_uname = _unit getVariable ["realname",name _unit];
	_message = format["%1 a supprimé les notes de %2 !",_pname,_uname];
	adminLog = _message;
	publicVariableServer "adminLog";

	[[1,getPlayerUID _unit],"TON_fnc_delInfos",false,false] spawn life_fnc_MP;
	sleep 2;
	[] spawn life_fnc_wantedInfo;
};