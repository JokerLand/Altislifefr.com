private["_type","_level"];
_type = _this select 0;
_level = _this select 1;
switch(_type) do 
{
	case 0:
	{
		true
	};
	case 1:
	{
		if(endu_state >= _level) then {true} else {false};
	};
	case 2:
	{
		if(drive_state >= _level) then {true} else {false};
	};
	case 3:
	{
		if(medic_state >= _level) then {true} else {false};
	};
	case 4:
	{
		if(chem_state >= _level) then {true} else {false};
	};
	case 5:
	{
		if(hack_state >= _level) then {true} else {false};
	};
	case 6:
	{
		if(meca_state >= _level) then {true} else {false};
	};
	case 7:
	{
		if(lockpick_state >= _level) then {true} else {false};
	};
	case 8:
	{
		if(boom_state >= _level) then {true} else {false};
	};
	case 9:
	{
		if(holdup_state >= _level) then {true} else {false};
	};
	case 10:
	{
		if(surv_state >= _level) then {true} else {false};
	};
	case 11:
	{
		if(mine_state >= _level) then {true} else {false};
	};
};