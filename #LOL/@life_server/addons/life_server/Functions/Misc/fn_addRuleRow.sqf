private["_label","_list","_parent","_depth","_id","_i","_d"];

_list = [_this,0,controlNull,[controlNull]] call BIS_fnc_param;

for "_i" from 0 to ((count life_ruleInfo) - 1) do
{
	_x = life_ruleInfo select _i;
	_id = (_x select 0);
	_label = (_x select 1);
	_isSub = (_x select 2);
	if(_isSub == 1) then {_label = format["     %1",_label];};
	_list lbAdd _label;
	_list lbSetdata [(lbSize _list)-1,str(_id)];
};