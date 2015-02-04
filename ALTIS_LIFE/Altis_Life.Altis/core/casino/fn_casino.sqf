/*
	File: fn_casino.sqf
	Author: "Sakzy" - www.altislifefr.com

	Description:
	Play roulette.
*/

_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_player = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;
_amount = [_this,3, 0] call BIS_fnc_param;

//if(playerSide != civilian) exitWith {hint "Vous ne pouvez pas jouer en service.";};
if(life_cash < _amount) exitWith {hint "Vous n'avez pas assez d'argent";};
if(life_casPlaying) exitWith {};
life_casPlaying = true;


_color = random 100;
_win = random 100;

life_cash = life_cash - _amount;
hint "Faites vos jeux";
sleep 1;
if(_color < 50) then {hint "Vous avez mise sur le noir";} else {hint "Vous avez mise sur le rouge";};
sleep 2;
hint "Les jeux sont faits";
sleep 2;
hint "Rien ne va plus";
sleep 2;
if(_color < 50) then
{
	if(_win< 55) then 
	{
		hint format ["%1 rouge pair et manque", round (random 36) + 1]; 
		hint "Perdu, c'est rouge...";
	} else {
		hint format ["%1 noir pair et manque", round (random 36) + 1]; 
		hint format ["C'est noir, vous gagnez %1$ !!!!", _amount]; life_cash = life_cash + (2* _amount);
	};
}else
{
	if(_win < 55) then {
		hint format ["%1 noir pair et manque", round (random 36) + 1]; 
		sleep 2;
		hint "Perdu, c'est noir...";
	} else {
		hint format ["%1 rouge pair et manque", round (random 36) + 1]; 
		sleep 2;
		hint format ["C'est rouge, vous gagnez %1$ !!!!", _amount]; life_cash = life_cash + (2* _amount);
	};
};
life_casPlaying = false;