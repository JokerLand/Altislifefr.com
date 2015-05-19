while {true} do {
	sleep 800;
	if(!life_deadMen && life_hasSpawned) then {
		[] call SOCK_fnc_updateRequest;
		hint "Sauvegarde Automatique Terminée";
	};
};