waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "osefStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["osefStatusBar","PLAIN"];

[] spawn {
	sleep 5;
	_statusText = "";
	_counter = 180;
	while {true} do
	{		
		((uiNamespace getVariable "osefStatusBar")displayCtrl 1000)ctrlSetText format["%1 FPS | Population : %2 | CASH: %3 | BANQUE: %4 | AltisLife: Evolution   ", round diag_fps, count playableUnits,[life_cash] call life_fnc_numberText,[life_atmcash] call life_fnc_numberText, _statusText, _counter];
	};
};
