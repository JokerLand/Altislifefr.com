/*
	File: fn_insertRequest.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Does something with inserting... Don't have time for
	descriptions... Need to write it...
*/
private["_uid","_name","_side","_money","_bank","_licenses","_handler","_thread","_queryResult","_query","_alias"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_money = [_this,2,0,[""]] call BIS_fnc_param;
_bank = [_this,3,2500,[""]] call BIS_fnc_param;
_returnToSender = [_this,4,ObjNull,[ObjNull]] call BIS_fnc_param;

//Error checks
if((_uid == "") OR (_name == "")) exitWith {systemChat "Bad UID or name";}; //Let the client be 'lost' in 'transaction'
if(isNull _returnToSender) exitWith {systemChat "ReturnToSender is Null!";}; //No one to send this to!

_query = format["SELECT playerid, name FROM players WHERE playerid='%1' LIMIT 1",_uid];

waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "------------- Insert Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult];
diag_log "------------------------------------------------";

//Double check to make sure the client isn't in the database...
if(typeName _queryResult == "STRING") exitWith {[[],"SOCK_fnc_dataQuery",(owner _returnToSender),false] spawn life_fnc_MP;}; //There was an entry!
if(count _queryResult != 0) exitWith {[[],"SOCK_fnc_dataQuery",(owner _returnToSender),false] spawn life_fnc_MP;};

//Clense and prepare some information.
_name = [_name] call DB_fnc_mresString; //Clense the name of bad chars.
_alias = [[_name]] call DB_fnc_mresArray;
_money = [_money] call DB_fnc_numberSafe;
_bank = [_bank] call DB_fnc_numberSafe;

//Prepare the query statement..
_query = format["INSERT INTO players (playerid, name, cash, bankacc, aliases, cop_licenses, med_licenses, civ_licenses, civ_gear, cop_gear, rules, bounties,stic_com,stic_notes,stic_want) VALUES('%1', '%2', '%3', '%4', '%5','""[]""','""[]""','""[]""','""[]""','""[]""','0','""[]""','""[]""','""[]""','')",
	_uid,
	_name,
	_money,
	_bank,
	_alias
];

_query2 = format["INSERT INTO stats (uid, chem, hack, hunt, drive, endu, meca, medic, lockpick, boom, holdup, surv, coppoints, civpoints, mine, runned, drived, chem_state, hack_state, hunt_state, drive_state, endu_state, meca_state, medic_state, lockpick_state, boom_state, holdup_state, surv_state, civ_state, cop_state, mine_state, rebpoints, reb_state, drivePoints, hack_quest) VALUES('%1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','12','0')",_uid];

waitUntil {!DB_Async_Active};
[_query,1] call DB_fnc_asyncCall;
waitUntil {!DB_Async_Active};
_tickTime = diag_tickTime;
_queryResult2 = [_query2,1] call DB_fnc_asyncCall;
diag_log "------------- Insert Query Request -------------";
diag_log format["QUERY: %1",_query2];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log format["Result: %1",_queryResult2];
diag_log "------------------------------------------------";
[[],"SOCK_fnc_dataQuery",(owner _returnToSender),false] spawn life_fnc_MP;