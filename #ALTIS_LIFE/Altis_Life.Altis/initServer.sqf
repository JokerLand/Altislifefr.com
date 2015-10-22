/*
	File: initServer.sqf

	Description:
	Starts the initialization of the server.
*/
if(!(_this select 0)) exitWith {}; //Not server
[] call compile PreprocessFileLineNumbers "\life_server\init.sqf";
master_group attachTo[bank_obj,[0,0,0]];

onMapSingleClick "if(_alt) then {vehicle player setPos _pos};";

//Spawn the new hospitals.
{
	_hs = createVehicle ["Land_Hospital_main_F", [0,0,0], [], 0, "NONE"];
	_hs setDir (markerDir _x);
	_hs setPosATL (getMarkerPos _x);
	_var = createVehicle ["Land_Hospital_side1_F", [0,0,0], [], 0, "NONE"];
	_var attachTo [_hs, [4.69775,32.6045,-0.1125]];
	detach _var;
	_var = createVehicle ["Land_Hospital_side2_F", [0,0,0], [], 0, "NONE"];
	_var attachTo [_hs, [-28.0336,-10.0317,0.0889387]];
	detach _var;
} foreach ["hospital_2","hospital_3"];
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
[] execVM "Base\AltisAirways.sqf";
[] execVM "Base\Athira.sqf";
[] execVM "Base\Banque.sqf";
[] execVM "Base\BaseArmee.sqf";
[] execVM "Base\Bijouterie.sqf";
[] execVM "Base\campRebelle.sqf";
[] execVM "Base\ComicoKavala.sqf";
[] execVM "Base\ComicoAirHQ.sqf";
[] execVM "Base\ComicoParos.sqf";
[] execVM "Base\debug_veh_spawn";
[] execVM "Base\Douane.sqf";
[] execVM "Base\Discotheque.sqf";
[] execVM "Base\KavalaCenter.sqf";
[] execVM "Base\LaboMeth.sqf";
[] execVM "Base\Ncasino09.sqf";
[] execVM "Base\PecheKavala.sqf";
[] execVM "Base\Poste_de_controle_routier.sqf";
[] execVM "Base\Park_Kavala.sqf";
[] execVM "Base\Prison-ALFR.sqf";
[] execVM "Base\Traitement.sqf";
[] execVM "Base\stations_service.sqf";
[] execVM "Base\archeo.sqf";
[] execVM "Base\planques.sqf";
[] execVM "Base\hero_weed.sqf";


//[] execVM "cleanup.sqf";

[16,true,true,16] execFSM "core\fsm\timeModule.fsm";
