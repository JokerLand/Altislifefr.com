/*
	File: fn_updateRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Ain't got time to describe it, READ THE FILE NAME!

private["_uid","_chem","_hack","_hunt","_drive","_endu","_meca","_query","_thread"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_chem = [_this,1,0,[0]] call BIS_fnc_param;
_hack = [_this,2,0,[0]] call BIS_fnc_param;
_hunt = [_this,3,0,[0]] call BIS_fnc_param;
_drive = [_this,4,0,[0]] call BIS_fnc_param;
_endu = [_this,5,0,[0]] call BIS_fnc_param;
_meca = [_this,6,0,[0]] call BIS_fnc_param;
_medic = [_this,7,0,[0]] call BIS_fnc_param;
_lockpick = [_this,8,0,[0]] call BIS_fnc_param;
_boom = [_this,9,0,[0]] call BIS_fnc_param;
_holdup = [_this,10,0,[0]] call BIS_fnc_param;
_surv = [_this,11,0,[0]] call BIS_fnc_param;
_civpoints = [_this,12,0,[0]] call BIS_fnc_param;
_coppoints = [_this,13,0,[0]] call BIS_fnc_param;
_mine = [_this,14,0,[0]] call BIS_fnc_param;
_runned = [_this,15,0,[0]] call BIS_fnc_param;
_drived = [_this,16,0,[0]] call BIS_fnc_param;
_chem_state = [_this,17,0,[0]] call BIS_fnc_param;
_hack_state = [_this,18,0,[0]] call BIS_fnc_param;
_hunt_state = [_this,19,0,[0]] call BIS_fnc_param;
_drive_state = [_this,20,0,[0]] call BIS_fnc_param;
_endu_state = [_this,21,0,[0]] call BIS_fnc_param;
_meca_state = [_this,22,0,[0]] call BIS_fnc_param;
_medic_state = [_this,23,0,[0]] call BIS_fnc_param;
_lockpick_state = [_this,24,0,[0]] call BIS_fnc_param;
_boom_state = [_this,25,0,[0]] call BIS_fnc_param;
_holdup_state = [_this,26,0,[0]] call BIS_fnc_param;
_surv_state = [_this,27,0,[0]] call BIS_fnc_param;
_civ_state = [_this,28,0,[0]] call BIS_fnc_param;
_cop_state = [_this,29,0,[0]] call BIS_fnc_param;
_mine_state = [_this,30,0,[0]] call BIS_fnc_param;
_rebpoints = [_this,31,0,[0]] call BIS_fnc_param;
_reb_state = [_this,32,0,[0]] call BIS_fnc_param;
_drivePoints = [_this,33,0,[0]] call BIS_fnc_param;
_hackQuest = [_this,34,0,[0]] call BIS_fnc_param;

//Get to those error checks.
if(_uid == "") exitWith {};

_query = format["UPDATE stats SET chem='%1', hack='%2', hunt='%3', drive='%4', endu='%5', meca='%6', medic='%7', lockpick='%8', boom='%9', holdup='%10', surv='%11', civpoints='%12', coppoints='%13', mine='%14', runned='%15', drived='%16', chem_state='%17', hack_state='%18', hunt_state='%19', drive_state='%20', endu_state='%21', meca_state='%22', medic_state='%23', lockpick_state='%24', boom_state='%25', holdup_state='%26', surv_state='%27', civ_state='%28', cop_state='%29', mine_state='%30', rebpoints='%31', reb_state='%32', drivePoints='%34', hack_quest='%35' WHERE uid='%33' LIMIT 1",
_chem,
_hack,
_hunt,
_drive,
_endu,
_meca,
_medic,
_lockpick,
_boom,
_holdup,
_surv,
_civpoints,
_coppoints,
_mine,
_runned,
_drived,
_chem_state,
_hack_state,
_hunt_state,
_drive_state,
_endu_state,
_meca_state,
_medic_state,
_lockpick_state,
_boom_state,
_holdup_state,
_surv_state,
_civ_state,
_cop_state,
_mine_state,
_rebpoints,
_reb_state,
_uid,
_drivePoints,
_hackQuest
];

waitUntil {sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,1] call DB_fnc_asyncCall;
diag_log "------------- Insert Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";
*/