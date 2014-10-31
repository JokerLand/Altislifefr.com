private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption","_FuelDecre"];

while{true} do 
{
	_vehicleToFuel = (vehicle player);
	if(isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) && !(_vehicleToFuel isKindOf "Air") && (_vehicleToFuel != player) ) then
	{
		_velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6;
		
		//Perte de fuel en fonction du vehicule ++ plus le chiffre est haut plus le fuel partira lentement ++
		switch (typeOf (_vehicleToFuel)) do {
			case "C_SUV_01_F": {_FuelDecre = 13000;};
			case "C_Offroad_01_F": {_FuelDecre = 15000;};
			case "O_Heli_Light_02_unarmed_F": {_FuelDecre = 15100;};
			case "RDS_Gaz24_Civ_02": {_FuelDecre = 11000;};
			case "RDS_S1203_Civ_01": {_FuelDecre = 11000;};
			case "A3L_VolksWagenGolfGTiblack": {_FuelDecre = 12000;};
			case "DAR_ImpalaCiv": {_FuelDecre = 11700;};
			case "RDS_Golf4_Civ_01": {_FuelDecre = 12000;};
			case "RDS_Octavia_Civ_01": {_FuelDecre = 12000;};
			case "A3L_PuntoBlue": {_FuelDecre = 12500;};
			case "cl3_civic_vti_black": {_FuelDecre = 11500;};
			case "DAR_FusionCiv": {_FuelDecre = 12000;};
			case "DAR_TaurusCiv": {_FuelDecre = 12000;};
			case "cl3_polo_gti_black": {_FuelDecre = 11800;};
			case "cl3_insignia_black": {_FuelDecre = 13500;};
			case "DAR_TahoeCiv": {_FuelDecre = 15000;};
			case "SAL_AudiCiv": {_FuelDecre = 14000;};
			case "I_G_Offroad_01_F": {_FuelDecre = 17000;};
			case "DAR_M3CivGrey": {_FuelDecre = 12500;};
			case "cl3_e63_amg_black": {_FuelDecre = 15000;};
			case "cl3_range_rover_black": {_FuelDecre = 17000;};
			case "SAL_IROCCiv": {_FuelDecre = 13000;};
			case "SAL_77TRANSAMCiv": {_FuelDecre = 13000;};
			case "cl3_dodge_charger_s_black": {_FuelDecre = 16000;};
			case "DAR_ChallengerCivWhite": {_FuelDecre = 16000;};
			case "cl3_z4_2008_black": {_FuelDecre = 14700;};
			case "cl3_carrera_gt_black": {_FuelDecre = 14600;};
			case "cl3_dbs_volante_black": {_FuelDecre = 14210;};
			case "Jonzie_Viper": {_FuelDecre = 13420;};
			case "cl3_r8_spyder_black": {_FuelDecre = 14789;};
			case "cl3_458_black": {_FuelDecre = 15563;};
			case "cl3_murcielago_black": {_FuelDecre = 15300;};
			case "cl3_reventon_black": {_FuelDecre = 15200;};
			case "DAR_MF1Civ": {_FuelDecre = 14870;};
			case "cl3_lamborghini_gt1_black": {_FuelDecre = 15700;};
			case "C_Van_01_transport_F": {_FuelDecre = 14100;};
			case "C_Van_01_box_F": {_FuelDecre = 14000;};
			case "C_Offroad_01_repair_F": {_FuelDecre = 14990;};
			case "I_Truck_02_transport_F": {_FuelDecre = 15800;};
			case "I_Truck_02_covered_F": {_FuelDecre = 15800;};
			case "B_Truck_01_transport_F": {_FuelDecre = 15800;};
			case "A3L_Dumptruck": {_FuelDecre = 15900;};
			case "B_Truck_01_covered_F": {_FuelDecre = 16000;};
			case "ALFR_GeK_Scania_420": {_FuelDecre = 16900;};
			case "C_Van_01_Fuel_F": {_FuelDecre = 14211;};
			case "B_Heli_Light_01_F": {_FuelDecre = 14700;};
			case "B_Truck_01_box_F": {_FuelDecre = 14300;};
			case "cl3_veyron_wht_blu": {_FuelDecre = 13300;};
			case "O_Truck_03_device_F": {_FuelDecre = 15000;};
			case "I_Heli_Transport_02_F": {_FuelDecre = 17700;};
			case "IVORY_T6A_1": {_FuelDecre = 18750;};
			case "B_G_Offroad_01_F": {_FuelDecre = 16800;};
			case "B_G_Van_01_transport_F": {_FuelDecre = 13800;};
			case "cl3_insignia_camo": {_FuelDecre = 14900;};
			case "cl3_dodge_charger_s_camo": {_FuelDecre = 14500;};
			case "cl3_e63_amg_camo": {_FuelDecre = 14900;};
			case "O_Truck_03_transport_F": {_FuelDecre = 17000;};
			case "O_Truck_03_covered_F": {_FuelDecre = 17000;};
			case "O_Truck_03_ammo_F": {_FuelDecre = 17000;};
			case "O_MRAP_02_F": {_FuelDecre = 18500;};
			case "DAR_ImpalaPolice": {_FuelDecre = 14500;};
			case "DAR_TahoePolice": {_FuelDecre = 14500;};
			case "DAR_TaurusPolice": {_FuelDecre = 14500;};
			case "DAR_ChargerPoliceState": {_FuelDecre = 15000;};
			case "DAR_DAR_02FirebirdSSVPolice": {_FuelDecre = 14500;};
			case "I_MRAP_03_F": {_FuelDecre = 18900;};
			case "DAR_ExplorerPolice": {_FuelDecre = 15500;};
			case "GNT_C185F": {_FuelDecre = 18500;};
			case "I_Heli_light_03_unarmed_F": {_FuelDecre = 17000;};
			case "B_Heli_Transport_01_F": {_FuelDecre = 19000;};
			case "C_Rubberboat": {_FuelDecre = 14000;};
			case "C_Boat_Civil_01_F": {_FuelDecre = 14500;};
			case "C_Boat_Civil_01_police_F": {_FuelDecre = 14500;};
			case "B_Boat_Armed_01_minigun_F": {_FuelDecre = 14500;};
			default {_FuelDecre = 10000;};
		
		};
		
		_fuelConsumption = _velocityOfVehicle/_FuelDecre + 0.0001;
		
		_vehicleToFuel setFuel ((fuel _vehicleToFuel)-_fuelConsumption);
		
		//Ligne de debug
		//hint format["Fuel Consomation: %1",_fuelConsumption];

		//Manque d'essence message
		
		if(fuel _vehicleToFuel < 0.2 && fuel _vehicleToFuel > 0.18) then
		{
			hint "La voiture manque d'essence , veuillez vous arrêtez à la prochaine station!";
		}
		else
		{
			if(fuel _vehicleToFuel < 0.03) then
			{
				hint "Vous êtes dans la réserve d'essence";
			};
		};
	};
	sleep 2;
};