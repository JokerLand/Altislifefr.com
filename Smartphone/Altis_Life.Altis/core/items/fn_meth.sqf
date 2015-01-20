/*
    File: fn_meth.sqf
    Author: Kuchiha,Gek
	Screen: http://image.noelshack.com/fichiers/2014/16/1397922581-arma3-2014-04-19-17-49-32-06.jpg
    Description:
    Meth effects.
*/

//Close inventory
closeDialog 0;

//Little hint then wait a litle before starting drugs effects
hint "La drogue c'est mal !";
sleep 3;

//Activate ppEffects we need
"chromAberration" ppEffectEnable true;
"ColorInversion" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

//Let's go for 45secs of effetcs
for "_i" from 0 to 44 do
{
	"chromAberration" ppEffectAdjust [0.8,0.8,true];
    "chromAberration" ppEffectCommit 1;
    "ColorInversion" ppEffectAdjust [0.9,0.9,0.9];
    "ColorInversion" ppEffectCommit 1;
    "radialBlur" ppEffectAdjust  [0.1,0.1,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[(random 4)+1, 1, (random 4)+1];
    sleep 1;
};

//Stop effects
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"ColorInversion" ppEffectAdjust [0,0,0];
"ColorInversion" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

//Deactivate ppEffects
"chromAberration" ppEffectEnable false;
"ColorInversion" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;
