/*
	File: fn_talentInfo.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Displays details about the selected talent.
	Please either get Asylum permission to use this or create this system yourself.
*/
private["_display","_text","_index","_talent","_label","_req","_learn"];
disableSerialization;
_display = findDisplay 3700;
_text = _display displayCtrl 3703;
_learn = _display displayCtrl 3710;
_index = lbData[3702,lbCurSel (3702)];
_index = call compile format["%1", _index];

if(isNil "_index") exitWith {_text ctrlSetText "Erreur.";};

_talent = [];
{
	if ((_x select 0) == _index) exitWith{ _talent = _x; };
} foreach life_talentInfo;

if(count _talent < 1) exitWith {_text ctrlSetText "Erreur.";};

_name = _talent select 1;
_needed = _talent select 4;
_desc = _talent select 5;
_needImage = _talent select 6;
_img = _talent select 7;

_label = format["<t font='puristaMedium' shadow='1' size='1.7'>%1</t><br/><br/>", _name];

_req = [];
if((_talent select 2) != 0) then {
	if (_needed > 0) then
	{
		{
			if ((_x select 0) == (_talent select 4)) exitWith{ _req = _x; };
		} foreach life_talentInfo;
		_label = format["%1<t shadow='1'>Requiert %2.</t><br/><br/>", _label, _req select 1];
	}
	else { 
		_label = format["%1<t shadow='1'>Aucun talent requis.</t><br/><br/>", _label]; 
	};
};
_label = format["%1%2", _label, _desc];

if(_needImage == 1) then {
	_text ctrlSetStructuredText parseText format["<t shadow='0'><img size='6' image='%1'/></t>   %2",_img,_label];
} else {
	_text ctrlSetStructuredText parseText _label;
};