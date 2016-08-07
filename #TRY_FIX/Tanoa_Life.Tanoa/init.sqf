/*
    File: init.sqf
    Author: 
    
    Description:
    
*/
StartProgress = false;

[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

//Menu Admin
[] execVM "Anticheat.sqf";
[] execVM "AdminMenu.sqf";
//Safezone
[] execVM "safezone.sqf";
//Météo
//[] execVM "D41_Wetter.sqf";
//IgiLoadDepanneur
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
StartProgress = true;

