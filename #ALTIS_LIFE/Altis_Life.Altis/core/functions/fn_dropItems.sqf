/*
	File: fn_dropItems.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Called on death, player drops any 'virtual' items they may be carrying.
*/
private["_obj","_unit","_item","_value"];
_unit = _this select 0;

{
	_item = _x;
	_value = missionNamespace getVariable _item;

	switch(_item) do
	{
		case "life_inv_water":
		{
			if(_value > 0) then
			{
				missionNamespace setVariable[_x,0];
			};
		};

		case "life_inv_tbacon":
		{
			if(_value > 0) then
			{
				missionNamespace setVariable[_x,0];
			};
		};

		case "life_inv_redgull":
		{
			if(_value > 0) then
			{
				missionNamespace setVariable[_x,0];
			};
		};

		case "life_inv_fuelE":
		{
			if(_value > 0) then
			{
				missionNamespace setVariable[_x,0];
			};
		};

		case "life_inv_fuelF":
		{
			if(_value > 0) then
			{
				missionNamespace setVariable[_x,0];
			};
		};

		case "life_inv_coffee":
		{
			if (_value > 0) then
			{
				missionNamespace setVariable[_x,0];
			};
		};

		case "life_cash":
		{
			if(life_cash > 0) then
			{
				missionNamespace setVariable[_x,0];
			};
		};

		default
		{
			if(_value > 0) then
			{
				missionNamespace setVariable[_x,0];
			};
		};
	};
} foreach (life_inv_items + ["life_cash"]);