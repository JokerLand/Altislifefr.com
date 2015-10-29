/*
    Script file made by: Maximum
    Idea based off: Liemans script - did way to much to achieve the same thing.
    Description: Lets a officer request backup VIA scroll menu, made for AltisLifeRPG.com
*/
if(!life_callBackup) exitWith {hint "Tu ne peux pas faire ca maintenant !"};
_backupTime = 60;
[[player,_backupTime],"life_fnc_backupCall",west,false] call life_fnc_MP;
life_callBackup = false;
sleep _backupTime + 320;
life_callBackup = true;
hint format ["%1, Tu peux appeler des renforts à nouveau !",name player];