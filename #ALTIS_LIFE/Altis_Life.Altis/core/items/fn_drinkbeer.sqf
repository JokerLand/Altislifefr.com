/*
	File: fn_drinkbeer.sqf
	Compiled function name: life_fnc_drinkbeer
	Author: Sam_ -- Altis Life FR -- <http://www.altislifefr.com/>
	
	DO NOT USE WITHOUT PERMISSION
	
	Description:
	Allows the player to drink the "beer" item
*/

closeDialog 0;
sleep 4;
"chromAbberation" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

for "_i" from 0 to 59 do
{
    if(life_drink > 0.12) then {

		"chromAberration" ppEffectAdjust[0,random 0.15, false];
		"chromAberration" ppEffectCommit 1;   
		"radialBlur" ppEffectAdjust  [0.1,0.1,0.15,0.15];
		"radialBlur" ppEffectCommit 1;
		"colorCorrections" ppEffectAdjust[ 0.44, 0.76, 0.7, [0.1, -0.57, 0, 0.05],[1.8, 1.3, 0.3, 0.7],[0.2, 0.59, 0.11, 0]];
		"colorCorrections" ppEffectCommit 1;
		 addcamShake[(random 4)+1, 1, (random 4)+1];
		sleep 1;
	} else {
		"chromAberration" ppEffectAdjust [random 0.05,random 0.05,true];
		"chromAberration" ppEffectCommit 1;   
		"radialBlur" ppEffectAdjust  [random 0.03,random 0.03,0.4,0.4];
		"radialBlur" ppEffectCommit 1;
		addcamShake[random 6, 1, random 6];
		sleep 1;
	};
};
if (life_drink > 0.22) then {
			titleText [localize "STR_MISC_DrunkBlackOut","BLACK OUT"];
			player playMoveNow "Incapacitated";
			//titleText[localize "STR_MISC_DrunkBlackOut","BLACK IN"];
			sleep 15;
			removeUniform player;removeVest player;
			player playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
			sleep 10;
			life_drink = 0;
			titleText[localize "STR_MISC_DrunkBlackOut1","PLAIN"];
			player playMoveNow "amovppnemstpsraswrfldnon";
			[[0,format[localize "STR_MISC_StPubIntox",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
			[[getPlayerUID player,profileName,"390"],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
			
};
//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
//"chromAberration" ppEffectEnable false;
//"radialBlur" ppEffectEnable false;
resetCamShake;
if(life_drink != 0) then {life_drink = life_drink - 0.02;};