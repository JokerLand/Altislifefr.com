#include <macro.h>
/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	All survival? things merged into one thread.
*/
private["_fnc_food","_fnc_water","_foodTime","_waterTime","_bp","_walkDis","_lastPos","_curPos", "_fnc_channel", "_fnc_server", "_load"];
_fnc_food =  {
	if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";}
	else
	{
		SUB(life_hunger,10);
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint localize "STR_NOTF_EatMSG_Death";};
		switch(life_hunger) do {
			case 30: {
                
                {hint localize "STR_NOTF_EatMSG_1";};
                [player, "faim",5] call CBA_fnc_globalSay3d;
                
        };
            
			case 20: {
                
                {hint localize "STR_NOTF_EatMSG_2";};
                [player, "faim",5] call CBA_fnc_globalSay3d;
                
        };
            
			case 10: {
                {hint localize "STR_NOTF_EatMSG_3";};
                [player, "faim",5] call CBA_fnc_globalSay3d;
				if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then {player setFatigue 1;};
			};
		};
	};
};
	
_fnc_water = {
	if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";}
	else
	{
		SUB(life_thirst,10);
		[] call life_fnc_hudUpdate;
		if(life_thirst < 2) then {player setDamage 1; hint localize "STR_NOTF_DrinkMSG_Death";};
		switch(life_thirst) do  {
			case 30: {
                
                {hint localize "STR_NOTF_DrinkMSG_1";};
                [player, "soif",5] call CBA_fnc_globalSay3d;
        };
            
			case 20: {
                {hint localize "STR_NOTF_DrinkMSG_2";};
				if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then {player setFatigue 1;};
                [player, "soif",5] call CBA_fnc_globalSay3d;
			};
			case 10: {
                {hint localize "STR_NOTF_DrinkMSG_3";};
				if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then {player setFatigue 1;};
                [player, "soif",5] call CBA_fnc_globalSay3d;
			};
		};
	};
};

_fnc_channel =
	{
		["Vous n'êtes pas connecté sur le canal Teamspeak 'EN JEU TASK FORCE RADIO'. Pour le rejoindre > Teamspeak > Settings > Plugins > Reload All."] call life_fnc_erreur;
		sleep 60;
		if (!((call TFAR_fnc_getTeamSpeakChannelName) == "EN JEU TASK FORCE RADIO")) then {
			["Vous n'êtes pas connecté sur le canal Teamspeak 'EN JEU TASK FORCE RADIO'. Pour le rejoindre > Teamspeak > Settings > Plugins > Reload All."] call life_fnc_erreur;
	} else {
			["Vous êtes maintenant dans le canal approprié. Bon jeu !"] call life_fnc_erreur;
		};
		sleep 60;
		if (!((call TFAR_fnc_getTeamSpeakChannelName) == "EN JEU TASK FORCE RADIO")) then {
			["Vous n'êtes pas connecté sur le canal Teamspeak 'EN JEU TASK FORCE RADIO'. Merci de le rejoindre au plus vite au risque de vous faire éjecter par le staff  (sauf si vous êtes en 'Besoin d'aide')"] call life_fnc_erreur;
	} else {
			["Vous êtes maintenant dans le canal approprié. Bon jeu !"] call life_fnc_erreur;
		};
		sleep 60;
		if (!((call TFAR_fnc_getTeamSpeakChannelName) == "EN JEU TASK FORCE RADIO")) then {
			["Vous n'êtes pas connecté sur le canal Teamspeak 'EN JEU TASK FORCE RADIO'. Merci de le rejoindre au plus vite au risque de vous faire éjecter par le staff  (sauf si vous êtes en 'Besoin d'aide')"] call life_fnc_erreur;
	} else {
			["Vous êtes maintenant dans le canal approprié. Bon jeu !"] call life_fnc_erreur;			
		};
	};
	
_fnc_server =
	{
		["Vous n'êtes pas connecté sur le serveur Teamspeak d'AltisLifeFr.com | Vous allez être expulsé dans 60 secondes."] call life_fnc_erreur;
		sleep 30;
		["Vous n'êtes pas connecté sur le serveur Teamspeak d'AltisLifeFr.com | Vous allez être expulsé dans 30 secondes."] call life_fnc_erreur;
		sleep 20;
		["Vous n'êtes pas connecté sur le serveur Teamspeak d'AltisLifeFr.com | Vous allez être expulsé dans 10 secondes !"] call life_fnc_erreur;
		sleep 10;
		if (!(["AltisLifeFR.com - Altis Life RP  | Launcher | TaskForceRadio", (call TFAR_fnc_getTeamSpeakServerName)] call BIS_fnc_inString)) then
		{
			[[player], "TON_fnc_cleanupRequest", false, false] spawn life_fnc_MP;
			["ServeurTeamspeak", false, true] call BIS_fnc_endMission;
	} else {
		["Vous êtes maintenant connecté sur le Teamspeak d'AltisLifeFr. Bon jeu !"] call life_fnc_erreur;
		};
	};

//Setup the time-based variables.
_foodTime = time;
_waterTime = time;
_walkDis = 0;
_bp = "";
_lastPos = visiblePosition player;
_lastPos = (SEL(_lastPos,0)) + (SEL(_lastPos,1));
_lastState = vehicle player;

while {true} do {

	/* Check TFR */

	if (!(["AltisLifeFR.com - Altis Life RP  | Launcher | TaskForceRadio", (call TFAR_fnc_getTeamSpeakServerName)] call BIS_fnc_inString)) then
		{
			if ((call life_adminlevel) == 0) then {
				[] call _fnc_server;
			};
		};

	if (!((call TFAR_fnc_getTeamSpeakChannelName) == "EN JEU TASK FORCE RADIO")) then
		{
			if ((call life_adminlevel) == 0) then {
				[] call _fnc_channel;
			};
		};

	/* Thirst / Hunger adjustment that is time based */
	if((time - _waterTime) > 600) then {[] call _fnc_water; _waterTime = time;};
	if((time - _foodTime) > 850) then {[] call _fnc_food; _foodTime = time;};
	
	/* Adjustment of carrying capacity based on backpack changes */
	if(EQUAL(backpack player,"")) then {
		life_maxWeight = life_maxWeightT;
		_bp = backpack player;
	} else {
		if(!(EQUAL(backpack player,"")) && {!(EQUAL(backpack player,_bp))}) then {
			_bp = backpack player;
			if (backpack player == "B_Parachute") then { _load = 24; };
			if (backpack player == "CUP_B_SLA_Medicbag") then { _load = 45; };
			if (backpack player == "CUP_B_AlicePack_Khaki") then { _load = 52; };
			if (backpack player == "CUP_B_CivPack_WDL") then { _load = 52; };
			if (backpack player == "B_FieldPack_cbr") then { _load = 52; };
			if (backpack player == "B_FieldPack_khk") then { _load = 52; };
			if (backpack player == "B_FieldPack_blk") then { _load = 52; };
			if (backpack player == "B_FieldPack_oucamo") then { _load = 52; };
			if (backpack player == "CUP_B_CivPack_WDL") then { _load = 52; };
			if (backpack player == "CUP_B_USMC_MOLLE_WDL") then { _load = 52; };
			if (backpack player == "TRYK_B_FieldPack_Wood") then { _load = 52; };
			if (backpack player == "ALFR_Civ_Bags_backpack_DC") then { _load = 104; };
			if (backpack player == "ALFR_Civ_Bags_backpack_terminator") then { _load = 104; };
			if (backpack player == "ALFR_Civ_Bags_backpack_monster") then { _load = 104; };
			if (backpack player == "ALFR_Civ_Bags_backpack_superman") then { _load = 104; };
			if (backpack player == "ALFR_Civ_Bags_Nitrado") then { _load = 104; };
			if (backpack player == "B_Carryall_oli") then { _load = 104; };
			if (backpack player == "B_Carryall_cbr") then { _load = 104; };
			if (backpack player == "B_Carryall_khk") then { _load = 104; };
			if (backpack player == "TRYK_B_Carryall_blk") then { _load = 104; };
			if (backpack player == "CUP_B_GER_Pack_Flecktarn") then { _load = 104; };
			if (backpack player == "CUP_B_GER_Pack_Tropentarn") then { _load = 104; };
			if (backpack player == "CUP_B_HikingPack_Civ") then { _load = 104; };
			if (backpack player == "B_Carryall_ocamo") then { _load = 104; };
			if (backpack player == "B_Carryall_mcamo") then { _load = 104; };
			if (backpack player == "TRYK_B_Carryall_JSDF") then { _load = 104; };
			if (backpack player == "TRYK_B_Carryall_wood") then { _load = 104; };
			if (backpack player == "ALFR_Police_Bags") then { _load = 104; };
			if (backpack player == "TRYK_B_Kitbag_blk") then { _load = 104; };
			if (backpack player == "TRYK_B_Medbag") then { _load = 104; };
			if (backpack player == "ALFR_armee_Bags") then { _load = 104; };			
			if (backpack player == "CUP_B_ACRPara_m95") then { _load = 128; };
			life_maxWeight = _load;
		};
	};
	
	/* Check if the player's state changed? */
	if(vehicle player != _lastState OR {!alive player}) then {
		[] call life_fnc_updateViewDistance;
		_lastState = vehicle player;
	};
	
	/* Check if the weight has changed and the player is carrying to much */
	if(life_carryWeight > life_maxWeight && {!isForcedWalk player}) then {
		player forceWalk true;
		if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),1)) then {player setFatigue 1;};
		hint localize "STR_NOTF_MaxWeight";
	} else {
		if(isForcedWalk player) then {
			player forceWalk false;
		};
	};
	
	/* Travelling distance to decrease thirst/hunger which is captured every second so the distance is actually greater then 650 */
	if(!alive player) then {_walkDis = 0;} else {
		_curPos = visiblePosition player;
		_curPos = (SEL(_curPos,0)) + (SEL(_curPos,1));
		if(!(EQUAL(_curPos,_lastPos)) && {(vehicle player == player)}) then {
			ADD(_walkDis,1);
			if(EQUAL(_walkDis,650)) then {
				_walkDis = 0;
				SUB(life_thirst,5);
				SUB(life_hunger,5);
				[] call life_fnc_hudUpdate;
			};
		};
		_lastPos = visiblePosition player;
		_lastPos = (SEL(_lastPos,0)) + (SEL(_lastPos,1));
	};
	uiSleep 1;
};
	
	
	
