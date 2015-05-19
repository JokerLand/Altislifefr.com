/*

    File: fn_initZeus.sqf

    Author: John "Paratus" VanderZwet

    

    Description:

    Zeus Initialization file.

*/

player addRating 9999999;

waitUntil {!(isNull (findDisplay 46))};

[] spawn life_fnc_copMarkers;

if(life_adminlevel < 3) exitWith
{
    endMission "Loser";
};