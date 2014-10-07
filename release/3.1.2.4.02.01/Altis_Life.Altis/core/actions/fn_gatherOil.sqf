/*
	File: fn_gatherOil.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers oil, needs to be revised and changed.
*/
private["_sum"];
_sum = ["oilu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Gathering Oil...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 4;
	if(([true,"oilu",_sum] call life_fnc_handleInv)) then
	{
		titleText["You have gathered some oil.","PLAIN"];
		playSound "bag";
	};
}
	else
{
	hint "Your inventory space is full.";
};

life_action_inUse = false;