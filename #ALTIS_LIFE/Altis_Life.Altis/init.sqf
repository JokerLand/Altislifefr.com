enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

_toHide = [654789,654766,654771,654772,654842,654843,654857,654836,654788,654787,654726,654819,654825,654826,654827,654822];
{([0,0,0] nearestObject _x) hideObject true;} forEach _toHide;

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "Anticheat.sqf";
[] execVM "AdminMenu.sqf";
[] execVM "safezone.sqf";

[] spawn {
	while {true} do {
		0 setOvercast 0;
		0 setRain 0;
		0 setFog 0;
	};
};

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
