#include <macro.h>
disableSerialization;
if(__GETC__(life_adminlevel) < 1) then
{
	ctrlShow[1612,false];
};

switch(playerSide) do
{
	case west: 
	{
		_dialog = findDisplay 2001;
		_buttonWantedList = _dialog displayCtrl 1605;
		buttonSetAction [1605,"[] call life_fnc_wantedMenu"];
		_buttonWantedList ctrlSetTooltip "Interpol / Liste des personnes recherchées";
	};
};