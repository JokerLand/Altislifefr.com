/*
    File: fn_autoSave.sqf
    
    Description:
    Sauvegarde automatique toutes les X Minutes.
*/

while {true} do
{
    sleep 300; // Synchronisation automatique toutes les 5 minutes
    [] call SOCK_fnc_updateRequest;
};