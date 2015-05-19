/*
	File: fn_arrestAction.sqf
	
	Description:
	Arrests the targeted person.
*/
private["_unit","_id"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_time = [_this,1,15,[0]] call BIS_fnc_param;
_note = [_this,2,"",[""]] call BIS_fnc_param;
_reason = [_this,3,"",[""]] call BIS_fnc_param;

if(isNull _unit) exitWith {}; //Not valid
if(isNil "_unit") exitwith {}; //Not Valid
if(!(_unit isKindOf "Man")) exitWith {}; //Not a unit
if(!isPlayer _unit) exitWith {}; //Not a human
if(!(_unit getVariable "restrained")) exitWith {}; //He's not restrained.
if(!((side _unit) in [civilian,independent])) exitWith {}; //Not a civ
if(isNull _unit) exitWith {}; //Not valid
if(_time < 1) exitwith {}; //Not Valid
if(_reason isEqualTo "") exitWith {diag_log "Erreur mise en prison 1"};
if(_note isEqualTo "") exitWith {diag_log "Erreur mise en prison 2"};

if(isNull _unit) exitWith {}; //Not valid
detach _unit;

_copname = player getVariable ["realname",name player];

[[getPlayerUID _unit,_copname,_note,_reason,_time],"TON_fnc_jailStore",false,false] spawn life_fnc_MP;

[[_unit,false,_time],"life_fnc_jail",_unit,false] spawn life_fnc_MP;
[[0,format[localize "STR_NOTF_Arrested_1", _unit getVariable["realname",name _unit], profileName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;