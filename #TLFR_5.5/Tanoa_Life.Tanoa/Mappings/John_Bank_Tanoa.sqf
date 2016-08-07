//(getPos this nearestObject 292732) hideObject true; this allowDamage false; (getPos this nearestObject 293171) hideObject true; this allowDamage false; (getPos this nearestObject 293154) hideObject true; this allowDamage false; (getPos this nearestObject 293155) hideObject true; this allowDamage false;
private ["_obj","_dat","_cString","_adString"];

_obj = objNull;_dat = [];_adString = "CAN_COLLIDE";
_cString = 
{
	_obj = createVehicle [(_dat select 0), [0,0,0], [], 0, _adString];
	if((_dat select 4) == 0) then {_obj enableSimulation false};
	if((_dat select 8) == 0) then {_obj allowDamage false};
	_obj setdir (_dat select 2);
	if((_dat select 3) == -100) then
	{
		_obj setposATL (call compile (_dat select 1));
		if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};
	}
	else
	{
		_obj setposworld [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)];
		[_obj,((_dat select 7) select 0),((_dat select 7) select 1)] call BIS_fnc_setPitchBank;
	};
	if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)};
};

_dat = ["Land_CommonwealthBank","[7929.460449,7732.729492,-0.851852]",148.335,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_FurnitureA","[7929.248535,7732.695801,-0.883838]",148.335,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_Furniture2","[7929.334473,7732.618164,-0.867845]",148.335,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_FurnitureC","[7927.150879,7734.831543,-0.853536]",149.47,-100,0,0,[],[0,0],0];call _cString;
