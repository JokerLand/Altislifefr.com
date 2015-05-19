/*
	File: fn_wantedInfo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Pulls back information about the wanted criminal.
*/
private["_display","_list","_crimes","_bounty","_mylist"];
disableSerialization;

_display = findDisplay 2400;
_noteslist = _display displayCtrl 1501;
_oldlist = _display displayCtrl 1502;
_unit = lbData[1500,lbCurSel (1500)];
_unit = call compile format["%1", _unit];

_mylist = [];
_myseclist = [];

if(isNil "_unit") exitWith {};
if(isNull _unit) exitWith {};
lbClear _noteslist;
lbClear _oldlist;
stic_current_target = ObjNull;
ctrlSetText[1002,"Nom : CHARGEMENT..."];
ctrlSetText[1004,"Avis de Recherche : "];

wanted_fetchRequest = [player,_unit];
publicVariableServer "wanted_fetchRequest";
waitUntil{!isNil "wanted_fetchedData"};
_datas = wanted_fetchedData;
wanted_fetchedData = nil;

diag_log format["FETCHED DATAS : %1", _datas];

_notes = _datas select 0;
reverse _notes;
if((count _notes) == 0) then {_noteslist lbAdd "Aucunes Notes";} else {
	{
		_note = _x select 0;
		_maker = _x select 1;
		if(!(_x in _mylist)) then
		{
			_mylist pushBack _x;
			_noteslist lbAdd _note;
			_noteslist lbAdd format["Note crée par : %1",_maker];
			_noteslist lbAdd "";
			_noteslist lbAdd "---------------";
			_noteslist lbAdd "";
		};
	} foreach _notes;
};

_old = _datas select 1;
if((count _old) == 0) then {_oldlist lbAdd "Aucun antécédents";} else {
	reverse _old;
	{
		_cond = _x;
		_cop = _x select 0;
		_note = _x select 1;
		_val = parseNumber(_x select 2);
		_reason = _x select 3;
		_action = parseNumber(_x select 4);
		if(!(_cond in _myseclist)) then
		{
			_myseclist pushBack _cond;
			_oldlist lbAdd format["Prise en charge par : %1",_cop];
			_oldlist lbAdd format["-> Infraction : %1",_reason];
			_oldlist lbAdd format["-> Note : %1",_note];
			if(_action == 0) then {
				_oldlist lbAdd format["-> Action Prise : Amende (%1 €)",_val];
			} else {
				_oldlist lbAdd format["-> Action Prise : Prison (%1 ans)",_val];
			};
			_oldlist lbAdd "";
			_oldlist lbAdd "---------------";
			_oldlist lbAdd "";
		};
	} foreach _old;
};
_wantedF = _datas select 2;
if(_wantedF isEqualTo "") then {ctrlSetText[1004,"Avis de Recherche : Aucun"];} else {
	ctrlSetText[1004,format["Avis de Recherche : %1",_wantedF]];
};

_pname = _unit getVariable["realname",name _unit];

ctrlSetText[1002,format["Nom : %1",_pname]];
stic_current_target = _unit;