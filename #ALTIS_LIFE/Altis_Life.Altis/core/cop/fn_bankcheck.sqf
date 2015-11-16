/*
	File: fn_bankcheck
	Author: Farlau
	
	Description:
	Read bankacc
*/
private["_bank","_civ"];
_civ = [_this,0,"",[""]] call BIS_fnc_param;

hint parseText format["<t color='#FF0000'><t size='2'>%1</t></t><br/><t color='#FFD700'><t size='1.5'>" +(localize "STR_Cop_Bank")+ "</t></t><br/>%2",_civ,_bank];