/*
	File: fn_confirmRenfort
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Confirm Renfort
*/

createDialog "life_renfort_on";
disableSerialization;
waitUntil {!isnull (findDisplay 2600)};
_display = findDisplay 2600;
_control = _display displayCtrl 2601;

_control ctrlSetStructuredText parseText format["<t align='center'><t size='.8px'>" +(localize "STR_Cop_Renfort")];