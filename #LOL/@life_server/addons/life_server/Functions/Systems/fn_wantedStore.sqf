_uid = [_this,0,"",[""]] call BIS_fnc_param;
_wanted = [_this,1,"",[""]] call BIS_fnc_param;

if(_uid isEqualTo "") exitWith {diag_log "Erreur 1 Wanted"};
if(_wanted isEqualTo "") exitWith {diag_log "Erreur 2 Wanted"};

_wanted = [_wanted] call DB_fnc_mresString;

_queryUpdate = format["UPDATE players SET stic_want='%2' WHERE playerid='%1' LIMIT 1",_uid,_wanted];
waitUntil{sleep (random 0.3); !DB_Async_Active};
[_queryUpdate,1] call DB_fnc_asyncCall;