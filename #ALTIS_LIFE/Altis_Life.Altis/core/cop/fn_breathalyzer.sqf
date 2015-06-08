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
[[1,hint parseText format["<t color='#00DEFF'><t size='2'>Test d'alcoolémie de </t></t><br/> %1 <br/><br/> <t color='#FF8400'><t size='1.5>TAUX D'ALCOOL:</t></t> <t size='1.3'>%2</t> <br/><br/> <t color='#FF0000'>Au dessus de la limite légale !</t> ",name player,[_drinky] call life_fnc_numberText]],"life_fnc_broadcast",_cop,false] spawn life_fnc_MP;
} else {
[[1,hint parseText format["<t color='#00DEFF'><t size='2'>Test d'alcoolémie de </t></t><br/> %1 <br/><br/> <t color='#FF8400'><t size='1.5'>TAUX D'ALCOOL:</t></t> <t size='1.3'>%2</t> <br/><br/> <t color='#00E605'>En dessous de la limite légale !</t> ",name player,[_drinky] call life_fnc_numberText]],"life_fnc_broadcast",_cop,false] spawn life_fnc_MP;
};