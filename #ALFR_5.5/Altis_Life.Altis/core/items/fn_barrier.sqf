#include "..\..\script_macros.hpp"
/*
    File: fn_barrier.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Creates a Barrier and preps it.
*/
private["_barrier"];
//if (!isNil "life_action_barrierPickup") exitWith {hint localize "STR_ISTR_barrierDeployment"};    // avoid conflicts with addactions allowing duplication.
_barrier = "plp_upm_WoodBarrierLongPolice" createVehicle [0,0,0];
_barrier attachTo[player,[0,5.5,0]];
_barrier setDir 90;
_barrier setVariable ["item","BarrierDeployed",true];

life_action_barrierDeploy = player addAction[localize "STR_ISTR_barrier_Place",{if (!isNull life_barrier) then {detach life_barrier; life_barrier = objNull;}; player removeAction life_action_barrierDeploy; life_action_barrierDeploy = nil;},"",999,false,false,"",'!isNull life_barrier'];
life_barrier = _barrier;
waitUntil {isNull life_barrier};

if (!isNil "life_action_barrierDeploy") then {player removeAction life_action_barrierDeploy;};
if (isNull _barrier) exitWith {life_barrier = objNull;};

_barrier setPos [(getPos _barrier select 0),(getPos _barrier select 1),0];
_barrier allowDamage false;

life_action_barrierPickup = player addAction[localize "STR_ISTR_barrier_Pack",life_fnc_packupBarrier,"",0,false,false,"",
' _barriers = nearestObjects[getPos player,["plp_upm_WoodBarrierLongPolice"],8] select 0; !isNil "_barriers" && !isNil {(_barriers getVariable "item")}'];

if (life_HC_isActive) then {
    [_barrier] remoteExec ["HC_fnc_barrier",HC_Life]; //Send it to the HeadlessClient for monitoring.
} else {
    [_barrier] remoteExec ["TON_fnc_barrier",RSERV]; //Send it to the server for monitoring.
};
