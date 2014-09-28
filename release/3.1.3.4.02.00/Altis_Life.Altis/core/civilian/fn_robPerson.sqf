/*
	File: fn_robPerson.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Getting tired of adding descriptions...
*/
private["_robber","_cashrob"];
_robber = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _robber) exitWith {}; //No one to return it to?

if(life_cash > 0) then
{
	_cashrob = random life_cash;
	[[_cashrob],"life_fnc_robReceive",_robber,false] spawn life_fnc_MP;
	[[getPlayerUID _robber,name _robber,"211"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	[[1,format["%1 a volé %2 de $%3",name _robber,name player,[_cashrob] call life_fnc_numberText]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	life_cash = life_cash - _cashrob;
}
	else
{
	[[2,format["%1 n'a pas assez d'argent.",name player]],"life_fnc_broadcast",_robber,false] spawn life_fnc_MP;
};