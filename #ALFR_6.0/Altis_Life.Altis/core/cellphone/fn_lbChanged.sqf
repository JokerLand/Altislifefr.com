private["_message","_data","_nameOnPList","_text", "_delButton"];
disableSerialization;
_text = ((findDisplay 98111) displayCtrl 98113);
_data = lbData[98112,lbCurSel (98112)];
_delButton = ((findDisplay 98111) displayCtrl 98114);
if(_data == "You have no messages.") then 
{
	_text ctrlSetText "Vous n'avez pas de messages !";
} 
else
{
	_data = call compile _data;

	_nameOnPList = _data select 0;
	_message = _data select 1;

	_text ctrlSetText format ["""%1"" - %2", _message, _nameOnPList];
	_delButton ctrlShow true;
};