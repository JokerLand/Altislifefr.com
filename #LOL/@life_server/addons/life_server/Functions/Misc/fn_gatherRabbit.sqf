private["_curTarget","_diff","_isIllegal"];
if(life_gathering) exitWith {};
life_gathering = true;
life_action_inUse = true;
_isIllegal = false;
_curTarget = cursorTarget;
_diff = ["rabbitMeat",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(isNull _curTarget) exitWith {
	hint "Vous devez viser le lapin à dépecer.";
	life_action_inUse = false;
	life_gathering = false;
};
if((typeOf _curTarget) != "Rabbit_F") exitWith {
	hint "Vous ne pouvez dépecer que les lapins.";
	life_action_inUse = false;
	life_gathering = false;
};
if(alive _curTarget) exitWith {
	hint "Vous ne pouvez pas dépecer un lapin vivant !";
	life_action_inUse = false;
	life_gathering = false;
};
if(vehicle player != player) exitWith {
	hint localize "STR_NOTF_GatherVeh";
	life_action_inUse = false;
	life_gathering = false;
};
if(life_inv_huntingKnife < 1) exitWith {
	hint "Vous n'avez pas de couteau";
	life_action_inUse = false;
	life_gathering = false;
};
if(_diff == 0) exitWith {
	hint localize "STR_NOTF_InvFull";
	life_gathering = false;
	life_action_inUse = false;
};

if(!license_civ_hunting) then {
	_isIllegal = true;
};

disableUserInput true;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 3;
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 3;

if(([true,"rabbitMeat",_diff] call life_fnc_handleInv)) then
{
	
	titleText["Vous avez dépecé un lapin et ramassé un morceau de viande de lapin.","PLAIN"];
};

/*if(_isIllegal) then {
	[[getPlayerUID player,player getVariable["realname",name player],"920"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
};*/

disableUserInput false;
life_action_inUse = false;
life_gathering = false;
hideBody _curTarget;
deleteVehicle _curTarget;