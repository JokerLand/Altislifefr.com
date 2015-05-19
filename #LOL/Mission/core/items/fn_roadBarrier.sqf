/*
	File: fn_roadCone.sqf
	Author: Mash6
	
	Description:
	Creates a road cone.
*/
private["_position","_roadBarrier"];
_roadBarrier = "RoadBarrier_F" createVehicle [0,0,0];
_roadBarrier attachTo[player,[0,5.5,0]];
_roadBarrier setDir 90;
_roadBarrier setVariable["item","roadBarrierDeployed",true];

life_action_roadConeDeploy = player addAction["Poser la Barrière",{if(!isNull life_roadbarrier) then {detach life_roadbarrier; life_roadbarrier = ObjNull;}; player removeAction life_action_roadBarrierDeploy; life_action_roadBarrierDeploy = nil;},"",999,false,false,"",'!isNull life_roadbarrier'];
life_roadbarrier = _roadBarrier;
waitUntil {isNull life_roadbarrier};
if(!isNil "life_action_roadBarrierDeploy") then {player removeAction life_action_roadBarrierDeploy;};
if(isNull _roadBarrier) exitWith {life_roadbarrier = ObjNull;};
_roadBarrier setPos [(getPos _roadBarrier select 0),(getPos _roadBarrier select 1),0];
life_action_roadBarrierPickup = player addAction["Prendre la Barrière",life_fnc_packupBarrier,"",0,false,false,"",
' _barrier = nearestObjects[getPos player,["RoadBarrier_F"],2] select 0; !isNil "_barrier" && !isNil {(_barrier getVariable "item")}'];