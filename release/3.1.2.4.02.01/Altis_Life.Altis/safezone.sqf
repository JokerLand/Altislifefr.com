/*
    GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
    and altislifefr.com
    DESCRIPTION:
    Stops players from throwing grenades in safety zones.
    
    CONFIGURATION:
    Edit the #defines below.
*/

#define SAFETY_ZONES    [["safezone_kavala", 1100],["safezone_negades_1", 600],["safezone_athira", 100],["safezone_pomme", 100],["safezone_pomme2", 100],["safezone_donator", 150],["safezone_reb", 180],["safezone_sofia", 180],["safezone_pyrgos", 180]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
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