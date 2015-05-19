_uid = [_this,0,"",[""]] call BIS_fnc_param;
_copname = [_this,1,"",[""]] call BIS_fnc_param;
_note = [_this,2,"",[""]] call BIS_fnc_param;
_reason = [_this,3,"",[""]] call BIS_fnc_param;
_time = [_this,4,-1,[0]] call BIS_fnc_param;

if(_uid isEqualTo "") exitWith {diag_log "Erreur 1 JAIL"};
if(_copname isEqualTo "") exitWith {diag_log "Erreur 2 JAIL"};
if(_note isEqualTo "") exitWith {diag_log "Erreur 3 JAIL"};
if(_reason isEqualTo "") exitWith {diag_log "Erreur 4 JAIL"};
if(_time == -1) exitWith {diag_log "Erreur 5 JAIL"};

_note = [_note] call DB_fnc_mresString;
_reason = [_reason] call DB_fnc_mresString;
_copname = [_copname] call DB_fnc_mresString;

_selectQuery = format["SELECT stic_com FROM players WHERE playerid='%1' LIMIT 1",_uid];

waitUntil{sleep (random 0.3); !DB_Async_Active};
_queryResult = [_selectQuery,2] call DB_fnc_asyncCall;

diag_log "------------- Client Query JAIL Request -------------";
diag_log format["QUERY: %1",_selectQuery];
diag_log format["Result: %1",_queryResult];
diag_log "-------------------------------------------------------";

if(count _queryResult == 0) exitWith {diag_log "Erreur 6 JAIL"};

_queryResult = _queryResult call DB_fnc_mresToArray;

_new = [_copname,_note,_time,_reason,1];
_queryResult pushBack _new;
_queryResult = [_queryResult] call DB_fnc_mresArray;

_queryUpdate = format["UPDATE players SET stic_com='%2' WHERE playerid='%1' LIMIT 1",_uid,_queryResult];
waitUntil{sleep (random 0.3); !DB_Async_Active};
[_queryUpdate,1] call DB_fnc_asyncCall;