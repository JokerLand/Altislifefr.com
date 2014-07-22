/*
File: fn_gatherArtefact.sqf
Author:GeK
 
Description:
Gathers artefacts
*/
private["_sum"];
_sum = ["artefact",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_inUse = true;
titleText["Recherche d'artefact","PLAIN"];
titleFadeOut 5;
sleep 5;
if(([true,"artefact",1] call life_fnc_handleInv)) then
{
playSound "bag";
titleText["Vous trouvez un artefact.","PLAIN"];
};
};

life_action_inUse = false;
