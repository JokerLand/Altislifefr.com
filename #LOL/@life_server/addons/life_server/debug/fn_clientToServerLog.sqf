/*
	Author : Mash6 / Vincent Fournier <http://www.altislife-evolution.fr/>

	Filename : fn_clientToServerLog.sqf
	Compiled function name : life_fnc_serverLog
	Called/Spawned : Spawned
	
	Decription : Handles "sendServerLog" public variable to log on debug console and debug log file informations received from clients
	
	Types [PRIVATE VARIABLE] : 
	0 -> Information
	1 -> Error
	2 -> Warning
	31 -> Player Connected
	32 -> Player Disconnected
	4 -> Player Killed
	
	
	Example : 
	sendServerLog = [0,"J'aime la bite de cochon des marais",getPlayerUID player];
	publicVariableServer "sendServerLog";
	
	Simpler function (Declaration in core/init.sqf in mission file) :
	[0,"J'aime la bite de cochon des marais"] call ale_fnc_logToServer;

	
	Return looks like : [HH:MM:SS] [INFO] J'aime la bite de cochon des marais || (PLAYERID)
	
	WARNING : ONLY USE SERVER SIDE BECAUSE THIS USE PUBLICVARIABLESERVER
	FOR SERVER SIDE COMMAND REFER TO server_fnc_serverLog
*/


#include "debug_console.hpp"

private["_type","_msg","_pid"];

_type = [_this,0,0,[0]] call BIS_fnc_param;
_msg = [_this,1,"",[""]] call BIS_fnc_param;
_pid = [_this,2,"",[""]] call BIS_fnc_param;

if(_msg == "" OR _pid == "") exitWith {/*conFileTime("[ERROR] : Trying to log from invalid PID or no output message");*/};

switch (_type) do {
	// Simple file logging with white line on screen
	case 0: {
		_output = format["[INFO] : %1   || (%2)",
			_msg,
			_pid
		];
		conWhiteTime(_output);
	};
	case 1: {
	// Error output
		_output = format["[ERROR] : %1   || (%2)",
			_msg,
			_pid
		];
		conRedTime(_output);
	};
	case 2: {
	// Warning Output
		_output = format["[WARNING] : %1   || (%2)",
			_msg,
			_pid
		];
		conYellowTime(_output);
	};
	case 31: {
	// Player Connect Output
		_output = format["[CONNECTED] : %1   || (%2)",
			_msg,
			_pid
		];
		conGreenTime(_output);
	};
	case 32: {
	// Player Disconnect Output
		_output = format["[DISCONNECTED] : %1   || (%2)",
			_msg,
			_pid
		];
		conFileTime(_output);
	};
};