/*
Reviewed By AltislifeFR
*/


if (life_inv_telecommande == 0) exitWith { ["Vous n'avez pas de télécommande"] call life_fnc_erreur; };
if ((time - life_action_delay) < 1) exitWith { ["Calmez-vous ... Ralentissez vos actions simultanées"] call life_fnc_erreur; };


{
	if (_x animationPhase "borne_translation1" == 1) then {
		_x animate ["borne_translation1", 0];
		[player, "car_lock_unlock",10] call CBA_fnc_globalSay3d;
	}
	else
	{
		_x animate ["borne_translation1", 1];
		[player, "car_lock_unlock",10] call CBA_fnc_globalSay3d;
	};

} forEach (nearestObjects [player, ["Orel_Borne_Escamotable"], 40]);

