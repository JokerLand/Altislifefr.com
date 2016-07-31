/*
    File: fn_gatherArcheo.sqf
    Script by Tonic Edit by John.C for www.AltisLifeFR.com
    Description:
    Gather Archeo
*/
private["_sum","_dice"];

_dice=ceil(random 2);
_sum = ["artefactbq",_dice,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
    life_action_inUse = true;
    titleText["Récolte de l'Archéologie sous-marine","PLAIN"];
    titleFadeOut 6;
    sleep 6;
    if(([true,"artefactbq",_sum] call life_fnc_handleInv)) then
    {
        titleText[format["Tu as ramassé %1 Artefact(s).",_sum],"PLAIN"];
    };
};

life_action_inUse = false;