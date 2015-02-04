/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for syncing house container data but when the inventory menu
	is closed a sync request is sent off to the server.
*/
private["_container"];
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
diag_log "------------- Bon, je suis dans le fichier de sync de truc de maison ---------";
if(isNull _container) exitWith {}; //MEH
diag_log "------------- Je passe par ici ? ---------------";
if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
diag_log "------------- Je passe par ici 1 ---------------";
	_house = lineIntersectsWith [getPosASL player, ATLtoASL screenToWorld[0.5,0.5]];
	diag_log "------------- Je passe par ici 2 ---------------";
	switch(true) do {
		case (count _house == 0): {_exit = true;}; 
		case (count _house == 1): {_house = _house select 0;};
		default {
			{if(_x isKindOf "House_F") exitWith {_house = _x;};} foreach _house;
		};
	};

diag_log "------------- Je passe par ici 4? ---------------";
	if(!isNil "_exit" OR !(_house isKindOf "House_F")) exitWith {systemChat localize "STR_House_ContainerError"};
diag_log "------------- Je passe par ici 5? ---------------";
	[[_house],"TON_fnc_updateHouseContainers",false,false] spawn life_fnc_MP;
};