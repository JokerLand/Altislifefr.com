private["_type"];
_type = _this select 0;
if(_type < 0 OR _type > 5) exitWith {hint "Erreur !"};
if(life_action_inUse) exitWith {hint localize "STR_NOTF_Action"};
disableSerialization;
if(_type == 0) then {
	if(hack_quest == 5) exitWith {"Cette quête est déjà terminée."};
	if(hack_quest != 0) exitWith {"Cette quête est déjà commencée."};
	life_action_inUse = true;
	player allowDamage false;
    disableUserInput true;
	0 cutText["Vous voulez devenir un hacker ? C'est bien.\n\nJ'ai placé sur votre carte l'emplacement de 3 ordinateurs à pirater, faites-les dans l'ordre. Revenez me voir quand ce sera fait !","BLACK FADED"];
	sleep 10;
	0 cutFadeOut 0;
	disableUserInput false;
	player allowDamage true;
	life_action_inUse = false;
	hack_quest = 1;
	"hack_quest_1" setMarkerAlphaLocal 1;
	"hack_quest_2" setMarkerAlphaLocal 1;
	"hack_quest_3" setMarkerAlphaLocal 1;
};
if(_type == 1) then {
	if(hack_quest == 5) exitWith {"Cette quête est déjà terminée."};
	if(hack_quest == 0) exitWith {"Cette quête n'est pas commencée."};
	if(hack_quest != 1) exitWith {"Vous avez déjà piraté cet ordinateur, ou bien vous vous trompez d'ordre."};
	disableSerialization;
	life_action_inUse = true;
	_title = "Piratage en Cours...";
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["Piratage en cours... (1%1)...","%"];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	while {true} do
	{
		sleep  0.2;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Piratage en cours... (%1%2)...",round(_cP * 100),"%"];
		if(_cP >= 1) exitWith {};
	};
	5 cutText ["","PLAIN"];
	hint "Piratage Réussi";
	hack_quest = 2;
	life_action_inUse = false;
	deleteMarkerLocal "hack_quest_1";
};
if(_type == 2) then {
	if(hack_quest == 5) exitWith {"Cette quête est déjà terminée."};
	if(hack_quest == 0) exitWith {"Cette quête n'est pas commencée."};
	if(hack_quest != 2) exitWith {"Vous avez déjà piraté cet ordinateur, ou bien vous vous trompez d'ordre."};
	life_action_inUse = true;
	disableSerialization;
	_title = "Piratage en Cours...";
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["Piratage en cours... (1%1)...","%"];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	while {true} do
	{
		sleep  0.2;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Piratage en cours... (%1%2)...",round(_cP * 100),"%"];
		if(_cP >= 1) exitWith {};
	};
	5 cutText ["","PLAIN"];
	hint "Piratage Réussi";
	hack_quest = 3;
	life_action_inUse = false;
	deleteMarkerLocal "hack_quest_2";
};
if(_type == 3) then {
	if(hack_quest == 5) exitWith {"Cette quête est déjà terminée."};
	if(hack_quest == 0) exitWith {"Cette quête n'est pas commencée."};
	if(hack_quest != 3) exitWith {"Vous avez déjà piraté cet ordinateur, ou bien vous vous trompez d'ordre."};
	disableSerialization;
	life_action_inUse = true;
	5 cutRsc ["life_progress","PLAIN"];
	_ui = uiNameSpace getVariable "life_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format["Piratage en cours... (1%1)...","%"];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	while {true} do
	{
		sleep  0.2;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Piratage en cours... (%1%2)...",round(_cP * 100),"%"];
		if(_cP >= 1) exitWith {};
	};
	5 cutText ["","PLAIN"];
	hint "Piratage Réussi";
	hack_quest = 4;
	life_action_inUse = false;
	deleteMarkerLocal "hack_quest_3";
};
if(_type == 4) then {
	if(hack_quest == 5) exitWith {"Cette quête est déjà terminée."};
	if(hack_quest == 0) exitWith {"Cette quête n'est pas commencée."};
	if(hack_quest != 4) exitWith {"Vous n'avez pas terminé les objectifs."};
	life_action_inUse = true;
	player allowDamage false;
    disableUserInput true;
	0 cutText["Vous êtes devenu un hacker !\n\nCela dit, vous êtes encore un noob, entraînez-vous !","BLACK FADED"];
	0 cutFadeOut 12;
	sleep 10;
	disableUserInput false;
	player allowDamage true;
	deleteMarkerLocal "hack_quest";
	deleteMarkerLocal "hack_quest_3";
	deleteMarkerLocal "hack_quest_2";
	deleteMarkerLocal "hack_quest_1";
	hack_quest = 5;
	life_action_inUse = false;
};