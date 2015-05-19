if(surv_state < 2) exitWith {hint "Vous ne pouvez pas utiliser cela."};
if (!([false,"adre",1] call life_fnc_handleInv)) exitWith {};

[] spawn
{
	life_adre_effect = time;
	systemChat "Vous vous sentez inarretable !";
	player setFatigue 0;
	player enableFatigue false;
	player setUnitRecoilCoefficient 0.57;
	waitUntil {!alive player OR ((time - life_adre_effect) > (2 * 60))};
	player enableFatigue true;
	player setUnitRecoilCoefficient 1;
};