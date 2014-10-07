waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "altiStatusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["altiStatusBar","PLAIN"];
systemChat format["[AltisLifeFr] HUD Chargement %1!", _rscLayer];

[] spawn {
	sleep 5;
	_statusText = "Bienvenue sur le serveur";
	_counter = 180;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_counter = _counter - 1;
		_statusText = "AltisLifeFr.com";
		((uiNamespace getVariable "altiStatusBar")displayCtrl 1000)ctrlSetText format["%3 | TS3 : ts3.altislifefr.com | Joueurs connectés: %2  ", round diag_fps, count playableUnits, _statusText, _counter];
	};
};
