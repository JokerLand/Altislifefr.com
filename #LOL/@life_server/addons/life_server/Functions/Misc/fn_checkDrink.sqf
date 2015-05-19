private["_unit","_drinky"];
_unit = _this select 0;
_drinky = _this select 1;

if(_drinky > 0.07) then {
	hint parseText format["<t align='center'><t size='1.8'>%1</t></t><br/><t align='center'><t size='1.4'><t color='#F7D501'>Test d'Alcoolémie</t></t></t><br/><br/>Taux : %2<br/><br/><t color='#DC1200'>POSITIF</t>",name _unit,_drinky];
} else {
	hint parseText format["<t align='center'><t size='1.8'>%1</t></t><br/><t align='center'><t size='1.4'><t color='#F7D501'>Test d'Alcoolémie</t></t></t><br/><br/>Taux : %2<br/><br/><t color='#39D300'>NEGATIF</t>",name _unit,_drinky];
};