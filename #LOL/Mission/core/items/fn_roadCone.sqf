/*
	File: fn_roadCone.sqf
	Author: Mash6
	
	Description:
	Creates a road cone.
*/
private["_position","_roadCone"];
_roadCone = "RoadCone_L_F" createVehicle [0,0,0];
_roadCone attachTo[player,[0,5.5,0]];
_roadCone setDir 90;
_roadCone setVariable["item","roadConeDeployed",true];

life_action_roadConeDeploy = player addAction["Poser le Cone",{if(!isNull life_roadcone) then {detach life_roadcone; life_roadcone = ObjNull;}; player removeAction life_action_roadConeDeploy; life_action_roadConeDeploy = nil;},"",999,false,false,"",'!isNull life_roadcone'];
life_roadcone = _roadCone;
waitUntil {isNull life_roadcone};
if(!isNil "life_action_roadConeDeploy") then {player removeAction life_action_roadConeDeploy;};
if(isNull _roadCone) exitWith {life_roadcone = ObjNull;};
_roadCone setPos [(getPos _roadCone select 0),(getPos _roadCone select 1),0];

life_action_roadConePickup = player addAction["Prendre le Cone",life_fnc_packupCone,"",0,false,false,"",
' _cone = nearestObjects[getPos player,["RoadCone_L_F"],2] select 0; !isNil "_cone" && !isNil {(_cone getVariable "item")}'];