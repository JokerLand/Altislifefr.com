private["_display","_list","_side"];
disableSerialization;
waitUntil {!isNull (findDisplay 3900)};
_display = findDisplay 3900;
_list = _display displayCtrl 3702;
_text = _display displayCtrl 3703;
noesckey = _display displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];
lbClear _list;

_descText = format["<t font='puristaMedium' shadow='1' size='1.7'>Bienvenue</t> <t font='puristaMedium' shadow='1' color='#FF0000' size='1.7'>%1</t> <t font='puristaMedium' shadow='1' size='1.7'>!</t><br/><br/>Nous avons détécté que c'est vôtre première connexion sur AltisLifeFR.com .<br/>Prenez le temps de lire les règles, c'est important ! Ce formulaire se ré-ouvrira si les règles sont modifiées, et vous pouvez les re-consulter depuis votre menu d'inventaire.<br/<br/><br/>Cliquer sur le bouton accepté vaut pour acceptation des règles et de fait aucune excuse concernant la non-connaissance des règles ne sera acceptée.",name player];

_text ctrlSetStructuredText parseText _descText;

[_list, 0] call life_fnc_addRuleRow;