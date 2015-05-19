if(isNull stic_current_target) exitWith {};
#include <macro.h>
if((__GETC__(life_adminlevel) < 7) && (__GETC__(life_coplevel) < 3)) exitWith {};
disableSerialization;

_display = findDisplay 2400;
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];

if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};

_civName = _unit getVariable ["realname",name player];
stic_current_target = _unit;

createDialog "Life_wanted_apply";

ctrlSetText[1002,format["Joueur : %1",_civName]];