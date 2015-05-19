////////////////////////////////////////////////////////////
// Teargas script
// by Taw_jarhead, TESTED: Taw_Mangkanor, Taw_Zomu, and Taw_Greyl
//
// call from units INIT with: null = [this] execVM "teargas.sqf"
////////////////////////////////////////////////////////////

_gasmask = ["Mask_M40", "Mask_M40_OD", "Mask_M50"];

waitUntil{alive player};

while{alive player} do {
	// normal conditions
	"dynamicBlur" ppEffectEnable true; // enables ppeffect
	"dynamicBlur" ppEffectAdjust [0]; // enables normal vision
	"dynamicBlur" ppEffectCommit 15; // time it takes to normal
	resetCamShake; // resets the shake
	20 fadeSound 1;	 //fades the sound back to normal


	waituntil
	{
		((nearestObject [getpos player, "SmokeShellGreen"]) distance player < 10) && (getpos (nearestObject [getpos player, "SmokeShellGreen"]) select 2 < 0.5)
	};
	
	
	if((goggles player) IN _gasmask) then {} else {
		"dynamicBlur" ppEffectEnable true; // enables ppeffect
		"dynamicBlur" ppEffectAdjust [10]; // intensity of blur
		"dynamicBlur" ppEffectCommit 3; // time till vision is fully blurred
		player setFatigue 1; // sets the fatigue to 100%
		7 fadeSound 0.4;	 // fades the sound to 10% in 5 seconds
		sleep 5;
		"dynamicBlur" ppEffectAdjust [20]; // intensity of blur
		"dynamicBlur" ppEffectCommit 6; // time till vision is fully blurred
		sleep 5;
	};
};

waitUntil {alive player};
[player] execVM "scripts\teargas.sqf";