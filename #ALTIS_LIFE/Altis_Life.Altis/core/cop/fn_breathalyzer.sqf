/*
	File: fn_breathalyzer.sqf
	Compiled function name: life_fnc_breathalyzer
	Author: Sam_ -- Altis Life FR -- <http://www.altislifefr.com/>
	
	DO NOT USE WITHOUT PERMISSION
	
	Description:
	Allows cops to check civilians BAC
*/

/*file:fn_breathalyzer author:[midgetgrimm] descrip:allows cop to breathalyze player*/
private["_cop","_drinky"];
_cop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {};
_drinky = life_drink;
if(_drinky > 0.07) then {
[[1,format["Test d'alcoolémie de %1 \n\n TAUX D'ALCOOL: %2 \n\n Au dessus de la limite légale ! ",name player,[_drinky] call life_fnc_numberText]],"life_fnc_broadcast",_cop,false] spawn life_fnc_MP;
} else {
[[1,format["Test d'alcoolémie de %1 \n\n TAUX D'ALCOOL: %2 \n\n En dessous de la limite légale ! ",name player,[_drinky] call life_fnc_numberText]],"life_fnc_broadcast",_cop,false] spawn life_fnc_MP;
};