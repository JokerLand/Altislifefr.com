private["_message", "_sexe"];


if(playerSide != civilian) exitWith
{
	hint "Vous n'êtes pas un civil !";
};

_message = format["<img size='10' color='#FFFFFF' image='textures\passeport.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>Compte en banque : %2</t><br/><t size='1.8'>Argent en poche : %3</t><br/><t size='1.5'>Citoyen d'Altis</t><br/><t size='1'>PASSEPORT ALTISLIFEFR.COM</t>", name player, [BANK] call life_fnc_numberText, [CASH] call life_fnc_numberText];

hintSilent parseText _message;