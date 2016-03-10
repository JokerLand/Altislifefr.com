StartProgress = false;
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v5.0";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

//Menu Admin
[] execVM "Anticheat.sqf";
[] execVM "AdminMenu.sqf";
//Safezone
[] execVM "safezone.sqf";
StartProgress = true;