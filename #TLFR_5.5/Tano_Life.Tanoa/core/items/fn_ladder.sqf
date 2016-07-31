#include "..\..\script_macros.hpp"
/*
    File: fn_ladder.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Creates a ladder and preps it.
*/
private["_ladder"];
if (!isNil "life_action_ladderPickup") exitWith {hint localize "STR_ISTR_ladderDeployment"};    // avoid conflicts with addactions allowing duplication.
_ladder = "Land_PierLadder_F" createVehicle [0,0,0];
_ladder attachTo[player,[0,5.5,5]];
_ladder setVariable ["item","LadderDeployed",true];

life_action_ladderDeploy = player addAction[localize "STR_ISTR_ladder_Place",{if (!isNull life_ladder) then {detach life_ladder; life_ladder = objNull;}; player removeAction life_action_ladderDeploy; life_action_ladderDeploy = nil;},"",999,false,false,"",'!isNull life_ladder'];
life_ladder = _ladder;
waitUntil {isNull life_ladder};

if (!isNil "life_action_ladderDeploy") then {player removeAction life_action_ladderDeploy;};
if (isNull _ladder) exitWith {life_ladder = objNull;};

_ladder setPos [(getPos _ladder select 0),(getPos _ladder select 1),0];
_ladder allowDamage false;

life_action_ladderPickup = player addAction[localize "STR_ISTR_ladder_Pack",life_fnc_packupLadders,"",0,false,false,"",
' _ladders = nearestObjects[getPos player,["Land_PierLadder_F"],8] select 0; !isNil "_ladders" && !isNil {(_ladders getVariable "item")}'];

if (life_HC_isActive) then {
    [_ladder] remoteExec ["HC_fnc_ladder",HC_Life]; //Send it to the HeadlessClient for monitoring.
} else {
    [_ladder] remoteExec ["TON_fnc_ladder",RSERV]; //Send it to the server for monitoring.
};
