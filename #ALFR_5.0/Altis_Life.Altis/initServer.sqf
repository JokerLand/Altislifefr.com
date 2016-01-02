/*
	File: initServer.sqf

	Description:
	Starts the initialization of the server.
*/
if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";

[] execVM "Base\Base-1.sqf";
[] execVM "Base\Base-2.sqf";
[] execVM "Base\Base-3.sqf";
[] execVM "Base\Base-4.sqf";
[] execVM "Base\Base-5.sqf";
[] execVM "Base\Base-6.sqf";
[] execVM "Base\Base-7.sqf";
[] execVM "Base\Base-8.sqf";
[] execVM "Base\Base-9.sqf";
[] execVM "Base\Base-10.sqf";
[] execVM "Base\Base-11.sqf";
[] execVM "Base\Base-12.sqf";
[] execVM "Base\Base-13.sqf";
[] execVM "Base\base-14.sqf";
[] execVM "Base\Base-15.sqf";
[] execVM "Base\Base-16.sqf";
[] execVM "Base\Base-17.sqf";
[] execVM "Base\AirportDonateur.sqf";
[] execVM "Base\AthiraCenter.sqf";
[] execVM "Base\banque.sqf";
[] execVM "Base\campRebelle.sqf";
[] execVM "Base\ComicoCentral.sqf";
[] execVM "Base\KavalaCenter.sqf";
[] execVM "Base\LaboMeth.sqf";
[] execVM "Base\PecheKavala.sqf";
[] execVM "Base\Poste_de_controle_routier.sqf";
[] execVM "Base\Park_Kavala.sqf";
[] execVM "Base\Prison-ALFR.sqf";
[] execVM "Base\Traitement.sqf";
[] execVM "Base\stations_service.sqf";
[] execVM "Base\hero_weed.sqf";
[] execVM "Base\athira_hopital.sqf";
[] execVM "Base\process.sqf";
[] execVM "Base\Douane.sqf";
[] execVM "Base\EntrepriseBank.sqf";