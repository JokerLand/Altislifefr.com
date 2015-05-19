private["_cop","_drinky"];

_cop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _cop) exitWith {};

[[player,life_drink],"life_fnc_checkDrink",_cop,false] spawn life_fnc_MP;