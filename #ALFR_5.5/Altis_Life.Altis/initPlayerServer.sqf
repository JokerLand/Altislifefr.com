#define LIFE_SETTINGS(TYPE,SETTING) TYPE(missionConfigFile >> "Life_Settings" >> SETTING)
/*
    File: initPlayerServer.sqf
    Author:
    Description:
    Executed only on server when a player joins mission.
*/
if (LIFE_SETTINGS(getNumber,"player_deathLog") isEqualTo 0) exitWith {};

_this select 0 addMPEventHandler ["MPKilled", {_this call fn_whoDoneit}];

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
[] execVM "Base\Prison-ALFR.sqf";
[] execVM "Base\ChampTir.sqf";
[] execVM "Base\ComicoAthira.sqf"; 
// [] execVM "Base\PlatForm_Maritime_John.sqf";
// [] execVM "Base\Archeologie_John.sqf";
