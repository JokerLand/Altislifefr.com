private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 4100)};
_display = findDisplay 4100;
_list = _display displayCtrl 3702;
_text = _display displayCtrl 3703;

lbClear _list;
_descText = "<t font='puristaMedium' shadow='1' size='1.7'>Règles AltisLifeFR.com</t>";

_text ctrlSetStructuredText parseText _descText;
[_list, 0] call life_fnc_addRuleRow;