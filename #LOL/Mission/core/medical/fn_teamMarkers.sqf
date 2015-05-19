/*
	File: fn_teamMarkers.sqf
	Author: Bryan "Tonic" by Daniel Larusso & LordNaikon (Keep Calm and RolePlay)
	
	Description:
	Marks medics on the map for other medics when it's open.
*/
private["_markers","_medic"];
_markers = [];
_medic = [];

sleep 0.5;
if(visibleMap) then {
	{if(side _x == independent) then {_medic set[count _medic,_x];}} foreach playableUnits; //Fetch list of Medics
	
	//Create markers
	{
		_marker = createMarkerLocal [format["%1_marker",_x],visiblePosition _x];
		_marker setMarkerColorLocal "ColorBlue";
		_marker setMarkerTypeLocal "Mil_dot";
		_marker setMarkerTextLocal format["%1", _x getVariable["realname",name _x]];
	
		_markers set[count _markers,[_marker,_x]];
	} foreach _medic;
		
	while {visibleMap} do
	{
		{
			private["_marker","_unit"];
			_marker = _x select 0;
			_unit = _x select 1;
			if(!isNil "_unit") then
			{
				if(!isNull _unit) then
				{
					_marker setMarkerPosLocal (visiblePosition _unit);
				};
			};
		} foreach _markers;
		if(!visibleMap) exitWith {};
		sleep 0.02;
	};

	{deleteMarkerLocal (_x select 0);} foreach _markers;
	_markers = [];
	_medic = [];
};