/*
	File: fn_setupActions.sqf

	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
    {
		//entrer dans un vehicule meme verouillé
		life_actions = life_actions + [player addAction["Monter en conducteur",life_fnc_copEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Monter en passager",life_fnc_copEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Descendre",life_fnc_copEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];

		//Place barriere
		life_actions = life_actions + [player addAction["Placer la barrière",{if(!isNull life_barriere) then {detach life_barriere; life_barriere = ObjNull;};},"",999,false,false,"",'!isNull life_barriere']];

		//Reprendre des barriere
		life_actions = life_actions + [player addAction["Reprendre la barrière",life_fnc_packupBarriere,"",0,false,false,"",
		' _barriere = nearestObjects[getPos player,["RoadBarrier_F"],8] select 0; !isNil "_barriere" && !isNil {(_barriere getVariable "item")}']];
		life_actions = life_actions + [player addAction["Reprendre la barrière",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "barriere" && (player distance cursorTarget) < 3 ']];

		//Place Cone
		life_actions = life_actions + [player addAction["Placer le cone",{if(!isNull life_cone) then {detach life_cone; life_cone = ObjNull;};},"",999,false,false,"",'!isNull life_cone']];

		//Reprendre des Cones
		life_actions = life_actions + [player addAction["Reprendre le cône",life_fnc_packupCone,"",0,false,false,"",
		' _cone = nearestObjects[getPos player,["RoadCone_F"],8] select 0; !isNil "_cone" && !isNil {(_cone getVariable "item")}']];
		life_actions = life_actions + [player addAction["Reprendre le cone",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "cone" && (player distance cursorTarget) < 3 ']];

		//Saisir Objets
		life_actions = life_actions + [player addAction["Saisir objets",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];

	};
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
	};
};