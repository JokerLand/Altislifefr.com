private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption","_FuelDecre"];

while{true} do 
{
	_vehicleToFuel = (vehicle player);
	if(isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) && !(_vehicleToFuel isKindOf "Air") && (_vehicleToFuel != player) ) then
	{
		_velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6;
		
		//Perte de fuel en fonction du vehicule ++ plus le chiffre est haut plus le fuel partira lentement ++
		switch (typeOf (_vehicleToFuel)) do {
			case "C_SUV_01_F": {_FuelDecre = 130000;};
			case "C_Offroad_01_F": {_FuelDecre = 150000;};
			case "O_Heli_Light_02_unarmed_F": {_FuelDecre = 151000;};
			case "RDS_Gaz24_Civ_02": {_FuelDecre = 110000;};
			case "RDS_S1203_Civ_01": {_FuelDecre = 110000;};
			case "A3L_VolksWagenGolfGTiblack": {_FuelDecre = 120000;};
			case "DAR_ImpalaCiv": {_FuelDecre = 117000;};
			case "RDS_Golf4_Civ_01": {_FuelDecre = 120000;};
			case "RDS_Octavia_Civ_01": {_FuelDecre = 120000;};
			case "A3L_PuntoBlue": {_FuelDecre = 125000;};
			case "cl3_civic_vti_black": {_FuelDecre = 115000;};
			case "DAR_FusionCiv": {_FuelDecre = 120000;};
			case "DAR_TaurusCiv": {_FuelDecre = 120000;};
			case "cl3_polo_gti_black": {_FuelDecre = 118000;};
			case "cl3_insignia_black": {_FuelDecre = 135000;};
			case "DAR_TahoeCiv": {_FuelDecre = 150000;};
			case "SAL_AudiCiv": {_FuelDecre = 140000;};
			case "I_G_Offroad_01_F": {_FuelDecre = 170000;};
			case "DAR_M3CivGrey": {_FuelDecre = 125000;};
			case "cl3_e63_amg_black": {_FuelDecre = 150000;};
			case "cl3_range_rover_black": {_FuelDecre = 170000;};
			case "SAL_IROCCiv": {_FuelDecre = 130000;};
			case "SAL_77TRANSAMCiv": {_FuelDecre = 130000;};
			case "cl3_dodge_charger_s_black": {_FuelDecre = 160000;};
			case "DAR_ChallengerCivWhite": {_FuelDecre = 160000;};
			case "cl3_z4_2008_black": {_FuelDecre = 147000;};
			case "cl3_carrera_gt_black": {_FuelDecre = 146000;};
			case "cl3_dbs_volante_black": {_FuelDecre = 142100;};
			case "Jonzie_Viper": {_FuelDecre = 134200;};
			case "cl3_r8_spyder_black": {_FuelDecre = 147890;};
			case "cl3_458_black": {_FuelDecre = 155630;};
			case "cl3_murcielago_black": {_FuelDecre = 153000;};
			case "cl3_reventon_black": {_FuelDecre = 152000;};
			case "DAR_MF1Civ": {_FuelDecre = 148700;};
			case "cl3_lamborghini_gt1_black": {_FuelDecre = 157000;};
			case "C_Van_01_transport_F": {_FuelDecre = 141000;};
			case "C_Van_01_box_F": {_FuelDecre = 140000;};
			case "C_Offroad_01_repair_F": {_FuelDecre = 149900;};
			case "I_Truck_02_transport_F": {_FuelDecre = 158000;};
			case "I_Truck_02_covered_F": {_FuelDecre = 158000;};
			case "B_Truck_01_transport_F": {_FuelDecre = 158000;};
			case "A3L_Dumptruck": {_FuelDecre = 159000;};
			case "B_Truck_01_covered_F": {_FuelDecre = 160000;};
			case "ALFR_GeK_Scania_420": {_FuelDecre = 169000;};
			case "C_Van_01_Fuel_F": {_FuelDecre = 142110;};
			case "B_Heli_Light_01_F": {_FuelDecre = 147000;};
			case "B_Truck_01_box_F": {_FuelDecre = 143000;};
			case "cl3_veyron_wht_blu": {_FuelDecre = 133000;};
			case "O_Truck_03_device_F": {_FuelDecre = 150000;};
			case "I_Heli_Transport_02_F": {_FuelDecre = 177000;};
			case "IVORY_T6A_1": {_FuelDecre = 187500;};
			case "B_G_Offroad_01_F": {_FuelDecre = 168000;};
			case "B_G_Van_01_transport_F": {_FuelDecre = 138000;};
			case "cl3_insignia_camo": {_FuelDecre = 149000;};
			case "cl3_dodge_charger_s_camo": {_FuelDecre = 145000;};
			case "cl3_e63_amg_camo": {_FuelDecre = 149000;};
			case "O_Truck_03_transport_F": {_FuelDecre = 170000;};
			case "O_Truck_03_covered_F": {_FuelDecre = 170000;};
			case "O_Truck_03_ammo_F": {_FuelDecre = 170000;};
			case "O_MRAP_02_F": {_FuelDecre = 185000;};
			case "DAR_ImpalaPolice": {_FuelDecre = 145000;};
			case "DAR_TahoePolice": {_FuelDecre = 145000;};
			case "DAR_TaurusPolice": {_FuelDecre = 145000;};
			case "DAR_ChargerPoliceState": {_FuelDecre = 150000;};
			case "DAR_DAR_02FirebirdSSVPolice": {_FuelDecre = 145000;};
			case "I_MRAP_03_F": {_FuelDecre = 189000;};
			case "DAR_ExplorerPolice": {_FuelDecre = 155000;};
			case "GNT_C185F": {_FuelDecre = 185000;};
			case "I_Heli_light_03_unarmed_F": {_FuelDecre = 170000;};
			case "B_Heli_Transport_01_F": {_FuelDecre = 190000;};
			case "C_Rubberboat": {_FuelDecre = 140000;};
			case "C_Boat_Civil_01_F": {_FuelDecre = 145000;};
			case "C_Boat_Civil_01_police_F": {_FuelDecre = 145000;};
			case "B_Boat_Armed_01_minigun_F": {_FuelDecre = 145000;};
			default {_FuelDecre = 1000000;};
		
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