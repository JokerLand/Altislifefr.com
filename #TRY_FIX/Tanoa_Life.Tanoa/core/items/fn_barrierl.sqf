#include "..\..\script_macros.hpp"
/*
    File: fn_barrierl.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Creates a barrier lumi and preps it.
*/
private["_barrierl"];
if (!isNil "life_action_barrierlPickup") exitWith {hint localize "STR_ISTR_barrierlDeployment"};    // avoid conflicts with addactions allowing duplication.
_barrierl = "plp_up_WoodBarrierShortPoliceLightsOn" createVehicle [0,0,0];
_barrierl attachTo[player,[0,5.5,0]];
_barrierl setDir 90;
_barrierl setVariable ["item","BarrierlDeployed",true];

life_action_barrierlDeploy = player addAction[localize "STR_ISTR_barrierl_Place",{if (!isNull life_barrierl) then {detach life_barrierl; life_barrierl = objNull;}; player removeAction life_action_barrierlDeploy; life_action_barrierlDeploy = nil;},"",999,false,false,"",'!isNull life_barrierl'];
life_barrierl = _barrierl;
waitUntil {isNull life_barrierl};

if (!isNil "life_action_barrierlDeploy") then {player removeAction life_action_barrierlDeploy;};
if (isNull _barrierl) exitWith {life_barrierl = objNull;};

_barrierl setPos [(getPos _barrierl select 0),(getPos _barrierl select 1),0];
_barrierl allowDamage false;

life_action_barrierlPickup = player addAction[localize "STR_ISTR_barrierl_Pack",life_fnc_packupBarrierl,"",0,false,false,"",
' _barrierls = nearestObjects[getPos player,["plp_up_WoodBarrierShortPoliceLightsOn"],8] select 0; !isNil "_barrierls" && !isNil {(_barrierls getVariable "item")}'];

if (life_HC_isActive) then {
    [_barrierl] remoteExec ["HC_fnc_barrierl",HC_Life]; //Send it to the HeadlessClient for monitoring.
} else {
    [_barrierl] remoteExec ["TON_fnc_barrierl",RSERV]; //Send it to the server for monitoring.
};
