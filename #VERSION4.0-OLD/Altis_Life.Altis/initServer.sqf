/*
	File: initServer.sqf
	
	Description:
	Starts the initialization of the server.
*/
if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";

//Execution des SQF des Bases
[] execVM "Base\BaseMOA.sqf";
[] execVM "Base\BaseTOR.sqf";
[] execVM "Base\Base-GRF.sqf";
[] execVM "Base\Park_Kavala.sqf";
[] execVM "Base\BaseSopranofinal.sqf";
[] execVM "Base\Base-POC.sqf";
[] execVM "Base\Poste_de_controle_routier.sqf";
[] execVM "Base\BaseBMG.sqf";
[] execVM "Base\debug_veh_spawn.sqf";
[] execVM "Base\Base-moscow.sqf";
[] execVM "Base\base-LMC.sqf";
[] execVM "Base\base-altiskaia.sqf";
[] execVM "Base\Base-Yakuza.sqf";
[] execVM "Base\BaseCN.sqf";
[] execVM "Base\BaseUnity.sqf";
[] execVM "Base\CampRebelle.sqf";
[] execVM "Base\Douane.sqf";
[] execVM "Base\FLA.sqf";
[] execVM "Base\baseTOP6.sqf";
[] execVM "Base\BaseArmee02.sqf";
[] execVM "Base\AeroportParking.sqf";
[] execVM "Base\Ncasino09.sqf";
[] execVM "Base\BaseSutra.sqf";

[] execVM "cleanup.sqf";

[8,true,true,25] execFSM "core\fsm\timeModule.fsm";
