private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 3700)};
_display = findDisplay 3700;
_list = _display displayCtrl 3702;

lbClear _list;

[_list, 0, 0] call life_fnc_addTalentRow;