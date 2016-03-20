/*
	File: fn_confirmStop
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Confirm Se rendre
*/

createDialog "life_confirm_on";
disableSerialization;
waitUntil {!isnull (findDisplay 2650)};
_display = findDisplay 2650;
_control = _display displayCtrl 2651;

_control ctrlSetStructuredText parseText format["<t align='center'><t size='.8px'>" +(localize "STR_Cop_Se_Rendre")];
