/*
	File: fn_initRSSystem.sqf
	Author: Mash6 <Altis Life: Evolution> -- http://www.altislife-evolution.fr/ --
	
	Description:
	Initialize variables and functions for R.S. Depannage company.
*/

// VARIABLES \\

rsdep_allowedVehicles = ["C_Offroad_01_repair_F","B_Truck_01_mover_F"];
rsdep_offroadAllowedVehics = ["C_Kart_01_Blu_F","civ_mondeo_Black","B_G_Offroad_01_armed_F","DAR_SWATPolice","DAR_MF1Civ","DAR_MF1Silver","DAR_MF1Orange","DAR_MF1Red","DAR_MF1Burgundy","cl3_arielatom_race_black","cl3_arielatom_black","cl3_aventador_lp7004_black","cl3_440cuda_black","C_Kart_01_Fuel_F","cl3_defender_110_yellow","cl3_transitNews","C_Kart_01_Red_F","C_Kart_01_Vrana_F","C_SUV_01_F","C_Hatchback_01_sport_F","B_Quadbike_01_F","C_Offroad_01_F","C_Offroad_01_repair_F","C_Van_01_transport_F","cl3_volha_black","cl3_golf_mk2_black","cl3_lada_red","cl3_civic_vti_black","cl3_polo_gti_black","cl3_suv_black","cl3_range_rover_black","cl3_transit_black","cl3_taurus_black","cl3_q7_black","cl3_e60_m5_black","cl3_dbs_volante_black","cl3_defender_110_red","cl3_e63_amg_black","cl3_insignia_black","cl3_z4_2008_black","cl3_lamborghini_gt1_black","cl3_carrera_gt_black","cl3_murcielago_black","cl3_reventon_black","cl3_458_black","cl3_r8_spyder_black","cl3_dodge_charger_s_black","cl3_veyron_blk_wht","ALE_MedSUV","ALE_MedHayonSport","ALE_GendOffroad","ALE_GendSUV","ALE_GendQ7","RDS_Gaz24_Civ_01","RDS_Gaz24_Civ_02","RDS_Gaz24_Civ_03","RDS_Golf4_Civ_01","RDS_Octavia_Civ_01","ALE_Fourgon_Caisse","ALE_HEMTT_Box","C_Offroad_PN"];
rsdep_isTowing = false;
rsdep_towerVehic = ObjNull;


// FUNCTIONS \\


rsdep_fnc_towVehic = {
	_vehic = cursorTarget;
	if(isNull _vehic) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous ne pointez rien !","PLAIN"];};
	if(!(_vehic isKindOf "Car")) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous ne pouvez tracter que les véhicules terrestres !","PLAIN"];};
	if(!isNull (_vehic getVariable ["towedBy",objNull])) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nCe véhicule est déjà tracté !","PLAIN"];};
	if(isNull rsdep_towerVehic) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous n'avez pas séléctionné de dépanneuse, montez dans votre dépanneuse et utilisez la molette pour la définir comme dépaneuse !","PLAIN"];};
	if(rsdep_towerVehic getVariable ["towing",false]) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous tractez déjà un véhicule !","PLAIN"];};
	if(!alive rsdep_towerVehic) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVotre dépanneuse est détruite !","PLAIN"];};
	if(!alive _vehic) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nLe véhicule est détruit !","PLAIN"];};
	if(((typeOf rsdep_towerVehic) == "C_Offroad_01_repair_F") && !((typeOf _vehic) IN rsdep_offroadAllowedVehics)) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous ne pouvez pas tracter ce type de véhicule !","PLAIN"];};
	if((typeOf rsdep_towerVehic == "C_Offroad_01_repair_F") && ((_vehic distance rsdep_towerVehic) > 8)) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nLe véhicule est trop loin de la dépanneuse !","PLAIN"];};
	if((typeOf rsdep_towerVehic == "B_Truck_01_transport_F") && ((_vehic distance rsdep_towerVehic) > 13)) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nLe véhicule est trop loin de la dépanneuse !","PLAIN"];};
	if(!isNull(driver _vehic)) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nQuelqu'un est au volant du véhicule !","PLAIN"];};
	
	rsdep_isTowing = true;
	titleText["\n\n\n\n\n\n\n\n\n\n\n\nPatientez, le véhicule va être attaché a la dépanneuse !","PLAIN"];
	sleep 4;
	_vehic attachTo [rsdep_towerVehic, 
		[
			(boundingCenter _vehic select 0), 
			(boundingBoxReal rsdep_towerVehic select 0 select 1) + (boundingBoxReal _vehic select 0 select 1) + 0.2,     
			(boundingBoxReal rsdep_towerVehic select 0 select 2) - (boundingBoxReal _vehic select 0 select 2)
		]
	];
	titleText["\n\n\n\n\n\n\n\n\n\n\n\nLe véhicule est attaché !","PLAIN"];
	_vehic setVariable ["towedBy",rsdep_towerVehic,true];
	rsdep_towerVehic setVariable ["towing",true,true];
	_vehic lockDriver true;
	if(local _vehic) then {
		_vehic lockDriver true;
	} else {
		[[_vehic,1,1],"life_fnc_lockVehicle",_vehic,false] spawn life_fnc_MP;
	};
	_vehic enableSimulationGlobal false;
};

rsdep_fnc_unTowVehic = {
	_vehic = cursorTarget;
	if(isNull (_vehic getVariable ["towedBy",objNull])) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nCe véhicule n'est pas tracté !","PLAIN"];};
	titleText["\n\n\n\n\n\n\n\n\n\n\n\nPatientez, le véhicule va être détaché !","PLAIN"];
	rsdep_isTowing = false;
	sleep 4;
	detach _vehic;
	titleText["\n\n\n\n\n\n\n\n\n\n\n\nLe véhicule est détaché !","PLAIN"];
	_vehic setVariable ["towedBy",objNull,true];
	rsdep_towerVehic setVariable ["towing",false,true];
	if(local _vehic) then {
		_vehic lockDriver false;
	} else {
		[[_vehic,0,1],"life_fnc_lockVehicle",_vehic,false] spawn life_fnc_MP;
	};
	_vehic enableSimulationGlobal true;
};

rsdep_fnc_setAsTower = {
	private["_vehic","_vehicToTract","_inService"];
	_vehic = vehicle player;
	if(!license_civ_rsdep) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous n'êtes pas dépanneur !","PLAIN"]};
	if(!(typeOf _vehic IN rsdep_allowedVehicles)) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous ne pouvez pas tracter avec ce véhicule !","PLAIN"]};
	if(rsdep_isTowing) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous tractez déjà un véhicule !","PLAIN"]};
	titleText["\n\n\n\n\n\n\nCe véhicule est désormais votre dépanneuse principale\n\n\n\n\nPour remorquer un véhicule, mettez vous devant lui, descendez et utilisez le menu molette sur le véhicule a tracter.","PLAIN"];
	rsdep_towerVehic = _vehic;
};

rsdep_fnc_deleteVeh = {
	_vehic = cursorTarget;
	_fourriere = getMarkerPos "fourriere";
	if(!license_civ_rsdep) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous n'êtes pas dépanneur !","PLAIN"]};
	if((player distance _fourriere) > 30) exitWith {titleText["\n\n\n\n\n\n\n\n\n\n\n\nVous êtes trop loin de la fourrière !","PLAIN"]};
	titleText["\n\n\n\n\n\n\n\n\n\n\n\nLe véhicule va être mis en fourrière...","PLAIN"];
	sleep 4;
	titleText["\n\n\n\n\n\n\n\n\n\n\n\nLe véhicule a été mis en fourrière, vous avez reçu 4000 € de prime !","PLAIN"];
	life_atmcash = life_atmcash + 4000;
	_vehicleName = getText(configFile >> "CfgVehicles" >> (typeOf _vehic) >> "displayName");
	_vehicleData = _vehic getVariable["vehicle_info_owners",[]];
	if(count _vehicleData == 0) exitWith {deleteVehicle _vehicle};
	[[0,format["%1, votre %2 est mis en fourrière par R.S. Dépannage",(_vehicleData select 0) select 1,_vehicleName]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
	[[_vehic,true,player,1],"TON_fnc_vehicleStore",false,false] spawn life_fnc_MP;
};