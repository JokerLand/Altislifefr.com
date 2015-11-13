/*
	File: D41_wetter.sqf
	Author: Distrikt41.de - Dscha

	Description:
	Random Weather Script - What else can i say?
	Updated: 16.11.2014
*/
	private ["_fnc_D41_WetterWerte"];

	
	D41_Nebel = [0,0,0];
	D41_Wellen = 0;
	D41_Vorschau = 0;
	D41_Wind = [1, 1, true];
	D41_Regen = 0;
	D41_RegenCounter = 1;

	
	_fnc_D41_WetterWerte =
	{
		if (isDedicated) then
			{
				D41_ChanceN = round(random 4);
				if(D41_ChanceN <= 4) then
					{
						D41_Nebel = [0,0,0]; D41_Wellen = 1; D41_Vorschau = 0; D41_Wind = [2, 2, true]; D41_Regen = 0; D41_RegenCounter = 0;
					};

				Diag_log format ["::::::::: WETTER SYSTEM ::::::::: D41_ChanceN = %1 ::: D41_WMod = %2",D41_ChanceN, D41_WMod];
				publicVariable "D41_Nebel";
				publicVariable "D41_Wellen";
				publicVariable "D41_Vorschau";
				publicVariable "D41_Wind";
				publicVariable "D41_Regen";
			};
	};

	if(isDedicated)then
	{
		while{true}do
		{
			[] call _fnc_D41_WetterWerte;
			sleep 1;
			60 setfog (D41_Nebel);
			60 setRain (D41_Regen);
			0 setOvercast (D41_Vorschau);
			setWind (D41_Wind);
			60 setWaves (D41_Wellen);
			sleep 1200;
		};
	};

	//JIP und sync Gedöhns
	if (!isDedicated) then
	{
		while{true}do
		{
			60 setfog (D41_Nebel);
			60 setRain (D41_Regen);
			0 setOvercast (D41_Vorschau);
			setWind (D41_Wind);
			60 setWaves (D41_Wellen);
			//hint format ["::::::::: WETTER SYSTEM ::::::::: D41_ChanceN = %1 ::: D41_WMod = %2",D41_ChanceN, D41_WMod];
			uiSleep 120;
		};
	};