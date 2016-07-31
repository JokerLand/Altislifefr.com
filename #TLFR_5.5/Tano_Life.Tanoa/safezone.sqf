/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    and altislifefr.com
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["safe_camion_kavala", 10],["safe_camion_pyrgos", 13],["safe_concessionnaire_athira", 6],["safe_concessionnaire_kavala", 13],["safe_concessionnaire_pyrgos", 8],["safe_friperie_athira_1", 6],["safe_friperie_sofia", 6],["safe_friperie_kavala", 6],["safe_friperie_zaros", 6],["safe_ile", 600],["safe_garage_athira", 25],["safe_garage_kavala", 8],["safe_garage_pyrgos", 9],["safe_garage_sofia", 10],["safe_kavala_2", 17],["safe_prefecture_kavala", 6],["safe_prefecture_athira", 6],["safe_prefecture_pyrgos", 6],["safe_prefecture_sofia", 6],["safe_quincaillerie_kavala", 6],["safe_quincaillerie_athira", 6],["safe_quincaillerie_pyrgos", 6],["safe_quincaillerie_sofia", 6],["safe_rebelle", 100],["safe_superette_athira_1", 6],["safe_superette_kavala", 8],["safe_superette_pyrgos", 6],["safe_superette_sofia", 6],["safe_superette_zaros", 6],["safe_donator", 150],["safe_concessionnaire_sofia", 8]]
// Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "Vous êtes dans une safezone, vous ne pouvez pas entreprendre d'action agressive."

     if (isDedicated) exitWith {};
     waitUntil {!isNull player};

switch (playerSide) do
{
	case west:
	{};
	
	case civilian:
	{


     player addEventHandler ["Fired", {
            if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
            {
             deleteVehicle (_this select 6);
             titleText [MESSAGE, "PLAIN", 3];
             };
        }];  
	};
};