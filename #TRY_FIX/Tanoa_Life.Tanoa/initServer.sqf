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
[] execVM "Mappings\John_Bank_Tanoa.sqf";

//Cycle Jour/nuit
[16,true,true,16] execFSM "core\fsm\timeModule.fsm";