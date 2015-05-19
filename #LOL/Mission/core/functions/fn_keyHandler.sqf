/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_player"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorTarget;
_handled = false;
_player = player;

_interactionKey = if(count (actionKeys "User10") == 0) then {219} else {(actionKeys "User10") select 0};

_mapKey = actionKeys "ShowMap" select 0;
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D
_wpSwitchKey = if(count (actionKeys "User11") == 0) then {0} else {(actionKeys "User11") select 0};

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player getVariable ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(count (actionKeys "User10") != 0 && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(!life_action_inUse) then {
		[] spawn 
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
			life_action_inUse = false;
		};
	};
	true;
};

switch (_code) do
{
	//Shift+P pour les boules Quies
	case 25:
	{
		if(_shift) then {
			life_soundFaded = !life_soundFaded;

			if (life_soundFaded) then {
				1 fadeSound 0.3;
				titleText ["Vous avez mis vos boules Quies.", "PLAIN"];
			} else {
				1 fadeSound 1;
				titleText ["Vous avez enlevé vos boules Quies.", "PLAIN"];
			};
			_handled = true;
		};
	};
	//Space key for Jumping
	case 57:
	{
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {animationState player != "AovrPercMrunSrasWrflDf"} && {isTouchingGround player} && {stance player == "STAND"} && {speed player > 2} && {!life_is_arrested} && {(velocity player) select 2 < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[[player,false],"life_fnc_jumpFnc",nil,FALSE] call life_fnc_MP; //Global execution 
			_handled = true;
		};
	};
	
	//Map Key
	case _mapKey:
	{
		switch (playerSide) do 
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;[] spawn life_fnc_teamMarkers;}};
			case civilian: {if(!visibleMap) then {[] spawn life_fnc_gangMarkers;}};
		};
	};
	
	case _wpSwitchKey:
	{
		if(playerSide != west) exitWith {};
		if((currentWeapon player) != (handgunWeapon player)) exitWith {};
		if(switchTimer > time) exitWith {};
		
		if(handgunInfos isEqualTo []) exitWith {
			handgunInfos = [handgunWeapon player,handgunMagazine player];
			player removeWeapon (handgunInfos select 0);
		};
		
		_tempHandgun = handgunInfos;
		handgunInfos = [handgunWeapon player,handgunMagazine player];
		player action ["SwitchWeapon", player, player, 100];
		switchTimer = time + 5;
		[] spawn {
			sleep 1.2;
			player removeWeapon (handgunInfos select 0);
			if(!((_tempHandgun select 1) isEqualTo [])) then {player addMagazine ((_tempHandgun select 1) select 0)};
			player addWeapon (_tempHandgun select 0);
			player selectWeapon (_tempHandgun select 0);
		};
	};
	
	//Main sur la tête = Touche [E]
	case 18:
	{
		if(_ctrlKey) then {
			if (vehicle player == player && !(player getVariable ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
			{
				if (player getVariable ["surrender", false]) then
				{
					player setVariable ["surrender", false, true];
				} else {
					[] spawn life_fnc_surrender;
				};
				_handled = true;
			};
		};
	};
	
	//Holster / recall weapon.
	case 35:
	{
		if(_shift && !_ctrlKey && currentWeapon player != "") then {
			life_curWep_h = currentWeapon player;
			player action ["SwitchWeapon", player, player, 100];
			player switchcamera cameraView;
		};
		
		if(!_shift && _ctrlKey && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
			if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
				player selectWeapon life_curWep_h;
			};
		};
	};
	
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			[] spawn 
			{
				private["_handle"];
				_handle = [] spawn life_fnc_actionKeyHandler;
				waitUntil {scriptDone _handle};
				life_action_inUse = false;
			};
		};
	};
	
	//Restraining (Shift + R)
	case 19:
	{
		if(_shift) then {_handled = true;};
		switch(playerSide) do {
			case west:
			{
				if(_shift && playerSide == west && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
				{
					[] call life_fnc_restrainAction;
				};
			};
            case civilian:
            {
				if(_shift && !(player getVariable["restrained",false]) && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [west,civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && !life_knockout && speed cursorTarget < 1 && (cursorTarget getVariable ["surrender", false])) then
                {
                    if([false,"cuff",1] call life_fnc_handleInv) then
                    {
                        [] call life_fnc_restrainAction;
                    } else{
                        systemChat "Vous n'avez pas de menottes !";
                    };
                };
            };
		};
	};
	
	//Knock out, this is experimental and yeah...
	case 34:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
		{
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["restrained",false]) && !life_istazed) then
			{
				[cursorTarget] spawn life_fnc_knockoutAction;
			};
		};
	};

	//T Key (Trunk)
	case 20:
	{
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player != player && alive vehicle player) then
			{
				if((vehicle player) in life_vehicles) then
				{
					[vehicle player] call life_fnc_openInventory;
				};
			}
				else
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F" OR ((typeOf cursorTarget) IN life_containers_classnames)) && player distance cursorTarget < 7 && vehicle player == player && alive cursorTarget) then
				{
					_forceOK = false;
					if((typeOf cursorTarget) IN life_containers_classnames) then {
						_companyID = cursorTarget getVariable["companyID",[]];
						if(_companyID IN life_companyID) then {_forceOK = true};
					};
					
					if((cursorTarget IN life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) OR _forceOK) then
					{
						[cursorTarget] call life_fnc_openInventory;
					};
				};
			};
		};
	};
	//L Key?
	case 38: 
	{
		//If cop run checks for turning lights on.
		if(_shift && playerSide in [west,independent]) then {
			if(vehicle player != player && (typeOf vehicle player) in ["cl3_suv_black","DAR_SWATPolice","ALE_GendQ7","ford_mondeo_gend","ALE_GendSUV","ALE_GendOffroad","ALE_MedHayonSport","ALE_MedSUV","C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F"]) then {
				if(playerSide == west) then {
					[vehicle player] call life_fnc_sirenLights;
				};
				if(playerSide == independent) then {
					[vehicle player] call life_fnc_medicSirenLights;
				};
				_handled = true;
			};
		};
		
		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(!_alt && !_ctrlKey && !dialog) then
		{
			[] call life_fnc_p_openMenu;
		};
	};
	
	//F Key
	case 33:
	{
		if(playerSide in [west,independent] && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
		{
			[] spawn
			{
				life_siren_active = true;
				sleep 4.2;
				life_siren_active = false;
			};
			_veh = vehicle player;
			if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
			if((_veh getVariable "siren")) then
			{
				titleText [localize "STR_MISC_SirensOFF","PLAIN"];
				_veh setVariable["siren",false,true];
			}
				else
			{
				titleText [localize "STR_MISC_SirensON","PLAIN"];
				_veh setVariable["siren",true,true];
				if(playerSide == west) then {
					[[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
				} else {
					//I do not have a custom sound for this and I really don't want to go digging for one, when you have a sound uncomment this and change medicSiren.sqf in the medical folder.
					[[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;
				};
			};
		};
	};
	
	//Anti&menuy
    if((_code in (actionKeys "SelectAll") || _code in (actionKeys "ForceCommandingMode"))) then
	{
        	[] call life_fnc_p_openMenu;
    };
	//U Key
	case 22:
	{
		if(!_alt && !_ctrlKey) then {
			if(vehicle player == player) then {
				_veh = cursorTarget;
			} else {
				_veh = vehicle player;
			};
			
			if(_veh isKindOf "House_F" && playerSide == civilian) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(_door == 0) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh getVariable [format["bis_disabled_Door_%1",_door],0];
					if(_locked == 0) then {
						_veh setVariable[format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh setVariable[format["bis_disabled_Door_%1",_door],0,true];
						_veh animate [format["door_%1_rot",_door],1];
						systemChat localize "STR_House_Door_Unlock";
					};
				};
			} else {
				_locked = locked _veh;
				if(_veh in life_vehicles && player distance _veh < 8) then {
					if(_locked == 2) then {
						if(local _veh) then {
							_veh lock 0;
						} else {
							[[_veh,0],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						systemChat localize "STR_MISC_VehUnlock";
						player say3D "unlock";
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};	
						systemChat localize "STR_MISC_VehLock";
						player say3D "car_lock";
					};
				};
			};
		};
	};
	//6 Nitro
	case 7:
	{
		if(!_alt && !_ctrlKey && ((vehicle player) isKindOf "Car")) then {
			[] spawn life_fnc_activateNitro;
		};
	};
	//Takwondo(Traditional Martial arts in korea)(Shift + Num 1)
	case 79:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
			};
	};

	//Kneebend Slow(Shift + Num 2)
	case 80:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
			};
	};

	//Kneebend Fast(Shift + Num 3)
	case 81:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
			};
	};

	//Pushup(Shift + Num 4)
	case 75:
	{
		if(_shift) then {_handled = true;};
			if ((_shift) && (vehicle player == player)) then
			{
				player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
			};
	};
	case 62:
    {
		if(_alt && !_shift) then {
			diag_log format ["ATTENTION: %1 à appuyé sur ALT+F4 pour se déconnecter (merci de le report au Staff)",_player getVariable["realname",name _player]];
			[[1,format["ATTENTION: %1 à appuyé sur ALT+F4 pour se déconnecter (merci de le report au Staff)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		};
    };
    case 211:
    {
		if(_ctrlKey && _alt)  then {
			diag_log format ["ATTENTION: %1 à appuyé sur CTRL + ALT + DEL pour se déconnecter (merci de le report au Staff)",_player getVariable["realname",name _player]];
			[[1,format["ATTENTION: %1 à appuyé sur CTRL + ALT + DEL  pour se déconnecter (merci de le report au Staff)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		};
    };
    case 1:
    {
		if( _ctrlKey )  then {
			diag_log format ["ATTENTION: %1 à appuyé sur CTRL + ESC pour se déconnecter (merci de le report au Staff)",_player getVariable["realname",name _player]];
			[[1,format["ATTENTION: %1 à appuyé sur CTRL + ESC pour se déconnecter (merci de le report au Staff)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
		};
    };
};

_handled;