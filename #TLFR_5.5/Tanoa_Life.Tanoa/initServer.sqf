/*
    File: initServer.sqf
    Author:

    Description:
    Starts the initialization of the server.
*/
if (!(_this select 0)) exitWith {}; //Not server
[] call compile preprocessFileLineNumbers "\life_server\init.sqf";

// - MAPPING -
// INUTILE [] execVM "Mappings\athira_hopital.sqf";
// INUTILE [] execVM "Mappings\Mappings_armee.sqf";

//Cycle Jour/nuit
[16,true,true,16] execFSM "core\fsm\timeModule.fsm";