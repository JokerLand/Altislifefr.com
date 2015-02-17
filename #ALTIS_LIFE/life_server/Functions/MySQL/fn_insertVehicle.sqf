/*
	File: fn_insertVehicle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Inserts the vehicle into the database
*/
private["_uid","_side","_type","_className","_color","_plate","_query","_sql", "_mode"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_side = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_className = [_this,3,"",[""]] call BIS_fnc_param;
_color = [_this,4,-1,[0]] call BIS_fnc_param;
_plate = [_this,5,-1,[0]] call BIS_fnc_param;
_mode = [_this,6,-1,[0]] call BIS_fnc_param;


diag_log format["#################### _mode : %1",(_mode)];

//Stop bad data being passed.
if(_uid == "" OR _side == "" OR _type == "" OR _className == "" OR _color == -1 OR _plate == -1) exitWith {};

_query = format["INSERT INTO vehicles (side, classname, type, pid, alive, active, inventory, color, plate, insure) VALUES ('%1', '%2', '%3', '%4', '1','1','""[]""', '%5', '%6', '%7')",_side,_className,_type,_uid,_color,_plate,_mode];

waitUntil {sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
[_query,1] call DB_fnc_asyncCall;

diag_log "------------- Insert Query Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log "------------------------------------------------";