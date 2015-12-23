StartProgress = false;
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v5.0.0.1";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";

[] execVM "Anticheat.sqf";
[] execVM "AdminMenu.sqf";

StartProgress = true;