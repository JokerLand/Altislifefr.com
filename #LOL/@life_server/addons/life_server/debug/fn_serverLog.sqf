/*
	Author : Mash6 / Vincent Fournier <http://www.altislife-evolution.fr/>

	Filename : fn_serverLog.sqf
	Compiled function name : life_fnc_serverLog
	Called/Spawned : Spawned

	Description : Handles server logging
	
	
	Types [PRIVATE VARIABLE] : 
	0 -> Information
	1 -> Error
	2 -> Warning
	31 -> Player Connected
	32 -> Player Disconnected
	4 -> Player Killed
	
	
	Example : 
	[0,"J'aime la bite de cochon des marais"] spawn server_fnc_serverLog;
	
	Return looks like : [HH:MM:SS] [INFO] J'aime la bite de cochon des marais || (SERVER)
	
	WARNING : ONLY USE SERVER SIDE BECAUSE OF NO PUBLIC VARIABLE HANDLING AND NO FUNCTION DECLARATION FOR CLIENT
*/


#include "debug_console.hpp"

private["_type","_msg"];

_type = [_this,0,0,[0]] call BIS_fnc_param;
_msg = [_this,1,"",[""]] call BIS_fnc_param;

if(_msg == "") exitWith {/*conFileTime("[ERROR] : Trying to log from server with no output message");*/};

switch (_type) do {
	// Info output written in white
	case 0: {
		_output = format["[INFO] : %1   || (SERVER)",
			_msg,
			_pid
		];
		conWhiteTime(_output);
	};
	case 1: {
	// Error output written in red
		_output = format["[ERROR] : %1   || (SERVER)",
			_msg,
			_pid
		];
		conRedTime(_output);
	};
	case 2: {
	// Warning output written in yellow
		_output = format["[WARNING] : %1   || (SERVER)",
			_msg,
			_pid
		];
		conYellowTime(_output);
	};
	case 31: {
	// Player Connect output written in green
		_output = format["[CONNECTED] : %1   || (SERVER)",
			_msg,
			_pid
		];
		conGreenTime(_output);
	};
	case 32: {
	// Player Disconnect output written in grey
		_output = format["[DISCONNECTED] : %1   || (SERVER)",
			_msg,
			_pid
		];
		conFileTime(_output);
	};
};