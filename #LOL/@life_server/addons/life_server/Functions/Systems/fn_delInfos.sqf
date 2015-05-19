_mode = [_this,0,-1,[0]] call BIS_fnc_param;
_uid = [_this,1,"",[""]] call BIS_fnc_param;

diag_log "Test DELINFOS1";

if((_mode != 0) && (_mode != 1)) exitWith {diag_log "Erreur 1 DELETE"};
if(_uid isEqualTo "") exitWith {diag_log "Erreur 2 DELETE"};

diag_log "Test DELINFOS2";

if(_mode == 0) then {
	_queryUpdate = format["UPDATE players SET stic_com='""[]""' WHERE playerid='%1 LIMIT 1'",_uid];
	waitUntil{sleep (random 0.3); !DB_Async_Active};
	[_queryUpdate,1] call DB_fnc_asyncCall;
	diag_log "Test DELINFOS3";
} else {
	_queryUpdate = format["UPDATE players SET stic_notes='""[]""' WHERE playerid='%1 LIMIT 1'",_uid];
	waitUntil{sleep (random 0.3); !DB_Async_Active};
	[_queryUpdate,1] call DB_fnc_asyncCall;
	diag_log "Test DELINFOS4";
};