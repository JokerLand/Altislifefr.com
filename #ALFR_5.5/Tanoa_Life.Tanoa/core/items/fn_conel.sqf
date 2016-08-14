#include "..\..\script_macros.hpp"
/*
    File: fn_conell.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Creates a Cone lumi and preps it.
*/
private["_conel"];
if (!isNil "life_action_conelPickup") exitWith {hint localize "STR_ISTR_conelDeployment"};    // avoid conflicts with addactions allowing duplication.
_conel = "RoadCone_L_F" createVehicle [0,0,0];
_conel attachTo[player,[0,5.5,0]];
_conel setDir 90;
_conel setVariable ["item","ConeDeployed",true];

life_action_conelDeploy = player addAction[localize "STR_ISTR_conel_Place",{if (!isNull life_conel) then {detach life_conel; life_conel = objNull;}; player removeAction life_action_conelDeploy; life_action_conelDeploy = nil;},"",999,false,false,"",'!isNull life_conel'];
life_conel = _conel;
waitUntil {isNull life_conel};

if (!isNil "life_action_conelDeploy") then {player removeAction life_action_conelDeploy;};
if (isNull _conel) exitWith {life_conel = objNull;};

_conel setPos [(getPos _conel select 0),(getPos _conel select 1),0];
_conel allowDamage false;

life_action_conelPickup = player addAction[localize "STR_ISTR_conel_Pack",life_fnc_packupConesl,"",0,false,false,"",
' _conels = nearestObjects[getPos player,["RoadCone_L_F"],8] select 0; !isNil "_conels" && !isNil {(_conels getVariable "item")}'];

if (life_HC_isActive) then {
    [_conel] remoteExec ["HC_fnc_conel",HC_Life]; //Send it to the HeadlessClient for monitoring.
} else {
    [_conel] remoteExec ["TON_fnc_conel",RSERV]; //Send it to the server for monitoring.
};
