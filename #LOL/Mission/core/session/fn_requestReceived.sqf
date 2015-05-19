#include <macro.h>
/*
	File: fn_requestReceived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called by the server saying that we have a response so let's 
	sort through the information, validate it and if all valid 
	set the client up.
*/
life_session_tries = life_session_tries + 1;
if(life_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if(life_session_tries > 3) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};

//Error handling and  junk..
if(isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(typeName (_this select 0) == "STRING") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(count (_this select 0) == 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if(((_this select 0) select 0) == "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if((getPlayerUID player) != (_this select 0) select 0) exitWith {[] call SOCK_fnc_dataQuery;};

_stats = (_this select 1);
_clvl = 0;
_mlvl = 0;

if(playerSide == west) then {_clvl = parseNumber((_this select 0) select 7);};
if(playerSide == independent) then {_mlvl = parseNumber((_this select 0) select 7);};

0 cutText [format["Données reçues, traitement en cours...\nNom : %1\nNiveau Admin : %2\nRang de Gendarmerie : %3\nRang SAMU : %4\nNiveau Donateur : %5\n\nID JOUEUR : %6",profileName,parseNumber((_this select 0) select 4),_clvl,_mlvl,parseNumber((_this select 0) select 5),getPlayerUID player],"BLACK FADED"];
0 cutFadeOut 9999999;

//Parse basic player information.
life_cash = parseNumber ((_this select 0) select 2);
life_atmcash = parseNumber ((_this select 0) select 3);
__CONST__(life_adminlevel,parseNumber((_this select 0) select 4));
__CONST__(life_donator,parseNumber((_this select 0) select 5));
//Loop through licenses
if(count ((_this select 0) select 6) > 0) then {
	{
		missionNamespace setVariable [(_x select 0),(_x select 1)];
	} foreach ((_this select 0) select 6);
};

//Parse side specific information.
switch(playerSide) do {
	case west: {
		__CONST__(life_coplevel, parseNumber((_this select 0) select 7));
		__CONST__(life_medicLevel,0);
		life_blacklisted = (_this select 0) select 9;
		life_acceptedRules = ((_this select 0) select 10);
		life_gear = (_this select 0) select 8;
		[] call life_fnc_loadGear;
	};
	
	case civilian: {
		life_is_arrested = (_this select 0) select 7;
		__CONST__(life_coplevel, 0);
		__CONST__(life_medicLevel, 0);
		life_houses = (_this select 0) select 10;
		{
			_house = nearestBuilding (call compile format["%1", _x select 0]);
			life_vehicles set[count life_vehicles,_house];
		} foreach life_houses;
		
		life_gangData = (_this select 0) select 11;
		if(count life_gangData != 0) then {
			[] spawn life_fnc_initGang;
		};
		[] spawn life_fnc_initHouses;
		life_acceptedRules = ((_this select 0) select 9);
		life_gear = (_this select 0) select 8;
		[] call life_fnc_loadGear;
	};
	
	case independent: {
		__CONST__(life_medicLevel, parseNumber((_this select 0) select 7));
		__CONST__(life_copLevel,0);
		life_acceptedRules = ((_this select 0) select 8);
		[] call life_fnc_medicLoadout;
		life_paycheck = life_paycheck + 750;
	};
};
stat_chem = (_stats select 0);
stat_hack = (_stats select 1);
stat_hunt = (_stats select 2);
stat_drive = (_stats select 3);
stat_endu = (_stats select 4);
stat_meca = (_stats select 5);
stat_medic = (_stats select 6);
stat_lockpick = (_stats select 7);
stat_boom = (_stats select 8);
stat_holdup = (_stats select 9);
stat_surv = (_stats select 10);
stat_civpoints = (_stats select 11);
stat_coppoints = (_stats select 12);
stat_mine = (_stats select 13);
life_runned = (_stats select 14);
life_drived = (_stats select 15);
chem_state = (_stats select 16);
hack_state = (_stats select 17);
hunt_state = (_stats select 18);
drive_state = (_stats select 19);
endu_state = (_stats select 20);
meca_state = (_stats select 21);
medic_state = (_stats select 22);
lockpick_state = (_stats select 23);
boom_state = (_stats select 24);
holdup_state = (_stats select 25);
surv_state = (_stats select 26);
civ_state = (_stats select 27);
cop_state = (_stats select 28);
mine_state = (_stats select 29);
stat_rebpoints = (_stats select 30);
reb_state = (_stats select 31);
life_drivePoints = (_stats select 32);
hack_quest = (_stats select 33);
player setVariable["medic_state",medic_state,TRUE];
life_session_completed = true;