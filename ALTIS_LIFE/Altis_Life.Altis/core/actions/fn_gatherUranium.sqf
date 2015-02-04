/*
    File: fn_gatherUranium.sqf
    Script by Tonic Edit by Nark0t1k
    Description:
    Gathers Uranium?
*/
private["_sum","_dice"];

_dice=ceil(random 3);
_sum = ["uranium1",_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
    life_action_inUse = true;
    titleText["Récolte des déchets d'Uranium...","PLAIN"];
    titleFadeOut 6;
    sleep 6;
    if(([true,"uranium1",_sum] call life_fnc_handleInv)) then
    {
        titleText[format["Tu as ramassé %1 déchets d'Uranium.",_sum],"PLAIN"];
    };
};

life_action_inUse = false;