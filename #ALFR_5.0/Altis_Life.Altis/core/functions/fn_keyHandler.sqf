#include <macro.h>
/*
	File: fn_keyHandler.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Main key handler for event 'keyDown'
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys","_player","_curTarget","_panneau1","_panneau2"];
_ctrl = SEL(_this,0);
_code = SEL(_this,1);
_shift = SEL(_this,2);
_ctrlKey = SEL(_this,3);
_alt = SEL(_this,4);
_speed = speed cursorTarget;
_handled = false;
_player = player;
_curTarget = cursorTarget;
_panneau1 = nearestObject [player, "Land_InfoStand_V2_F"];
_panneau2 = nearestObject [player, "Land_InfoStand_V1_F"];
_barriere = nearestObject [player, "RoadBarrier_F"];
_cone = nearestObject [player, "RoadCone_F"];
_herse = nearestOBject [player, "ALFR_Herse_F"];

_interactionKey = if((EQUAL(count (actionKeys "User10"),0))) then {219} else {(actionKeys "User10") select 0};
_mapKey = SEL(actionKeys "ShowMap",0);
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

//Vault handling...
if((_code in (actionKeys "GetOver") || _code in (actionKeys "salute")) && {(player GVAR ["restrained",false])}) exitWith {
	true;
};

if(life_action_inUse) exitWith {
	if(!life_interrupted && _code in _interruptionKeys) then {life_interrupted = true;};
	_handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if(!(EQUAL(count (actionKeys "User10"),0)) && {(inputAction "User10" > 0)}) exitWith {
	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
	if(life_action_surrender) exitWith {}; //Action is in use, exit to prevent spamming.
	if(!life_action_inUse) then {
		[] spawn
		{
			private["_handle"];
			_handle = [] spawn life_fnc_actionKeyHandler;
			waitUntil {scriptDone _handle};
		};
	};
	true;
};

switch (_code) do
{
	//Space key for Jumping
	/*case 57: {
		if(isNil "jumpActionTime") then {jumpActionTime = 0;};
		if(_shift && {!(EQUAL(animationState player,"AovrPercMrunSrasWrflDf"))} && {isTouchingGround player} && {EQUAL(stance player,"STAND")} && {speed player > 2} && {!life_is_arrested} && {SEL((velocity player),2) < 2.5} && {time - jumpActionTime > 1.5}) then {
			jumpActionTime = time; //Update the time.
			[player,true] spawn life_fnc_jumpFnc; //Local execution
			[player,false] remoteExec ["life_fnc_jumpFnc",RANY]; //Global execution
			_handled = true;
		};
	};*/

	//Map Key
	case _mapKey:
	{
		switch (playerSide) do
		{
			case west: {if(!visibleMap) then {[] spawn life_fnc_copMarkers;}};
			case independent: {if(!visibleMap) then {[] spawn life_fnc_medicMarkers;}};
			case east:{if(!visibleMap) then {[] spawn life_fnc_adacMarkers;}};
		};
	};
	//H Key mettre les mains sur la tete + Hostler
    /*case 35:
    {
        if(!_alt && !_ctrlKey && !_shift) then
        {
            if (vehicle player == player && !(player GVAR ["restrained", false]) && (animationState player) != "Incapacitated" && !life_istazed) then
            {
                if (player GVAR ["surrender", false]) then
                {
                    player SVAR ["surrender", false, true];
                } else
                {
                    [] spawn life_fnc_surrender;
                };
            };
        };

        if(!_ctrlKey && _shift && currentWeapon player != "") then {
            life_curWep_h = currentWeapon player;
            player action ["SwitchWeapon", player, player, 100];
            player switchcamera cameraView;
        };

        if(_ctrlKey && !_shift && !isNil "life_curWep_h" && {(life_curWep_h != "")}) then {
            if(life_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
                player selectWeapon life_curWep_h;
            };
        };
    };*/

	//Touche pour supprimer cones, barrières et herses lorsqu'un policier vise cet objet ( O )
	case 24:
	{
		if (playerSide != west) then {} else
		{
			if((_player distance _barriere < 8) || (_player distance _cone < 8) || (_player distance _herse < 8)) then
			{
				deleteVehicle _cone;
				deleteVehicle _barriere;
				deleteVehicle _herse;
				cutText [format["Vous avez supprimé cet/ces objet(s)."], "PLAIN DOWN"];
				playSound "bag";
				sleep 1;
			};
		};
	};

	//Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
	case _interactionKey:
	{
		if(!life_action_inUse) then {
			if(playerSide == west && uniform player == "U_Rangemaster") then
			{
				player setObjectTextureGlobal [0, "cop.jpg"];
			};
			if(playerSide == independent) then
			{
				player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"];
			};
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
	/*case 19:
	{
		if(_shift) then {_handled = true;};
		if(_shift && playerSide == west || playerSide == east && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			[] call life_fnc_restrainAction;
		};
	};

	//Bloquage d'ouverture d'inventaire lorsque le joueur est proche de panneaux
	case 23:
	{
		if ((_player distance _panneau1 < 10) || (_player distance _panneau2 < 10)) then
		{
			hint "Vous ne pouvez pas ouvrir votre inventaire à moins de 10 mètres d'un panneau !";
			[] spawn {
				waitUntil {!isNull (findDisplay 602)};
				closeDialog 0;
			};
		};
	};*/

    //Anti MetaGaming (Touche "²")
	 case 41:
    {
    	if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
		if(life_action_surrender) exitWith {}; //Action is in use, exit to prevent spamming.
		if((_code in (actionKeys "SelectAll") || _code in (actionKeys "ForceCommandingMode"))) then
		{
			[] call life_fnc_p_openMenu;
			//player setDamage ((getDammage player) + 0.1);
			//hint parseText format["Pas de Triche !!!<br/>MetaGaming INTERDIT !<br/>Tu as compris la leçon ???<br/><t size='1.4'><t color='#0a8cb2'>Tu viens de perdre 10 points de vie !</t></t>"];
		};
	};


	//Takwondo(f5)
	case 63:
	{
		//if(_shift) then {_handled = true;};
		if ((!_shift) && (vehicle player == player)) then
		{
			cutText [format["Je suis un Ninja!!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
		};
	};

	//Mouvements(f6)
	case 64:
	{
		//if(_shift) then {_handled = true;};
		if ((!_shift) && (vehicle player == player)) then
		{
			cutText [format["Plus vite!!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
		};
	};

	//Shift+C Zipties ( Civilians can restrain )
	case 46:
	{
		if(_shift) then {_handled = true;};
		if(_shift && license_civ_rebel && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && (isPlayer cursorTarget) && (side cursorTarget in [civilian,independent]) && alive cursorTarget && cursorTarget distance player < 3.5 && !(cursorTarget getVariable "Escorting") && !(cursorTarget getVariable "restrained") && speed cursorTarget < 1) then
		{
			if([false,"menotte",1] call life_fnc_handleInv) then
			{
			[] call life_fnc_restrainAction;
			hint "You restrained him, use your interactionmenu for more options";
			}
				else
				{
				hint "Tu n'as pas de menotte!";
				};
		};
	};

	//Mouvements(f7)
	case 65:
	{
	    //if(_shift) then {_handled = true;};
		if ((!_shift) && (vehicle player == player)) then
		{
			cutText [format["Plus vite!!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
		};
	};

	//Pompe(f8)
	case 66:
	{
		//if(_shift) then {_handled = true;};
		if ((!_shift) && (vehicle player == player)) then
		{
			cutText [format["Pompe!!!!!!"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
		};
	};

	//Knock out, this is experimental and yeah...
    case 34:
    {
        if(_shift) then {_handled = true;};
        if(_shift && playerSide == civilian && !isNull cursorTarget && cursorTarget isKindOf "Man" && isPlayer cursorTarget && alive cursorTarget && cursorTarget distance player < 4 && speed cursorTarget < 1) then
        {
			if((animationState cursorTarget) != "Incapacitated" && (currentWeapon player == primaryWeapon player OR currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !life_knockout && !(player getVariable["ACE_captives_isHandcuffed",false]) && !life_istazed && !(cursorTarget getVariable ["ACE_captives_isHandcuffed",false])) then
            {
                [cursorTarget] spawn life_fnc_knockoutAction;
                if("ItemGPS" in assignedItems cursorTarget) then {
                cursorTarget removeweapon "ItemGPS";
                hint "Le téléphone portable de la personne a été placée sur le sol.";
                _defenceplace1 = "Item_ItemGPS" createVehicle (player modelToWorld[0,0,0]);}
                else { hint "La personne que vous avez assomé n'a pas de téléphone!"};
            };
        };
    };
/*
	//Report ALT-F4
	case 62:
    {
    if(_alt && !_shift) then {
    diag_log format ["Anti-Cheat: %1 utilise ALT+F4 pour se deconnecter (Merci de le report aux Admins)",_player getVariable["realname",name _player]];
    [[1,format["Anti-Cheat: %1 utilise ALT+F4 pour se deconnecter (Merci de le report aux Admins)",_player getVariable["realname",name _player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    };
    };
    case 211:
    {
    if(_ctrlKey && _alt)  then {
    diag_log format ["Anti-Cheat: %1 utilise CTRL + ALT + DEL pour se deconnecter (Merci de le report aux Admins)",player getVariable["realname",name player]];
    [[1,format["Anti-Cheat: %1 utilise CTRL + ALT + DEL  pour se deconnecter (Merci de le report aux Admins)",player getVariable["realname",name player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    };
    };
    case 1:
    {
    if( _ctrlKey )  then {
    diag_log format ["Anti-Cheat: %1 utilise CTRL + ESC pour se deconnecter (Merci de le report aux Admins)",player getVariable["realname",name player]];
    [[1,format["Anti-Cheat: %1 utilise CTRL + ESC pour se deconnecter (Merci de le report aux Admins)",player getVariable["realname",name player]]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
    };
    };
*/
	//T Key (Trunk)
	case 20:
	{
		if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
		if(!_alt && !_ctrlKey) then
		{
			if(vehicle player == player) then
			{
				if((cursorTarget isKindOf "Car" OR cursorTarget isKindOf "Air" OR cursorTarget isKindOf "Ship" OR cursorTarget isKindOf "House_F") && player distance cursorTarget < 10 && vehicle player == player && alive cursorTarget) then
				{
					if(cursorTarget in life_vehicles OR {!(cursorTarget getVariable ["locked",true])}) then
					{


                        _index = -1;

                        if(cursorTarget isKindOf "House_F") then
                        {
                            _ownersMaison = cursorTarget getVariable "house_owner";

                        for "_i" from 0 to ((count _ownersMaison) - 1) do {
							if((_ownersMaison select _i) select [0] == getPlayerUID player) then {_index = _i;};
						  };
                          if(_index > -1) then
						  {
							[cursorTarget] spawn life_fnc_openInventory;
						  };

                        }else {

                            _owners = cursorTarget getVariable ["vehicle_info_owners",[]];
                            for "_i" from 0 to ((count _owners) - 1) do {

                                if((_owners select _i) select 0 == getPlayerUID player) then {_index = _i;};
						    };

                            if(_index > -1) then
						  {
							life_action_gathering = false;
							life_action_inUse = false;
							[cursorTarget] spawn life_fnc_openInventory;
						  };
                        };


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
			if(vehicle player != player && (typeOf vehicle player) in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F","C_Hatchback_01_sport_F","C_Hatchback_01_F","I_MRAP_03_hmg_F","I_MRAP_03_F","B_MRAP_01_hmg_F"]) then {
				if(!isNil {vehicle player getVariable "lights"}) then {
					if(playerSide == west) then {
						[vehicle player] call life_fnc_sirenLights;
					} else {
						[vehicle player] call life_fnc_medicSirenLights;
					};
					_handled = true;
				};
			};
		};

		if(!_alt && !_ctrlKey) then { [] call life_fnc_radar; };
	};
	//Y Player Menu
	case 21:
	{
		if(life_action_gathering) exitWith {};
		if(!_alt && !_ctrlKey && !dialog) then
		{
			life_action_gathering = false;
			life_action_inUse = false;
			[] call life_fnc_p_openMenu;
		};
	};

	//F Key
   case 33:
    {
		if (!_shift) then
        {
            if((playerSide in [west,independent,east]) && vehicle player != player && !life_siren_active && ((driver vehicle player) == player)) then
            {
                [] spawn
                {
                    life_siren_active = true;
                    sleep 15;
                    life_siren_active = false;
                };
                _veh = vehicle player;
                if(isNil {_veh getVariable "siren"}) then {_veh setVariable["siren",false,true];};
                if((_veh getVariable "siren")) then
                {
                    titleText ["Sirens Off","PLAIN"];
                    _veh setVariable["siren",false,true];
                }
                    else
                {
                    titleText ["Sirens On","PLAIN"];
                    _veh setVariable["siren",true,true];
                    if(playerSide == west or playerSide == east) then {
                    [[_veh],"life_fnc_copSiren",nil,true] spawn life_fnc_MP;
                    } else {

                    [[_veh],"life_fnc_medicSiren",nil,true] spawn life_fnc_MP;

                    };
                };
            };
        };
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

			if(_veh isKindOf "House_F" && {playerSide == civilian}) then {
				if(_veh in life_vehicles && player distance _veh < 8) then {
					_door = [_veh] call life_fnc_nearestDoor;
					if(EQUAL(_door,0)) exitWith {hint localize "STR_House_Door_NotNear"};
					_locked = _veh GVAR [format["bis_disabled_Door_%1",_door],0];

					if(EQUAL(_locked,0)) then {
						_veh SVAR [format["bis_disabled_Door_%1",_door],1,true];
						_veh animate [format["door_%1_rot",_door],0];
						systemChat localize "STR_House_Door_Lock";
					} else {
						_veh SVAR [format["bis_disabled_Door_%1",_door],0,true];
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
						//systemChat localize "STR_MISC_VehUnlock";
						hint composeText [ image "icons\unlock.paa", "  Vehicule ouvert" ];
						_veh say3D "Beep";
					} else {
						if(local _veh) then {
							_veh lock 2;
						} else {
							[[_veh,2],"life_fnc_lockVehicle",_veh,false] spawn life_fnc_MP;
						};
						//systemChat localize "STR_MISC_VehLock";
						hint composeText [ image "icons\lock.paa", "  Vehicule ferme" ];
						_veh say3D "BeepBeep";
					};
				};
			};
		};
	};

    //Anti petit ²
	case 41	:
    {

		if((_code in (actionKeys "SelectAll") || _code in (actionKeys "ForceCommandingMode"))) then {true;};
	};

    //Radio VerMAj
	case 58:
    {
        if (player GVAR ["restrained" , true]) exitWith {hint "Vous ne pouvez pas parler à la radio en étant menotté !"};
    };

	//Radio T
	case 20:
    {
        if (player GVAR ["restrained" , true]) exitWith {hint "Vous ne pouvez pas parler à la radio en étant menotté !"};
    };

	//Shift+P = Faded Sound
    case 25:
    {
        if(_shift) then
        {
            [] call life_fnc_fadeSound;
            _handled = true;
        };
    };
};

_handled;
