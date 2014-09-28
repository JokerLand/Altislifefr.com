/*
File: fn_gatherGrapes.sqf

Author: Unknown

Description:
Grape Picking Function

*/
private["_sum"];
_sum = ["grapes",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_inUse = true;
	titleText["Recolte raisin...","PLAIN"];
	titleFadeOut 2;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	
	if(([true,"grapes",_sum] call life_fnc_handleInv)) then
		{
		playSound "bag"; // this only if you want the sound for the bag when you gather it 
		titleText["Raisin collecte.","PLAIN"];
		};
};

life_action_inUse = false;
