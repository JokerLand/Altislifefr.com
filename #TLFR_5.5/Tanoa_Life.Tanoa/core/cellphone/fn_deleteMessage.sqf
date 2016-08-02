private["_messages","_lbSelectedData","_name","_msg"];
disableSerialization;
_messages = player getVariable "cellphone_messages";
_lbSelectedData = lbData[98112,lbCurSel (98112)];
_lbSelectedData = call compile _lbSelectedData;
_name = _lbSelectedData select 0;
_msg = _lbSelectedData select 1;

_messages = _messages - [[_name,_msg]];

player setVariable ["cellphone_messages", _messages];
closeDialog 0;
[] spawn life_fnc_messagesMenu;

hint format["Vous avez effacé un message de %1", _name, _msg];