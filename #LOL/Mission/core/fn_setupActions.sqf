/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		life_actions = life_actions + [player addAction["Dépecer",life_fnc_gatherRabbit,"",0,false,false,"",'
		!isNull cursorTarget && ((typeOf cursorTarget) == "Rabbit_F") && (!alive cursorTarget) && !life_gathering && life_inv_huntingKnife > 0']];
		life_actions = life_actions + [player addAction["Voler l'Argent",life_fnc_holdupVehicle,"",0,false,false,"",'
		!isNull cursorTarget && ((typeOf cursorTarget) == "ALE_Brinks_Hunter") && alive cursorTarget && !life_action_inUse && (cursorTarget getVariable["brinksvehic",false]) && !license_civ_brinks']];
		rsdep_setAsTowerAction = player addAction ["Définir comme Dépanneuse",rsdep_fnc_setAsTower,"",0,false,false,"",'
		((vehicle player) != player) && ((typeOf (vehicle player)) IN rsdep_allowedVehicles) && ((vehicle player) != rsdep_towerVehic) && !rsdep_isTowing && license_civ_rsdep'];
		rsdep_unTowAction = player addAction ["Detacher le Vehicule",rsdep_fnc_unTowVehic,"",0,false,false,"",'
		!isNull cursorTarget && cursorTarget isKindOf "Car" && (!isNull (cursorTarget getVariable ["towedBy",objNull])) && rsdep_isTowing && ((player distance cursorTarget) < 4) && license_civ_rsdep'];
		rsdep_towAction = player addAction ["Tracter ce Vehicule",rsdep_fnc_towVehic,"",0,false,false,"",'
		!isNull cursorTarget && cursorTarget isKindOf "Car" && (!isNull rsdep_towerVehic) && ((cursorTarget getVariable ["towedBy",objNull]) != objNull) && ((vehicle player) == player) && !rsdep_isTowing && (cursorTarget != rsdep_towerVehic) && !(rsdep_towerVehic getVariable ["towing",false]) && ((player distance cursorTarget) < 4)&& license_civ_rsdep'];
		rsdep_deleteVehAction = player addAction ["Mettre en Fourrière",rsdep_fnc_deleteVeh,"",0,false,false,"",'
		!isNull cursorTarget && cursorTarget isKindOf "Car" && (isNull (cursorTarget getVariable ["towedBy",objNull])) && ((player distance cursorTarget) < 4) && ((player distance (getMarkerPos "fourriere")) < 30) && license_civ_rsdep'];
		rsdep_lightsAction = player addAction ["Allumer/Eteindre les Gyros",{[(vehicle player)] call life_fnc_rsLightsAction},"",0,false,false,"",'
		((vehicle player) != player) && ((typeof (vehicle player) == "C_Offroad_01_repair_F")) && license_civ_rsdep'];
	};
	case west:
	{
		life_actions = life_actions + [player addAction["<t color='#ffff00'>Saisir les Armes</t>",life_fnc_seizePlayerWeapons,"",0,false,false,"",'
		!isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget == civilian) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && (cursorTarget getVariable "restrained")']];
		life_actions = life_actions + [player addAction["Saisir Objets",life_fnc_seizeObjects,"",0,false,false,"",'
		((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];
		//CopEnter - Driver Seat
		life_actions = life_actions + [player addAction[localize "STR_pAct_DriverSeat",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 3.5']];
		//CopEnter - Exit
		life_actions = life_actions + [player addAction[localize "STR_pAct_GoOut",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];
		life_actions = life_actions + [player addAction["Chercher des indices",life_fnc_checkBody,"",0,false,false,"",'!isNull cursorTarget && !alive cursorTarget']];
		life_actions = life_actions + [player addAction["Donner les indices",life_fnc_giveProofs,"",0,false,false,"",'!isNull cursorTarget && ((side cursorTarget) == west) && !(actualProofs isEqualTo [])']];
	};
};
life_actions = life_actions + [player addAction["Faire le Plein",life_fnc_refuel,"",0,false,false,"",'(count(nearestObjects [player,["Land_fs_feed_F"],5])>0) && ((vehicle player) != player) && ((driver (vehicle player)) == player) && ((fuel (vehicle player)) < 0.98) && ((speed (vehicle player)) < 3)']];
// Tracker sur Véhicule
life_actions = life_actions + [player addAction["S'assoir",mash6_fnc_sitDown,"",0,false,false,"",'
!isNull cursorTarget && ((typeOf cursorTarget) == "Land_CampingChair_V2_F") && ((vehicle player) == player) && !life_action_inUse && !onChair']];
life_actions = life_actions + [player addAction["Se lever",mash6_fnc_standUp,"",0,false,false,"",'
onChair']];