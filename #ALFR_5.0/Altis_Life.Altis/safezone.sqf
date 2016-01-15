/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    and altislifefr.com
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["safezone_1", 70],["safezone_athira", 100],["safezone_2", 10],["safezone_3", 10],["safezone_4", 30],["safezone_6", 20],["safezone_7", 10],["safezone_Garage", 40],["safezone_donator", 170],["safezone_reb_1", 300],["safezone_frini", 180],["safezone_sofia", 180],["safezone_pyrgos", 180],["safezone_ile" 600],["safezone_athira_1", 10],["safezone_athira_2", 10],["safezone_athira_3", 30]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE "Vous etes dans une safezone, Vous ne pouvez pas entreprendre d'action agressive."

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