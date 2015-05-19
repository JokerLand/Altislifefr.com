/*
	File: fn_wantedFetchRequest.sqf
	Author: Mash6 -- Altis Life FR -- <http://www.altislifefr.com/>
	Compiled function name: life_fnc_wantedFetchRequest
	
	DO NOT USE WITHOUT PERMISSION
	
	Description:
	oseftamère
*/

_cop = [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
_civ = [_this,1,Objnull,[Objnull]] call BIS_fnc_param;

if(isNull _civ OR isNull _cop) exitWith {};

_cop = owner _cop;

_uid = getPlayerUID _civ;
_query = format["SELECT stic_com,stic_want,stic_notes FROM players WHERE playerid = '%1' LIMIT 1",_uid];
waitUntil{sleep (random 0.3); !DB_Async_Active};
_queryResult = [_query,2] call DB_fnc_asyncCall;

diag_log "------------- Client Query JAIL Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Result: %1",_queryResult];
diag_log "-------------------------------------------------------";

if(typeName _queryResult == "STRING") then {_queryResult = call compile format["%1", _queryResult];};
if(count _queryResult == 0) exitWith {wanted_fetchedData = [];_cop publicVariableClient "wanted_fetchedData"};

_notes = (_queryResult select 2) call DB_fnc_mresToArray;
_old = (_queryResult select 0) call DB_fnc_mresToArray;
_wanted = _queryResult select 1;

{
	_tmp = _x select 2;
	_x set [2,[_tmp] call DB_fnc_numberSafe];
	_tmp = _x select 4;
	_x set [4,[_tmp] call DB_fnc_numberSafe];
} foreach _old;

wanted_fetchedData = [_notes,_old,_wanted];
_cop publicVariableClient "wanted_fetchedData";