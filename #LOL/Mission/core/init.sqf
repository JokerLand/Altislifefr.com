#include <macro.h>
/*
	Master client initialization file
*/
[] execVM "Anticheat.sqf";
[] execVM "AdminMenu.sqf";
life_firstSpawn = true;
life_hasSpawned = false;
life_session_completed = false;
private["_handle","_timeStamp"];
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting Altis Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
//Setup initial client core functions
diag_log "::Life Client:: Initialization Variables";
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";
[] call compile PreprocessFileLineNumbers "core\rsdep\initRSSystem.sqf";
diag_log "::Life Client:: Variables initialized";
diag_log "::Life Client:: Setting up Eventhandlers";
[] call life_fnc_setupEVH;
diag_log "::Life Client:: Eventhandlers completed";
diag_log "::Life Client:: Setting up user actions";
[] call life_fnc_setupActions;
diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {clientGangLeader})};
diag_log "::Life Client:: Received server functions.";
waitUntil {(!isNil {fnc_setupFuncs})};
_handle = [] spawn fnc_setupFuncs;
waitUntil {scriptDone _handle;};
[] call life_fnc_variables;
0 cutText ["Waiting for the server to be ready...","BLACK FADED"];
0 cutFadeOut 99999999;
diag_log "::Life Client:: Waiting for the server to be ready..";
waitUntil{!isNil "life_server_isReady"};
waitUntil{(life_server_isReady OR !isNil "life_server_extDB_notLoaded")};
if(!isNil "life_server_extDB_notLoaded") exitWith {
	diag_log "::Life Client:: Server did not load extDB";
	999999 cutText ["The server-side extension extDB was not loaded into the engine, report this to the server admin.","BLACK FADED"];
	999999 cutFadeOut 99999999;
};
[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
sleep 5;
0 cutText["Finalisation de la connexion","BLACK FADED"];
0 cutFadeOut 9999999;

//diag_log "::Life Client:: Group Base Execution";
[] spawn life_fnc_escInterupt;
if(life_acceptedRules == 0) then {
	_rules = createDialog "life_forcerules_menu";
	waitUntil {!dialog};
};
if(life_acceptedRules == 0) exitWith {
	0 cutText[" ","BLACK FADED"];
	0 cutFadeOut 9999999;
	["RefuseRules",false,true] call BIS_fnc_endMission;
};
switch (playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};
	
	case civilian:
	{
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	
	case independent:
	{
		//Initialize Medics and blah
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
	
	case sideLogic:
    {
        _handle = [] spawn life_fnc_initZeus;
        waitUntil {scriptDone _handle};
    };
};

player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
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
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
0 cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
player setVariable["steam64ID",getPlayerUID player];
player setVariable["realname",profileName,true];
[] execVM "scripts\statusBar.sqf";
life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

life_fnc_switchMove = {
    private["_object","_anim"];
    _object = _this select 0;
    _anim = _this select 1;

    _object switchMove _anim;
    
};

mash6_fnc_sitDown = {
    private["_chair","_unit"];
    _chair = _this select 0;
    _unit = _this select 1;

	[[_unit, "Crew"], "life_fnc_switchMove"] spawn BIS_fnc_MP; 
	_unit setPos (getPos _chair); 
	_unit setDir ((getDir _chair) - 180); 
    _unit setpos [getpos _unit select 0, getpos _unit select 1,((getpos _unit select 2) +1)];
	onChair = true;
};

mash6_fnc_standUp = {
	player switchMove "";
	onChair = false;
};

[] execVM "core\init_survival.sqf";

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

[] spawn life_fnc_autoSave;

call mod_cruiseControl;

[] execVM "scripts\teargas.sqf";
__CONST__(life_paycheck,life_paycheck);

illegalmarkers = ["cocaine processing","contre_armes","fossile_area","fossile_1","conserv_1","Dealer_1_1","donator_area_1_1_1","Dealer_1","weed_1","tabac_p_1","Weed_p_1","warm_marker","grapes_1","meth_labo","cocaine_1","coke_area","Dealer_1_4","turle_dealer_2","rebelop","heroin_1","heroin_area","heroin_p","Dealer_1_4_1","turtle_3","turtle_1_name_2","camp_guer","turtle_2","turtle_1_name_1","turtle_1","turtle_1_name"];

[] execVM "scripts\restoreKeys.sqf";
[] execVM "scripts\zlt_fastrope.sqf";

if (playerSide == west) then {
	{ deleteMarkerLocal _x; } forEach illegalmarkers;
};

[] execVM "scripts\safezone.sqf";