/*
    File: fn_gatherAlgue.sqf
    Script by Tonic Edit by John.C for www.AltisLifeFR.com
    Description:
    Gather Algue
*/
private["_sum","_dice"];

_dice=ceil(random 4);
_sum = ["algueunprocessed",_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
    life_action_inUse = true;
    titleText["Récolte des Algues...","PLAIN"];
    titleFadeOut 6;
    sleep 6;
    if(([true,"algueunprocessed",_sum] call life_fnc_handleInv)) then
    {
        titleText[format["Tu as ramassé %1 Algue(s).",_sum],"PLAIN"];
    };
};

life_action_inUse = false;