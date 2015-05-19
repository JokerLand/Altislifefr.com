if(player getVariable["restrained",false]) exitWith {titleText ["Vous êtes menotté","PLAIN"]};

if("ItemRadio" in assignedItems player) then {
	createDialog "Life_my_smartphone";
} else {
	hint parseText format ["<t size='1.30' font='puristaMedium' align='center' color='#0D82DF'>Pas de Téléphone</t><br/><br/>
	<t size='0.90 'font='puristaLight' align='left'>Vous devez aller acheter un téléphone au magasin général</t><br/>"];
};