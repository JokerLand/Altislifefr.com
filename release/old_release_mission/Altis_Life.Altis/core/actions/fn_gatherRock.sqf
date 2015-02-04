/*
	File: fn_gatherHeroin.sqf
	Author: Bryan "Tonic" Boardwine
	Traduction : Raztoux

	Description:
	Gathers heroin?
*/
if(life_action_inUse) exitWith {hint "Vous ne pouvez pas utiliser rapidement les touches d'actions!"};
life_action_inUse = true;
private["_sum","_rand"];

_rand=floor(random 3)+1;
_sum = ["rock",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if (life_inv_pickaxe < 1) exitWith {hint "Vous avez besoin d'une pioche pour effectuer cette action."};
if(_sum > 0) then
{
	titleText["Récole de roches...","PLAIN"];
	titleFadeOut 5;
	player say3D "mining";
	for "_i" from 0 to 2 do
	{
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
		sleep 2.5;
	};
	if(([true,"rock",_sum] call life_fnc_handleInv)) then
	{
		titleText[format["Vous avez collecté %1 roches",_sum],"PLAIN"];
		playSound "bag";
	};
};

life_action_inUse = false;