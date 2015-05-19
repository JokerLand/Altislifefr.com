/*
	File: fn_triangleSignal.sqf
	Author: Sam
	
	Description:
	Creates a luminescent triangle.
*/
private["_position","_triangleSignal"];
_triangleSignal = "ALE_Triangle_Signalisation" createVehicle [0,0,0];
_triangleSignal attachTo[player,[0,5.5,0]];
_triangleSignal setDir 90;
_triangleSignal setVariable["item","triangleSignalDeployed",true];

life_action_triangleSignalDeploy = player addAction["Poser le Triangle",{if(!isNull life_trianglesignal) then {detach life_trianglesignal; life_trianglesignal = ObjNull;}; player removeAction life_action_triangleSignalDeploy; life_action_triangleSignalDeploy = nil;},"",999,false,false,"",'!isNull life_trianglesignal'];
life_trianglesignal = _triangleSignal;
waitUntil {isNull life_trianglesignal};
if(!isNil "life_action_triangleSignalDeploy") then {player removeAction life_action_triangleSignalDeploy;};
if(isNull _triangleSignal) exitWith {life_trianglesignal = ObjNull;};
_triangleSignal setPos [(getPos _triangleSignal select 0),(getPos _triangleSignal select 1),0];

life_action_triangleSignalPickup = player addAction["Prendre le Triangle",life_fnc_packupTriangle,"",0,false,false,"",
' _triangle = nearestObjects[getPos player,["ALE_Triangle_Signalisation"],2] select 0; !isNil "_triangle" && !isNil {(_triangle getVariable "item")}'];