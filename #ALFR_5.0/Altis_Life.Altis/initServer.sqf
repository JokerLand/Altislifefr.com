/*
	File: initServer.sqf

	Description:
	Starts the initialization of the server.
*/
if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";

[] execVM "Base\AirportDonateur.sqf";
[] execVM "Base\AthiraCenter.sqf";
[] execVM "Base\banque.sqf";
[] execVM "Base\CampRebelle.sqf";
[] execVM "Base\CampGangster.sqf";
[] execVM "Base\ComicoCentral.sqf";
[] execVM "Base\KavalaCenter.sqf";
[] execVM "Base\LaboMeth.sqf";
[] execVM "Base\PecheKavala.sqf";
[] execVM "Base\Poste_de_controle_routier.sqf";
[] execVM "Base\Park_Kavala.sqf";
[] execVM "Base\Prison-ALFR.sqf";
[] execVM "Base\Traitement_Coke.sqf";
[] execVM "Base\Traitement_Hero.sqf";
[] execVM "Base\stations_service.sqf";
[] execVM "Base\athira_hopital.sqf";
[] execVM "Base\process.sqf";
[] execVM "Base\Douane.sqf";
[] execVM "Base\EntrepriseBank.sqf";
[] execVM "Base\base_armee.sqf";
[] execVM "Base\KavalaHospital.sqf";
[] execVM "Base\GangHideoutKavala.sqf";
[] execVM "Base\GangHideoutPyrgos.sqf";
[] execVM "Base\ComicoKavala.sqf";