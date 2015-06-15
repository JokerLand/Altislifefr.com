enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Altis Life RPG v3.1.4.8";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "Anticheat.sqf";
[] execVM "AdminMenu.sqf";
[] execVM "safezone.sqf";

if(isDedicated && isNil("life_market_prices")) then
{

 [] call AoD_fnc_marketconfiguration;
    diag_log "Market prices generated!";
    "life_market_prices" addPublicVariableEventHandler
    {
        diag_log format["Market prices updated! %1", _this select 1];
    };

};

[] spawn {
	while {true} do {
		0 setOvercast 0;
		0 setRain 0;
		0 setFog 0;
	};
};

StartProgress = true;

"BIS_fnc_MP_packet" addPublicVariableEventHandler {_this call life_fnc_MPexec};
