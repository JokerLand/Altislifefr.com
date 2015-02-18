/*
	File: fn_vehicleDeleteAction.sqf
	Author: Bryan "Tonic" Boardwine And altislifefr.com
	
	Description:
	Supprime le véhicule détruit par l'action de la police "détruire véhicule"
*/
private["_vehicle","_impound","_vInfo","_vInfo","_plate","_uid","_query","_sql","_unit"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_impound = [_this,1,false,[true]] call BIS_fnc_param;
_unit = [_this,2,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _vehicle OR isNull _unit) exitWith {life_destroye_inuse = false; (owner _unit) publicVariableClient "life_destroye_inuse";life_garage_store = false;(owner _unit) publicVariableClient "life_garage_store";}; //Bad data passed.

_vInfo = _vehicle getVariable["dbInfo",[]];
if(count _vInfo > 0) then
{
	_plate = _vInfo select 1;
	_uid = _vInfo select 0;
};


diag_log format["Impound %1", _immpound];

if(_impound) then
{
	diag_log format["Je passe ici ? "];
    
    if(count _vInfo == 0) then 
	{
		
        
        life_destroye_inuse = false;
		(owner _unit) publicVariableClient "life_destroye_inuse";
		if(!isNil "_vehicle" && {!isNull _vehicle}) then {
			deleteVehicle _vehicle;
		};
	} 
		else
	{
		
        
        diag_log format["Je devrais passé ici bordel ! "];
        _query = format["UPDATE vehicles SET alive='0', insure='0' WHERE pid='%1' AND plate='%2'",_uid,_plate];
		waitUntil {!DB_Async_Active};
		_thread = [_query,1] call DB_fnc_asyncCall;
		//waitUntil {scriptDone _thread};
		if(!isNil "_vehicle" && {!isNull _vehicle}) then {
			deleteVehicle _vehicle;
		};
		life_destroye_inuse = false;
		(owner _unit) publicVariableClient "life_destroye_inuse";
	};
}
	else
{
	if(count _vInfo == 0) exitWith
	{
		[[1,(localize "STR_Garage_Store_NotPersistent")],"life_fnc_broadcast",(owner _unit),false] spawn life_fnc_MP;
		life_garage_store = false;
		(owner _unit) publicVariableClient "life_garage_store";
	};
	
	if(_uid != getPlayerUID _unit) exitWith
	{
		[[1,(localize "STR_Garage_Store_NoOwnership")],"life_fnc_broadcast",(owner _unit),false] spawn life_fnc_MP;
		life_garage_store = false;
		(owner _unit) publicVariableClient "life_garage_store";
	};
	
	_query = format["UPDATE vehicles SET alive='0', insure='0' WHERE pid='%1' AND plate='%2'",_uid,_plate];
	waitUntil {!DB_Async_Active};
	_thread = [_query,1] call DB_fnc_asyncCall;
	//waitUntil {scriptDone _thread};
	if(!isNil "_vehicle" && {!isNull _vehicle}) then {
		deleteVehicle _vehicle;
	};
	life_garage_store = false;
	(owner _unit) publicVariableClient "life_garage_store";
	[[1,(localize "STR_Garage_Store_Success")],"life_fnc_broadcast",(owner _unit),false] spawn life_fnc_MP;
};