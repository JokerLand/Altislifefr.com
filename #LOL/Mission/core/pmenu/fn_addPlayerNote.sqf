if(isNull stic_current_target) exitWith {};

#include <macro.h>
if(__GETC__(life_coplevel) < 2) exitWith {hint "En tant que GAV, vous ne pouvez pas faire cela"};

disableSerialization;

_display = findDisplay 2400;
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];

if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};

_civName = _unit getVariable ["realname",name player];
stic_current_target = _unit;

createDialog "Life_note_apply";

ctrlSetText[1002,format["Joueur : %1",_civName]];