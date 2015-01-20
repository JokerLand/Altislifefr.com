/* 
	File: fn_slotPlay.sqf
	Desc: Plays the slot game, reduces the money and gives reward.

	Author: Jacob
    Adaptation : "Sakzy"
	Edits: New system, uses already opened screen. Uses numberToText to prevent the scientific output. Some fixes

	Based Off: Unknown Author's Script
*/
private["_source","_hasLicense","_ui","_needID","_cP","_cost","_type","_winAmount","_rollA","_rollB","_rollC","_slots","_idxA","_idxB","_idxC"];
_source = player;
if(life_slot_current == -1) exitWith {}; //Looks like we didnt set it, how did that happen?
_type = life_slot_current;
if(!dialog) exitWith {};
hintSilent "";
if(isNull _source) exitWith {};
if(life_is_processing) exitWith {};
//if(playerSide != civilian) exitWith { hint "Vous ne pouvez pas jouer en service.";  life_is_processing = false;};


if(player distance _source > 3.5) exitWith 
{
	hint "Vous ne devez pas vous eloigner."; 
	life_is_processing = false;
};

switch (_type) do
{
	case 0:{_cost = 2000;};
	case 1:{_cost = 5000;};
	case 2:{_cost = 10000;};
};
_winAmount = 0;

if(life_cash >= _cost) then
{
	disableSerialization;
	_ui = findDisplay 8500;
	_rollA = _ui displayCtrl 1200;
	_rollB = _ui displayCtrl 1201;
	_rollC = _ui displayCtrl 1202;
	_button = _ui displayCtrl 1600;
	_button ctrlEnable false;
	_cP = 0.0;
	playSound "slot_spin";
	_slots = [
	"icons\slots\cherry.paa","icons\slots\coin.paa","icons\slots\plum.paa",
	"icons\slots\grapes.paa","icons\slots\diamond.paa",
	"icons\slots\bell.paa","icons\slots\seven.paa","icons\slots\bar.paa"
	];
	life_is_processing = true;
	
	while{true} do
	{
		sleep  0.1;
		_cP = _cP + 0.017;
		if(_cp <= 0.5)then
		{
			_idxA = [] call life_fnc_slotRandom; // Get random number
			_rollA ctrlSetText (_slots select _idxA); // Show final state.
		};
		if(_cp <= 0.7)then
		{
			_idxB = [] call life_fnc_slotRandom; // Get random number
			_rollB ctrlSetText (_slots select _idxB); // Show final state.
		};
		if(_cp <= 0.9)then
		{
			_idxC = [] call life_fnc_slotRandom; // Get random number
			_rollC ctrlSetText (_slots select _idxC); // Show final state.
		};
		if(_cP >= 1.1) exitWith 
		{
		};
		if(player distance _source > 3.5) exitWith {};
	};
	if(player distance _source > 3.5) exitWith {hint "Vous ne devez pas vous eloigner."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	life_cash = life_cash - _cost;
	
	_winAmount = [_idxA,_idxB,_idxC,_type] call life_fnc_slotRewards; 
	
	//now see if we won
	if(_winAmount > 0) then
	{
		life_cash = life_cash + _winAmount;
		if(_winAmount >= 100000) then
		{
			hint format["Vous avez gagnez le jackpot de $%1",[_winAmount] call life_fnc_numberText]; 
			playSound "slot_payoff";
			_cP = 0.01;
			while{true} do
			{
				sleep  0.3;
				_cP = _cP + 0.10;
				if(_cP >= 1) exitWith {};
			};
		}
		else
		{
			if(_winAmount == _cost) then //won back money
			{
				//You got EXACTLY the same amount.
				hint format["Vous avez regagné votre mise. $%1",[_winAmount] call life_fnc_numberText];
				playSound "buy";
			} else {
				if(_winAmount < _cost) then {
					//Tell the player he won, but lost money...
					hint format["Vous avez gagné $%1, mais aviez misé $%2. Vous avez donc perdu $%3.",[_winAmount] call life_fnc_numberText, [_cost] call life_fnc_numberText, [(_cost - _winAmount)] call life_fnc_numberText];
				}
				else
				{
					//Gained money
					hint format["Vous avez gagné $%1",[_winAmount] call life_fnc_numberText];
				};
			}
		};
	}
	else
	{
		hint format["Vous avez perdu votre mise de $%1",[_cost] call life_fnc_numberText];
	};
	
	if(_winAmount >= 40000) then
	{
		[[_winAmount,getPlayerUID player],"TON_fnc_casinoWinners",false,false] spawn life_fnc_MP;
	};

	life_is_processing = false;
	_button ctrlEnable true;
}
else
{
	if(life_cash < _cost) exitWith {hint (format["Vous devez avoir $%1 pour jouer a cette machine.",_cost]); 
	life_is_processing = false;};
};

5 cutText ["","PLAIN"];
