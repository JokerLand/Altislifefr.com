private["_type","_msg","_pid"];
_type = [_this,0,0,[0]] call BIS_fnc_param;
_msg = [_this,1,"",[""]] call BIS_fnc_param;

_pid = getPlayerUID player;

sendServerLog = [_type,_msg,_pid];
publicVariableServer "sendServerLog";