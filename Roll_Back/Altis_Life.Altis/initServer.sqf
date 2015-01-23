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
[] execVM "Base\Casino.sqf";
[] execVM "Base\BaseCN.sqf";
[] execVM "Base\BaseUnity.sqf";
[] execVM "Base\CampRebelle.sqf";
[] execVM "Base\Douane.sqf";

[] execVM "cleanup.sqf";

[8,true,true,25] execFSM "core\fsm\timeModule.fsm";
