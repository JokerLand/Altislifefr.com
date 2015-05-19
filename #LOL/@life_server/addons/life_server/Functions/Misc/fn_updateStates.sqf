private ["_changes"];
_changes = 0;


waitUntil {alive player};
while {alive player} do 
{
	// Endurance
	switch(endu_state) do {
	case 0:
	{
		if(life_runned > 15000) then {
			endu_state = 1;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Jogger"]] call bis_fnc_showNotification;
		};
	};
	
	case 1:
	{
		if(life_runned > 20000) then {
			endu_state = 2;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Entraîné"]] call bis_fnc_showNotification;
		};
	};
	
	case 2:
	{
		if(life_runned > 25000) then {
			endu_state = 3;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Olympique"]] call bis_fnc_showNotification;
		};
	};
	
	case 3:
	{
		if(life_runned > 30000) then {
			endu_state = 4;
			_changes = _changes + 1;
			if (backpack player != "") then {
				_bp = backpack player;
				_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
				_load = (round(_cfg / 8)) * 1.3;
				life_maxWeight = life_maxWeightT + _load;
			};
			["AchievementDone",["Vous avez obtenu le talent : Usain Bolt"]] call bis_fnc_showNotification;
		};
	};
};

// Drive
switch(drive_state) do {
	case 0:
	{
		if(life_drived > 80000) then {
			drive_state = 1;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Jeune Conducteur"]] call bis_fnc_showNotification;
		};
	};
	
	case 1:
	{
		if(life_drived > 140000) then {
			drive_state = 2;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Pilote"]] call bis_fnc_showNotification;
		};
	};
	
	case 2:
	{
		if(life_drived > 190000) then {
			drive_state = 3;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Fou du Volant"]] call bis_fnc_showNotification;
		};
	};
	
	case 3:
	{
		if(life_drived > 270000) then {
			drive_state = 4;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Paul Walker"]] call bis_fnc_showNotification;
		};
	};
};

// Meth
switch(chem_state) do {
	case 0:
	{
		if(stat_chem > 200) then {
			chem_state = 1;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Apprenti Chimiste"]] call bis_fnc_showNotification;
		};
	};
	
	case 1:
	{
		if(stat_chem > 400) then {
			chem_state = 2;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Chimiste Novice"]] call bis_fnc_showNotification;
		};
	};
	
	case 2:
	{
		if(stat_chem > 850) then {
			chem_state = 3;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Cuisinier"]] call bis_fnc_showNotification;
		};
	};
	
	case 3:
	{
		if(stat_chem > 1000) then {
			chem_state = 4;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Walter White"]] call bis_fnc_showNotification;
		};
	};
};

// Mine
switch(mine_state) do {
	case 0:
	{
		if(stat_mine > 50) then {
			mine_state = 1;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Galibot"]] call bis_fnc_showNotification;
		};
	};
	
	case 1:
	{
		if(stat_mine > 80) then {
			mine_state = 2;
			_changes = _changes + 1;
			["AchievementDone",["Vous avez obtenu le talent : Sainte Barbe"]] call bis_fnc_showNotification;
		};
	};
};

// Meca
switch(meca_state) do {
	case 0:
	{
		if(stat_meca > 10) then {
			meca_state = 1;
			["AchievementDone",["Vous avez obtenu le talent : Débrouillard"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 1:
	{
		if(stat_meca > 25) then {
			meca_state = 2;
			["AchievementDone",["Vous avez obtenu le talent : Réparateur Agréé"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 2:
	{
		if(stat_meca > 45) then {
			meca_state = 3;
			["AchievementDone",["Vous avez obtenu le talent : Bob le Bricoleur"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
};

// Medic
switch(medic_state) do {
	case 0:
	{
		if(stat_medic > 30) then {
			medic_state = 1;
			["AchievementDone",["Vous avez obtenu le talent : Infirmier"]] call bis_fnc_showNotification;
			player setVariable["medic_state",medic_state,TRUE];
			_changes = _changes + 1;
		};
	};
	
	case 1:
	{
		if(stat_medic > 60) then {
			medic_state = 2;
			["AchievementDone",["Vous avez obtenu le talent : Dr House"]] call bis_fnc_showNotification;
			player setVariable["medic_state",medic_state,TRUE];
			_changes = _changes + 1;
		};
	};
};
// hack
switch(hack_state) do {
	case 0:
	{
		if(hack_quest == 5) then {
			hack_state = 1;
			["AchievementDone",["Vous avez obtenu le talent : Noob"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 1:
	{
		if(stat_hack > 25) then {
			hack_state = 2;
			["AchievementDone",["Vous avez obtenu le talent : Black Hat"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 2:
	{
		if(stat_hack > 50) then {
			hack_state = 3;
			["AchievementDone",["Vous avez obtenu le talent : Anonymous"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
};

// Lockpick
switch(lockpick_state) do {
	case 0:
	{
		if(stat_lockpick > 15) then {
			lockpick_state = 1;
			["AchievementDone",["Vous avez obtenu le talent : Blédard"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 1:
	{
		if(stat_lockpick > 20) then {
			lockpick_state = 2;
			["AchievementDone",["Vous avez obtenu le talent : Car-Jacker"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 2:
	{
		if(stat_lockpick > 30) then {
			lockpick_state = 3;
			["AchievementDone",["Vous avez obtenu le talent : Serrurier"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 3:
	{
		if(stat_lockpick > 45) then {
			lockpick_state = 4;
			["AchievementDone",["Vous avez obtenu le talent : Magicien"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
};

// Boom
switch(boom_state) do {
	case 0:
	{
		if(stat_boom > 50) then {
			boom_state = 1;
			["AchievementDone",["Vous avez obtenu le talent : Jihad"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 1:
	{
		if(stat_boom > 100) then {
			boom_state = 2;
			["AchievementDone",["Vous avez obtenu le talent : Démolisseur"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
};

// Holdup
switch(holdup_state) do {
	case 0:
	{
		if(stat_holdup > 1) then {
			holdup_state = 1;
			["AchievementDone",["Vous avez obtenu le talent : Braqueur de Bijouterie"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 1:
	{
		if(stat_holdup > 4) then {
			holdup_state = 2;
			["AchievementDone",["Vous avez obtenu le talent : Cambrioleur"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};

	case 2:
	{
		if(stat_holdup > 8) then {
			holdup_state = 3;
			["AchievementDone",["Vous avez obtenu le talent : HardLine"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
};

// Surv
switch(surv_state) do {
	case 0:
	{
		if(stat_surv > 16) then {
			surv_state = 1;
			["AchievementDone",["Vous avez obtenu le talent : Citoyen Modèle"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
	
	case 1:
	{
		if(stat_surv > 32) then {
			surv_state = 2;
			["AchievementDone",["Vous avez obtenu le talent : Ombre"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};

	case 2:
	{
		if(stat_surv > 48) then {
			surv_state = 3;
			["AchievementDone",["Vous avez obtenu le talent : HardLine"]] call bis_fnc_showNotification;
			_changes = _changes + 1;
		};
	};
};
sleep 5;
};
waitUntil {alive player};
[] spawn life_fnc_updateStates;