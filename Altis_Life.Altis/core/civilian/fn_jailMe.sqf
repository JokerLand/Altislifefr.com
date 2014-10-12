/*
	File: fn_jailMe.sqf
	Author Bryan "Tonic" Boardwine
	
	Description:
	Once word is received by the server the rest of the jail execution is completed.
*/
private["_ret","_bad","_time","_bail","_esc","_countDown","_time2"];
_ret = [_this,0,[],[[]]] call BIS_fnc_param;
_bad = [_this,1,false,[false]] call BIS_fnc_param;
_time2 = [_this,2,-1,[0]] call BIS_fnc_param;
if(_time2 == (-1)) then {_time2 = 5;};
if(_bad) then { _time = time + 1100; } else { _time = time + (_time2 * 60); };

if(count _ret > 0) then { life_bail_amount = (_ret select 3); } else { life_bail_amount = 1500; _time = time + (_time2 * 60); };
_esc = false;
_bail = false;

[_bad, _time2] spawn
{
	life_canpay_bail = false;
	if(_this select 0) then
	{
		sleep ((_this select 1) * 60);
	}
		else
	{
		sleep (1 * 60);
	};
	life_canpay_bail = nil;
};

while {true} do
{
	if((round(_time - time)) > 0) then
	{
		_countDown = if(round (_time - time) > 60) then {format["%1 minute(s)",round(round(_time - time) / 60)]} else {format["%1 seconde(s)",round(_time - time)]};
		hintSilent format["Temps Restant:\n %1",_countDown/*,[life_bail_amount] call life_fnc_numberText,if(isNil "life_canpay_bail") then {"Yes"} else {"No"}*/];
	};
	
	if(player distance (getMarkerPos "jail_marker") > 60) exitWith
	{
		_esc = true;
	};
	
	if(life_bail_paid) exitWith
	{
		_bail = true;
	};
	
	if((round(_time - time)) < 1) exitWith {hint ""};
	if(!alive player && ((round(_time - time)) > 0)) exitWith
	{
	
	};
	sleep 1;
};


switch (true) do
{
	case (_bail) :
	{
		life_is_arrested = false;
		life_bail_paid = false;
		hint "Tu as payé l'amende tu es désormais libre.";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		[1,false] call life_fnc_sessionHandle;
	};
	
	case (_esc) :
	{
		life_is_arrested = false;
		hint "Tu t'es évadé de prison, ton casier judiciaire s'alourdit avec ce crime!";
		[[0,format["%1 c'est évadé de prison!",name player]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		[[getPlayerUID player,name player,"901"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	};
	
	case (alive player && !_esc && !_bail) :
	{
		life_is_arrested = false;
		hint "Vous avez fait votre temps en prison, vous êtes désormais libre !";
		[[getPlayerUID player],"life_fnc_wantedRemove",false,false] spawn life_fnc_MP;
		player setPos (getMarkerPos "jail_release");
		[1,false] call life_fnc_sessionHandle;
	};
};