/*
	File: fn_casino777.sqf
	Author: "Sakzy" - www.altislifefr.com

	Description:
	Win roulette.
*/

_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_player = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;
_amount = [_this,3, 0] call BIS_fnc_param;

if(life_cash < _amount) exitWith {hint "Vous n'avez pas assez d'argent";};
if(life_casPlaying) exitWith {};
life_casPlaying = true;

life_cash = life_cash - _amount;

_num1 = round(random 10);
_num2 = round(random 10);
_num3 = round(random 10);

hint "Vous gagnez 1 MILLION si vous obtenez trois 7";
sleep 3;
hint format ["1er chiffre: %1", _num1];
sleep 2;
hint format ["2eme chiffre: %1", _num2];
sleep 2;
hint format ["3eme chiffre: %1", _num3];
sleep 2;
if(_num1 == 7 && _num2 == 7 && _num3 == 7)then 
{
	hint "!!! Vous avez gagné le MILLION !!!";
	life_cash = life_cash + 1000000;
	[[0,format["%1 Viens de gagner 1 MILLION au casino", player getVariable ["realname",name player]], false],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
}else
{
	hint " Vous avez perdu...Rententez votre chance";
};
life_casPlaying = false;