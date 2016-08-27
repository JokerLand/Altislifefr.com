/*
    File: fn_gatherArcheo.sqf
    Script by Tonic Edit by John.C for www.AltisLifeFR.com
    Description:
    Gather Archeo
*/
private["_sum","_dice"];

_dice=ceil(random 6);
_sum = ["petroleu",_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
    life_action_inUse = true;
    titleText["Récolte des Bidons de Pétrole","PLAIN"];
    titleFadeOut 6;
    sleep 6;
    if(([true,"petroleu",_sum] call life_fnc_handleInv)) then
    {
        titleText[format["Tu as ramassé %1 Bidon(s) de Pétrole.",_sum],"PLAIN"];
    };
};

life_action_inUse = false;