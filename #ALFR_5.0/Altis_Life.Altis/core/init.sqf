#include <macro.h>
/*
	Master client initialization file
*/
//Menu Admin
[] execVM "Anticheat.sqf";
[] execVM "AdminMenu.sqf";
life_firstSpawn = true;
life_session_completed = false;
spawnmenuon = 3;
private["_handle","_timeStamp"];
0 cutText["Mise en place du client... !!!! NE CLIQUEZ PAS SUR REAPPARITION !!!!","BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting Altis Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
[] call compile PreprocessFileLineNumbers "core\clientValidator.sqf";

//Setup initial client core functions
diag_log "::Life Client:: Initialization Variables";
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";

diag_log "::Life Client:: Variables initialized";
diag_log "::Life Client:: Setting up Eventhandlers";
[] call life_fnc_setupEVH;

diag_log "::Life Client:: Eventhandlers completed";
diag_log "::Life Client:: Setting up user actions";
[] call life_fnc_setupActions;

diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {TON_fnc_clientGangLeader})};

diag_log "::Life Client:: Received server functions.";
0 cutText ["Waiting for the server to be ready...","BLACK FADED"];
0 cutFadeOut 99999999;

diag_log "::Life Client:: Waiting for the server to be ready..";
waitUntil{!isNil "life_server_isReady"};
waitUntil{(life_server_isReady OR !isNil "life_server_extDB_notLoaded")};


player setVariable["tf_globalVolume", 0];

	/* Check Pugin */
	0 cutText ["Vérification du plugin TaskForceRadio sur Teamspeak. Si cela prend du temps veuillez vérifier que votre plugin est activer sur le Teamspeak. !! NE CLIQUEZ PAS SUR REAPPARITION !! ", "BLACK FADED"];
	0 cutFadeOut 99999999;
	waitUntil {!(isNil "TFAR_fnc_isTeamSpeakPluginEnabled")};


	0 cutText ["En attente de validation du plugin Teamspeak Task Force Radio. Si cela prend du temps veuillez vérifier que votre plugin est activer sur le Teamspeak. !! NE CLIQUEZ PAS SUR REAPPARITION !! ", "BLACK FADED"];
	0 cutFadeOut 99999999;
	waitUntil {(call TFAR_fnc_isTeamSpeakPluginEnabled)};

	/* Check Serveur TS */
		0 cutText ["Vous n'êtes pas connecté sur le Serveur Teamspeak d'AltisLifeFr (IP du Teamspeak : ts3.altislifefr.com). Une fois connecté sur le teamspeak, revenez dans le lobby et réessayer. Si vous êtes déjà sur TS vérifié de ne pas être connecté plusieurs fois. Il est OBLIGATOIRE d’être présent sur le serveur TS avec le plugin Task Force Radio, si vous n'êtes pas présent dessus vous encourez un bannissement. Le double TS (micro activé sur un autre TS), Skype ou autre logiciel de discussion sera sanctionable d'un kick. !! NE CLIQUEZ PAS SUR REAPPARITION !! ", "BLACK FADED"];
		0 cutFadeOut 99999999;
		waitUntil {((call TFAR_fnc_getTeamSpeakServerName) == "AltisLifeFR.com - Altis Life RP  | Launcher | TaskForceRadio")};

	/* Check Cannal TS */


	0 cutText ["Vérification de votre présence dans le canal Task Force Radio. Le double TS (micro activé sur un autre TS), Skype ou autre logiciel de discussion sera sanctionable d'un kick. ", "BLACK FADED"];
	0 cutFadeOut 99999999;
	player setVariable["tf_globalVolume", 0];
	waitUntil {((call TFAR_fnc_getTeamSpeakChannelName) == "EN JEU TASK FORCE RADIO")};
	

if(!isNil "life_server_extDB_notLoaded" && {life_server_extDB_notLoaded != ""}) exitWith {
	diag_log life_server_extDB_notLoaded;
	999999 cutText [life_server_extDB_notLoaded,"BLACK FADED"];
	999999 cutFadeOut 99999999;
};



[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
0 cutText["Finishing client setup procedure","BLACK FADED"];
0 cutFadeOut 9999999;

//diag_log "::Life Client:: Group Base Execution";
[] spawn life_fnc_escInterupt;

switch (playerSide) do {
	case west: {
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};
	case civilian: {
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	case independent: {
		//Initialize Medics and blah
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
	case east: {
		//Initialize ADAC
		_handle = [] spawn life_fnc_initAdac;
		waitUntil {scriptDone _handle};
	};
};

spawnmenuon = 0;
// player SVAR ["restrained",false,true];
// player SVAR ["Escorting",false,true];
// player SVAR ["transporting",false,true];

diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";

diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};

diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
player addRating 99999999;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                End of Altis Life Client Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";

life_sidechat = false;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false,true] call life_fnc_MP;
0 cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;

/* Set up frame-by-frame handlers */
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;

player SVAR ["steam64ID",getPlayerUID player];
player SVAR ["realname",profileName,true];

life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

[] spawn life_fnc_survival;

//Gaz lacrymogène
[] execVM "teargas.sqf";

// MELEE ANIMS HOTFIX
player addEventHandler["Fired",{
        _unit = _this select 0;
        _ammo = _this select 4;

        if(_ammo isKindOf "Melee") exitWith {
                _cfg = (configFile>>"CfgAmmo">>_ammo>>"Melee");
                _anim = getText(_cfg>>"anim");
                _unit playActionNow _anim;
        };
}];

/*// REBEL WEAPONS HOTFIX
if(playerSide != west && playerSide != east) then {
	player addEventHandler["Fired",{
			_weapon = _this select 1;
			_bullet = _this select 6;
			_civWpList = ["hgun_Rook40_F","hgun_SA_makarov_pm_F","hgun_sam_browning_hp_F","SIG_P226","smg_SA_9a91","hgun_PDW2000_F","C1987_MP7","ALFR_BaseballBat","hgun_SA_nambu_type14_F","ALFR_BaseballBat_Grey","ALFR_Machete","hgun_Pistol_heavy_01_F","SMG_01_F","C1987_MP7_ucp","C1987_MP7_urb","C1987_MP7_dmarpat","C1987_MP7_marpat","C1987_MP7_wcam","C1987_MP7_sand","C1987_MP7_nwu","C1987_MP7_folded_p","R3F_MP5A5"];
			if(!(_weapon IN _civWpList) && !license_civ_rebel) then {
				deleteVehicle _bullet;
				titleText["Vous n'avez pas la license rebelle et vous ne pouvez donc pas utiliser cette arme","PLAIN"];
			};
	}];
};*/

[] spawn
{
	private["_isUnconscious"];
	while {true} do {
		// _isUnconscious = player getvariable ["ACE_isUnconscious", false];
		
		// unconscious
		waitUntil {sleep 0.1; player getvariable ["ACE_isUnconscious", false] };
		sleep 1;
		createDialog "DeathScreen";

		(findDisplay 7300) displaySetEventHandler ["KeyDown","if((_this select 1) == 1) then {true}"]; //Block the ESC menu
		
		[] call life_fnc_getHLC;
		[player,"",3] remoteExec ["TON_fnc_logdeath",serverhc];
		
		//Create a thread for something?
		player spawn
		{
			private["_maxTime","_RespawnBtn","_Timer"];
			disableSerialization;
			_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
			_Timer = ((findDisplay 7300) displayCtrl 7301);
			if(FETCH_CONST(life_adminlevel) > 0) then {
				maxTimeRespawn = time + 10;
				_RespawnBtn ctrlEnable false;
				waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(maxTimeRespawn - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
				round(maxTimeRespawn - time) <= 0 OR isNull _this};
				_RespawnBtn ctrlEnable true;
				_Timer ctrlSetText localize "STR_Medic_Respawn_2";
				maxTimeRespawn = 0;
			} else {
				maxTimeRespawn = time + (life_respawn_timer * 60);
				_RespawnBtn ctrlEnable false;
				waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(maxTimeRespawn - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
				round(maxTimeRespawn - time) <= 0 OR isNull _this};
				_RespawnBtn ctrlEnable true;
				_Timer ctrlSetText localize "STR_Medic_Respawn_2";
				maxTimeRespawn = 0;
			};
		};

		[player] spawn life_fnc_deathScreen;
		
		// not unconscious
		waitUntil { !(player getvariable ["ACE_isUnconscious", false]) };
		
		closeDialog 0;
		[profileName, "COMA"] remoteExecCall ["life_fnc_deleteMarker",[independent,west]];
	};
};

// MELEE MAGS HOTFIX
[] spawn {
	_mweapons = ["ALFR_BaseballBat","ALFR_BaseballBat_Grey","ALFR_Machete"];
	while{true} do {
		if(((secondaryWeapon player) IN _mweapons) && !("BaseballBat_Swing" IN (magazines player))) then {
			player addMagazine "BaseballBat_Swing";
		};
		sleep 3;
	};
};

CONSTVAR(life_paycheck); //Make the paycheck static.
if(EQUAL(LIFE_SETTINGS(getNumber,"enable_fatigue"),0)) then {player enableFatigue false;};
[[getPlayerUID player,player getVariable["realname",name player]],"life_fnc_wantedProfUpdate",false,false] spawn life_fnc_MP;