_uid = [_this,0,"",[""]] call BIS_fnc_param;
_copname = [_this,1,"",[""]] call BIS_fnc_param;
_note = [_this,2,"",[""]] call BIS_fnc_param;
_reason = [_this,3,"",[""]] call BIS_fnc_param;
_val = [_this,4,-1,[0]] call BIS_fnc_param;

diag_log "TESTDEMERDE1";

diag_log "------------";
diag_log format["UID : %1",_uid];
diag_log format["Copname : %1",_copname];
diag_log format["Note : %1",_note];
diag_log format["Reason : %1",_reason];
diag_log format["Val : %1",_val];
diag_log "------------";
if(_uid isEqualTo "") exitWith {diag_log "Erreur 1 Ticket"};
if(_copname isEqualTo "") exitWith {diag_log "Erreur 2 Ticket"};
if(_note isEqualTo "") exitWith {diag_log "Erreur 3 Ticket"};
if(_reason isEqualTo "") exitWith {diag_log "Erreur 4 Ticket"};
if(_val == -1) exitWith {diag_log "Erreur 5 Ticket"};

diag_log "TESTDEMERDE2";

_note = [_note] call DB_fnc_mresString;
_reason = [_reason] call DB_fnc_mresString;
_copname = [_copname] call DB_fnc_mresString;

_selectQuery = format["SELECT stic_com FROM players WHERE playerid='%1' LIMIT 1",_uid];

diag_log "TESTDEMERDE3";

waitUntil{sleep (random 0.3); !DB_Async_Active};
_queryResult = [_selectQuery,2] call DB_fnc_asyncCall;

diag_log "------------- Client Query TICKET Request -------------";
diag_log format["QUERY: %1",_selectQuery];
diag_log format["Result: %1",_queryResult];
diag_log "-------------------------------------------------------";

if(count _queryResult == 0) exitWith {diag_log "Erreur 6 Ticket"};

_queryResult = _queryResult call DB_fnc_mresToArray;

_new = [_copname,_note,_val,_reason,0];
_queryResult pushBack _new;
_queryResult = [_queryResult] call DB_fnc_mresArray;

_queryUpdate = format["UPDATE players SET stic_com='%2' WHERE playerid='%1' LIMIT 1",_uid,_queryResult];
waitUntil{sleep (random 0.3); !DB_Async_Active};
[_queryUpdate,1] call DB_fnc_asyncCall;