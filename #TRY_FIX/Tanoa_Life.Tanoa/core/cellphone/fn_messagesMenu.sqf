private["_messages","_playerList","_infoToPass","_delButton"];

disableSerialization;

createDialog "life_cell_old_msgs";
waitUntil {!isNull (findDisplay 98111)};
_playerList = ((findDisplay 98111) displayCtrl 98112);
_delButton = ((findDisplay 98111) displayCtrl 98114);
_delButton ctrlShow false;

_messages = player getVariable "cellphone_messages";

lbClear _playerlist;

if(count _messages < 1) then 
{
	_playerList lbAdd format["Pas de SMS trouv�s !"];
	_playerList lbSetdata [(lbSize _playerList)-1, "Vous n'avez pas de messages !"];
}
else
{
	{
		_infoToPass = format["%1", _x];
		_playerList lbAdd format["%1", _x select 0];
		_playerList lbSetdata [(lbSize _playerList)-1, _infoToPass];
	} foreach _messages;
};