/*
    File: initServer.sqf
    Author:

    Description:
    Starts the initialization of the server.
*/
if (!(_this select 0)) exitWith {}; //Not server
[] call compile preprocessFileLineNumbers "\life_server\init.sqf";

// - MAPPING -
// INUTILE [] execVM "Base\athira_hopital.sqf";
// INUTILE [] execVM "Base\base_armee.sqf";
// INUTILE [] execVM "Base\LaboMeth.sqf";
// INUTILE [] execVM "Base\process.sqf";
// INUTILE [] execVM "Base\Poste_de_controle_routier.sqf";
// BUG [] execVM "Base\Traitement_Coke.sqf";
// BUG [] execVM "Base\KavalaHospital.sqf";



// [] execVM "Base\AirportDonateur.sqf";
// [] execVM "Base\AthiraCenter.sqf";
// [] execVM "Base\banque.sqf";

// [] execVM "Base\CampRebelle.sqf";
// [] execVM "Base\CampGangster.sqf";
// [] execVM "Base\KavalaCenter.sqf";
// [] execVM "Base\PecheKavala.sqf";
// [] execVM "Base\Park_Kavala.sqf";
// [] execVM "Base\GangHideoutKavala.sqf";
// [] execVM "Base\GangHideoutPyrgos.sqf";
// [] execVM "Base\Traitement_Hero.sqf";
// [] execVM "Base\stations_service.sqf"; 

// WORKING FINE
[] execVM "Base\Douane.sqf";
[] execVM "Base\EntrepriseBank.sqf";
[] execVM "Base\ComicoKavala.sqf";
[] execVM "Base\ComicoParos.sqf";
//[] execVM "Base\Prison-ALFR.sqf";
[] execVM "Base\ChampTir.sqf";
[] execVM "Base\CampRebel.sqf";
[] execVM "Base\ComicoAthira.sqf"; 
[] execVM "Base\concessionnaire_veh.sqf";
// [] execVM "Base\PlatForm_Maritime_John.sqf";
// [] execVM "Base\Archeologie_John.sqf";

//Cycle Jour/nuit
[16,true,true,16] execFSM "core\fsm\timeModule.fsm";