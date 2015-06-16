private["_unit","_shooter","_curWep","_curMags","_attach"];
_unit = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_shooter = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; life_isdowned = false;};

if(_shooter isKindOf "Man" && alive player) then
{
	if(!life_isdowned) then
	{
		life_isdowned = true;
		_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL _unit);
		_obj setPosATL (getPosATL _unit);
		[[player,"AinjPfalMstpSnonWnonDf_carried_fallwc"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
		[[0,format["%2 a neutralisé %1 avec un flashball.", name _unit, name _shooter]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		_unit attachTo [_obj,[0,0,0]];
		disableUserInput true;
		sleep 8;
		if(!(player getVariable "restrained")) then {
			[[player,"AinjPpneMstpSnonWrflDnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			sleep 22;
		};
		if(!(player getVariable "restrained")) then {
			[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			disableUserInput false;
			detach player;
			player allowDamage true;
		};
		disableUserInput false;
		life_isdowned = false;
	};
}
	else
{
	_unit allowDamage true;
	disableUserInput false;
	life_isdowned = false;
};