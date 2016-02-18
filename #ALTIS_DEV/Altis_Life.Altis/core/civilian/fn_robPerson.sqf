#include <macro.h>
/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber","cashrob"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(CASH > 0) then {
    _cashrob = random CASH; //Faisons ca aléatoirement
	_cashrob = floor _cashrob; //Evitons les virgules
	[[CASH,player,_robber],"life_fnc_robReceive",_robber,false] call life_fnc_MP;
	[[getPlayerUID _robber,_robber GVAR ["realname",name _robber],"211"],"life_fnc_wantedAdd",false,false] call life_fnc_MP;
	[[1,"STR_NOTF_Robbed",true,[_robber GVAR ["realname",name _robber],profileName,[CASH] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] call life_fnc_MP;
	CASH = CASH - _cashrob;
    [0] call SOCK_fnc_updatePartial;//On met à jour la db
} 
    else 
{
	[[2,"STR_NOTF_RobFail",true,[profileName]],"life_fnc_broadcast",_robber,false] call life_fnc_MP;
};

[0] call SOCK_fnc_updatePartial;
