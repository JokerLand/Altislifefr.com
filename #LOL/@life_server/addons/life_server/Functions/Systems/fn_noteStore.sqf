_copname = [_this,0,"",[""]] call BIS_fnc_param;
_uid = [_this,1,"",[""]] call BIS_fnc_param;
_note = [_this,2,"",[""]] call BIS_fnc_param;

if(_uid isEqualTo "") exitWith {diag_log "Erreur 1 Note"};
if(_copname isEqualTo "") exitWith {diag_log "Erreur 2 Note"};
if(_note isEqualTo "") exitWith {diag_log "Erreur 3 Note"};

_note = [_note] call DB_fnc_mresString;
_copname = [_copname] call DB_fnc_mresString;

_selectQuery = format["SELECT stic_notes FROM players WHERE playerid='%1' LIMIT 1",_uid];

waitUntil{sleep (random 0.3); !DB_Async_Active};
_queryResult = [_selectQuery,2] call DB_fnc_asyncCall;

diag_log "------------- Client Query NOTE Request -------------";
diag_log format["QUERY: %1",_selectQuery];
diag_log format["Result: %1",_queryResult];
diag_log "-------------------------------------------------------";

if(count _queryResult == 0) exitWith {diag_log "Erreur 4 Note"};

_queryResult = _queryResult call DB_fnc_mresToArray;

_new = [_note,_copname];
_queryResult pushBack _new;
_queryResult = [_queryResult] call DB_fnc_mresArray;
diag_log "Test STORENOTE1";
_queryUpdate = format["UPDATE players SET stic_notes='%2' WHERE playerid='%1' LIMIT 1",_uid,_queryResult];
waitUntil{sleep (random 0.3); !DB_Async_Active};
[_queryUpdate,1] call DB_fnc_asyncCall;