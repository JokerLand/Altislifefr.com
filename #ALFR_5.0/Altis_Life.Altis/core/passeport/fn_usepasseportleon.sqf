private["_message"];


if(playerSide != civilian) exitWith
{
	hint "Vous n'êtes pas un civil !";
};

_message = format["<img size='10' color='#FFFFFF' image='textures\passeport.paa'/><br/><br/><t size='2.5'>Leon Vance</t><br/><t size='1.8'>Compte en banque : ERREUR</t><br/><t size='1.8'>Argent en poche : %1</t><br/><t size='1.5'>Citoyen d'Altis</t><br/><t size='1'>PASSEPORT ALTISLIFEFR.COM</t>", [CASH] call life_fnc_numberText];

hintSilent parseText _message;