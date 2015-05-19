private["_display","_text","_index","_talent","_label","_req","_learn"];
disableSerialization;
_display = findDisplay 3900;
_text = _display displayCtrl 3703;
_index = lbData[3702,lbCurSel (3702)];
_index = call compile format["%1", _index];

if(isNil "_index") exitWith {_text ctrlSetText "Erreur.";};

_rule = [];
{
	if ((_x select 0) == _index) exitWith{ _rule = _x; };
} foreach life_ruleInfo;

if(count _rule < 1) exitWith {_text ctrlSetText "Erreur.";};

_name = _rule select 1;
_desc = _rule select 3;

_label = format["<t font='puristaMedium' shadow='1' size='1.7'>%1</t><br/><br/>%2", _name,_desc];

_text ctrlSetStructuredText parseText _label;