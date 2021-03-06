#include <macro.h>
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
        
        //Insigne de police
        life_actions = life_actions + [player addAction["<t color='#1B72C4'>Montrer son Insigne</t>",life_fnc_InsigneAction,"",1,false,true,"",' playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man"']];

		//Place barriere
		life_actions = life_actions + [player addAction["Placer la barrière",{if(!isNull life_barriere) then {detach life_barriere; life_barriere = ObjNull;};},"",999,false,false,"",'!isNull life_barriere']];

		//Reprendre des barrieres
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
        
        //Place glissiere
		life_actions = life_actions + [player addAction["Placer la glissière",{if(!isNull life_glissiere) then {detach life_glissiere; life_glissiere = ObjNull;};},"",999,false,false,"",'!isNull life_glissiere']];

		//Reprendre des glissieres
		life_actions = life_actions + [player addAction["Reprendre la glissière",life_fnc_packupGlissiere,"",0,false,false,"",
		' _glissiere = nearestObjects[getPos player,["Land_Mil_ConcreteWall_F"],8] select 0; !isNil "_glissiere" && !isNil {(_glissiere getVariable "item")}']];
		life_actions = life_actions + [player addAction["Reprendre la glissière",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "glissiere" && (player distance cursorTarget) < 3 ']];
        
        //Place barstop
		life_actions = life_actions + [player addAction["Placer la barstop",{if(!isNull life_barstop) then {detach life_barstop; life_barstop = ObjNull;};},"",999,false,false,"",'!isNull life_barstop']];

		//Reprendre des barstops
		life_actions = life_actions + [player addAction["Reprendre la barstop",life_fnc_packupBarstop,"",0,false,false,"",
		' _barstop = nearestObjects[getPos player,["Land_BarGate_F"],8] select 0; !isNil "_barstop" && !isNil {(_barstop getVariable "item")}']];
		life_actions = life_actions + [player addAction["Reprendre la barstop",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "barstop" && (player distance cursorTarget) < 3 ']];
        
        //Place lightd
		life_actions = life_actions + [player addAction["Placer la lightd",{if(!isNull life_lightd) then {detach life_lightd; life_lightd = ObjNull;};},"",999,false,false,"",'!isNull life_lightd']];

		//Reprendre des lightd
		life_actions = life_actions + [player addAction["Reprendre la lightd",life_fnc_packupLightd,"",0,false,false,"",
		' _lightd = nearestObjects[getPos player,["Land_PortableLight_double_F"],8] select 0; !isNil "_lightd" && !isNil {(_lightd getVariable "item")}']];
		life_actions = life_actions + [player addAction["Reprendre la lightd",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "lightd" && (player distance cursorTarget) < 3 ']];


		//Saisir Objets
		life_actions = life_actions + [player addAction["Saisir objets",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];

		//Call backup
		life_actions pushBack (player addAction["<t color='#F70101'>Demande de renforts</t>",life_fnc_confirmRenfort,"",0,FALSE,FALSE,""]);

		//Se rendre
		life_actions pushBack (player addAction["<t color='#006400'>Se rendre</t>",life_fnc_confirmStop,"",0,FALSE,FALSE,""]);
	};
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
		//Se rendre
		life_actions pushBack (player addAction["<t color='#006400'>Se rendre</t>",life_fnc_confirmStop,"",0,FALSE,FALSE,""]);
        //Veste Explosive
life_actions = life_actions + [player addAction["<t color='#FFA500'>Activer la veste explosive</t>",life_fnc_vesteExplosive,"",0,false,false,"",
'vest player == "V_HarnessOGL_brn" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];                                                
        //Montrer sa carte d'identité
        life_actions = life_actions + [player addAction["<t color='#FFA500'>Montrer son Passeport</t>",life_fnc_PasseportAction,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man"']];                                                
	};

	case east: 

	{

		//entrer dans un vehicule meme verouillé
		life_actions = life_actions + [player addAction["Monter en conducteur",life_fnc_adacEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Monter en passager",life_fnc_adacEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Descendre",life_fnc_adacEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];

		//Se rendre
		life_actions pushBack (player addAction["<t color='#006400'>Se rendre</t>",life_fnc_confirmStop,"",0,FALSE,FALSE,""]);

	};

	case independent: 

	{

		//entrer dans un vehicule meme verouillé
		life_actions = life_actions + [player addAction["Monter en conducteur",life_fnc_medEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Monter en passager",life_fnc_medEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Descendre",life_fnc_medEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];

		//Place Cone
		life_actions = life_actions + [player addAction["Placer le cone",{if(!isNull life_cone) then {detach life_cone; life_cone = ObjNull;};},"",999,false,false,"",'!isNull life_cone']];

		//Reprendre des Cones
		life_actions = life_actions + [player addAction["Reprendre le cône",life_fnc_packupCone,"",0,false,false,"",
		' _cone = nearestObjects[getPos player,["RoadCone_F"],8] select 0; !isNil "_cone" && !isNil {(_cone getVariable "item")}']];
		life_actions = life_actions + [player addAction["Reprendre le cone",life_fnc_pickupItem,"",0,false,false,"",
		' !isNull cursorTarget && (typeOf cursorTarget) == "Land_Suitcase_F" && ((cursorTarget getVariable "item") select 0) == "cone" && (player distance cursorTarget) < 3 ']];

		//Se rendre
		life_actions pushBack (player addAction["<t color='#006400'>Se rendre</t>",life_fnc_confirmStop,"",0,FALSE,FALSE,""]);

	}
};