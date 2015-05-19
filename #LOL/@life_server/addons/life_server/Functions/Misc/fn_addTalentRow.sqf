/*
	File: fn_addTalentRow.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Recursive function to add tree row to list control.
*/

private["_label","_list","_parent","_depth","_id","_i","_d"];

_list = [_this,0,controlNull,[controlNull]] call BIS_fnc_param;
_parent = [_this,1,0,[0]] call BIS_fnc_param;
_depth = [_this,2,0,[0]] call BIS_fnc_param;

// Disable buttons by default since none are pre-selected

for "_i" from 0 to ((count life_talentInfo) - 1) do
{
	_x = life_talentInfo select _i;
	_id = (_x select 0);
	_label = (_x select 1);
	_isSub = (_x select 8);
	if(_isSub == 1) then {_label = format["     %1",_label];};
	_list lbAdd _label;
	_list lbSetdata [(lbSize _list)-1,str(_id)];
	_talentRequired = (_x select 2);
	_talentLevelRequired = (_x select 3);
	_hasTalent = if([_talentRequired,_talentLevelRequired] call life_fnc_checkTalent) then {true} else {false};
	if (!_hasTalent) then { _list lbSetColor [(lbSize _list)-1,[1,1,1,0.5]]; } else {_list lbSetColor [(lbSize _list)-1,[0.25,0.75,0,0.9]];};
};