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
// INUTILE [] execVM "Mappings\LaboMeth.sqf";
// INUTILE [] execVM "Mappings\process.sqf";
// INUTILE [] execVM "Mappings\Poste_de_controle_routier.sqf";
// BUG [] execVM "Mappings\Traitement_Coke.sqf";
// BUG [] execVM "Mappings\KavalaHospital.sqf";



// [] execVM "Mappings\AirportDonateur.sqf";
// [] execVM "Mappings\AthiraCenter.sqf";
// [] execVM "Mappings\banque.sqf";

// [] execVM "Mappings\CampRebelle.sqf";
// [] execVM "Mappings\CampGangster.sqf";
// [] execVM "Mappings\KavalaCenter.sqf";
// [] execVM "Mappings\PecheKavala.sqf";
// [] execVM "Mappings\Park_Kavala.sqf";
// [] execVM "Mappings\GangHideoutKavala.sqf";
// [] execVM "Mappings\GangHideoutPyrgos.sqf";
// [] execVM "Mappings\Traitement_Hero.sqf";
// [] execVM "Mappings\stations_service.sqf"; 

// WORKING FINE
[] execVM "Mappings\Douane.sqf";
[] execVM "Mappings\EntrepriseBank.sqf";
[] execVM "Mappings\ComicoKavala.sqf";
[] execVM "Mappings\ComicoParos.sqf";
//[] execVM "Mappings\Prison-ALFR.sqf";
[] execVM "Mappings\ChampTir.sqf";
[] execVM "Mappings\CampRebel.sqf";
[] execVM "Mappings\ComicoAthira.sqf"; 
[] execVM "Mappings\concessionnaire_veh.sqf";
// [] execVM "Mappings\PlatForm_Maritime_John.sqf";
// [] execVM "Mappings\Archeologie_John.sqf";

//Cycle Jour/nuit
[16,true,true,16] execFSM "core\fsm\timeModule.fsm";