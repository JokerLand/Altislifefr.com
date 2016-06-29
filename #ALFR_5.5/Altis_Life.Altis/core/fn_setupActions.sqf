/*
	File: fn_setupActions.sqf
	Edit by Artkyom - AltisLifeFR.com
	
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
		
		//Saisir Objets
		life_actions = life_actions + [player addAction["Saisir objets",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'((count(nearestObjects [player,["WeaponHolder"],3])>0) || (count(nearestObjects [player,["GroundWeaponHolder"],3])>0) || (count(nearestObjects [player,["WeaponHolderSimulated"],3])>0))']];

		//Call backup
		life_actions pushBack (player addAction["<t color='#F70101'>Demande de renforts</t>",life_fnc_confirmRenfort,"",0,FALSE,FALSE,""]);
		
		// Prendre Traceur GPS
		life_actions = life_actions + [player addAction["Prendre le traceur GPS",life_fnc_robTraceurGPSAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && (cursorTarget getVariable["restrained",TRUE]) && ("ItemGPS" in assignedItems cursorTarget) ']];
	};
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Voler le traceur GPS
		life_actions = life_actions + [player addAction["Voler le traceur GPS",life_fnc_robTraceurGPSAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
        //Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
        //Veste Explosive
		life_actions = life_actions + [player addAction["<t color='#FFA500'>Activer la veste explosive</t>",life_fnc_vesteExplosive,"",0,false,false,"",'vest player == "V_BombJacket" && alive player && playerSide == civilian && !life_istazed && !(player getVariable "restrained") && !(player getVariable "Escorting") && !(player getVariable "transporting")']];                                                
        
		//Papier d'identité
		
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport</t>",life_fnc_civpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_passeport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Anthony Mallard)</t>",life_fnc_anthonypapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_anthonypasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Christina Yung)</t>",life_fnc_christinapapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_christinapasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Craig Feldspar)</t>",life_fnc_craigpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_craigpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Dewey Wilkerson)</t>",life_fnc_deweypapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_deweypasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Doug Carter)</t>",life_fnc_dougpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_dougpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Erica Harris)</t>",life_fnc_ericapapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_ericapasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Eric Kenarban)</t>",life_fnc_ericpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_ericpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Francis Pulivan)</t>",life_fnc_francispapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_francispasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Hal Hansen)</t>",life_fnc_halpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_halpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Jing-Mei Chan)</t>",life_fnc_jingmeipapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_jingmeipasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (John Smith)</t>",life_fnc_johnpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_johnpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Joshua Harris)</t>",life_fnc_joshuapapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_joshuapasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Leon Vance)</t>",life_fnc_leonpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_leonpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Marcel Dupont)</t>",life_fnc_marcelpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_marcelpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Marc Sanders)</t>",life_fnc_marcpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_marcpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Marie Dawson)</t>",life_fnc_mariepapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_mariepasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Micheal Williams)</t>",life_fnc_michealpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_michealpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Miranda Stevens)</t>",life_fnc_mirandapapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_mirandapasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Monica Deveaux)</t>",life_fnc_monicapapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_monicapasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Nathan Masahashi)</t>",life_fnc_nathanpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_nathanpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Nikki Bishop)</t>",life_fnc_nikkipapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_nikkipasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Richard Hunt)</t>",life_fnc_richardpapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_richardpasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Tom Dubois)</t>",life_fnc_tompapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_tompasseport >= 1) && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["<t color='#00FF00'>Montrer Passeport (Tracy Petrelli)</t>",life_fnc_tracypapier,"",1,false,true,"",' playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (life_inv_tracypasseport >= 1) && cursorTarget distance player < 5']];
	};

	case east: 

	{

		//entrer dans un vehicule meme verouillé
		life_actions = life_actions + [player addAction["Monter en conducteur",life_fnc_adacEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Monter en passager",life_fnc_adacEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Descendre",life_fnc_adacEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];

	};

	case independent: 

	{

		//entrer dans un vehicule meme verouillé
		life_actions = life_actions + [player addAction["Monter en conducteur",life_fnc_medEnter,"driver",200,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Monter en passager",life_fnc_medEnter,"passenger",100,false,false,"",'!isNull cursorTarget && ((cursorTarget isKindOf "Car")||(cursorTarget isKindOf "Air")||(cursorTarget isKindOf "Ship")) && (locked cursorTarget) != 0 && cursorTarget distance player < 5']];
		life_actions = life_actions + [player addAction["Descendre",life_fnc_medEnter,"exit",100,false,false,"",'(vehicle player != player) && (locked(vehicle player)==2)']];		

	}
};