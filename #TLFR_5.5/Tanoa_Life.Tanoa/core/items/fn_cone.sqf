#include "..\..\script_macros.hpp"
/*
    File: fn_cone.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Creates a Cone and preps it.
*/
private["_cone"];
if (!isNil "life_action_conePickup") exitWith {hint localize "STR_ISTR_ConeDeployment"};    // avoid conflicts with addactions allowing duplication.
_cone = "RoadCone_F" createVehicle [0,0,0];
_cone attachTo[player,[0,5.5,0]];
_cone setDir 90;
_cone setVariable ["item","ConeDeployed",true];

life_action_coneDeploy = player addAction[localize "STR_ISTR_Cone_Place",{if (!isNull life_cone) then {detach life_cone; life_cone = objNull;}; player removeAction life_action_coneDeploy; life_action_coneDeploy = nil;},"",999,false,false,"",'!isNull life_cone'];
life_cone = _cone;
waitUntil {isNull life_cone};

if (!isNil "life_action_coneDeploy") then {player removeAction life_action_coneDeploy;};
if (isNull _cone) exitWith {life_cone = objNull;};

_cone setPos [(getPos _cone select 0),(getPos _cone select 1),0];
_cone setDamage 1;

life_action_conePickup = player addAction[localize "STR_ISTR_Cone_Pack",life_fnc_packupCones,"",0,false,false,"",
' _Cones = nearestObjects[getPos player,["RoadCone_F"],8] select 0; !isNil "_Cones" && !isNil {(_Cones getVariable "item")}'];

if (life_HC_isActive) then {
    [_cone] remoteExec ["HC_fnc_cone",HC_Life]; //Send it to the HeadlessClient for monitoring.
} else {
    [_cone] remoteExec ["TON_fnc_cone",RSERV]; //Send it to the server for monitoring.
};
