#define steamid getPlayerUID player
#define GVAR getVariable
/*
	File: fn_variableCheck.sqf
	
	Description:
	Checks against harmful variables, disable this if client-performance is 
	to bad in the fn_initSpy.sqf, the menuCheck should be good enough!
*/
private["_badVariables","_checkThread"];
_badVariables = ["JxMxE_hide","JME_Keybinds","JME_has_yet_to_fuck_this_shit","JME_deleteC","JME_Tele","JME_ANAL_PLOW","JME_M_E_N_U_initMenu","JME_M_E_N_U_hax_toggled","W_O_O_K_I_E_FUD_Pro_RE","W_O_O_K_I_E_FUD_Car_RE","W_O_O_K_I_E_FUD_Car_RE",
	"JxMxE_Veh_M","JxMxE_LifeCash500k","W_O_O_K_I_E_FUD_FuckUp_GunStore","W_O_O_K_I_E_FUD_M_E_N_U_initMenu","W_O_O_K_I_E_FuckUp_GunStore_a","JME_KillCursor","JME_OPTIONS","JME_M_E_N_U_fill_TROLLmenu","ASSPLUNGE","FOXBYPASS","POLICE_IN_HELICOPTA",
	"JxMxE_EBRP","W_O_O_K_I_E_M_E_N_U_funcs_inited","Menu_Init_Lol","E_X_T_A_S_Y_Atm","W_O_O_K_I_E_Pro_RE","W_O_O_K_I_E_Debug_Mon","W_O_O_K_I_E_Debug_1337","Veh_S_P_A_W_N_Shitt","sfsefse","tw4etinitMenu","tw4etgetControl",
	"JxMxEsp","JxMxE_GOD","JxMxE_Heal","efr4243234","sdfwesrfwesf233","sdgff4535hfgvcxghn","adadawer24_1337","lkjhgfuyhgfd","E_X_T_A_S_Y_M_E_N_U_funcs_inited","dayz_serverObjectMonitor","fsfgdggdzgfd","fsdddInfectLOL","Wookie_List",
	"JxMxE_TP","Wookie_Pro_RE","Wookie_Car_RE","Wookie_Debug_Mon","faze_funcs_inited","advertising_banner_infiSTAR","atext_star_xa","Monky_hax_dbclick","qopfkqpofqk","debug_star_colorful","AntiAntiAntiAntiHax","antiantiantiantih4x",
	"JxMxE_Infect","hub","scrollinit","gfYJV","Lystic_LMAOOOOOOOOOOOOOOOOOOO","Lystic_Re","Lysto_Lyst","E_X_T_A_S_Y_Keybinds","Menulocations","Lystic_Init","scroll_m_init_star","exstr1","pathtoscrdir3","Monky_funcs_inited",
	"JxMxE_secret","Monky_initMenu","player_zombieCheck","E_X_T_A_S_Y_Recoil","godlol","playericons","abcdefGEH","wierdo","go_invisible_infiSTAR","serverObjectMonitor","enamearr","initarr3","locdb","sCode","infAmmoIndex",
	"nukeDONEstar","Wookie_List","Wookie_Pro_RE","FUCKTONIC","E_X_T_A_S_Y_FuckUp_GunStore_a","E_X_T_A_S_Y_Cash_1k_t","E_X_T_A_S_Y_Cash_a","E_X_T_A_S_Y_LicenseDrive","E_X_T_A_S_Y_Menu_LOOOOOOOOOL","Metallica_vehicleg0dv3_infiSTAR",
	"JJJJ_MMMM___EEEEEEE_INIT_MENU","JJJJ_MMMM___EEEEEEE_GAPER","JJJJ_MMMM___EEEEEEE_SMOKExWEEDxEVERYDAY_BUM_RAPE","JJJJ_MMMM___EEEEEEE_OPTIONS","JJJJ_MMMM___EEEEEEE_M_E_N_U_fill_Target","E3p",
	"Jesus_MODE","ESP","MissileStrike","AL_Liscenses","NoIllegal","NoWeight","m0nkyaatp_sadksadxa","m0nkyaatp_RANDSTR","myvar23","player_adminlevel","TNK","I_like_turtles",
	"BIGM","Does_Tonic_Like_to_take_Turtle_penis_in_the_ass_LODESTARS","Does_Tonic_Like_to_take_Turtle_penis_in_the_ass_LODESTAR1","GMod","No_No_No_Tonic_likes_A_Big_Fat_Sheep_Cock_Right_in_the_bum_G0d_Mode",
	"Sload","T3le","life_no_injection","Tonic_has_a_gaping_vagina","my_anus_hurtz","aKFerm","aKMMenu","aKTitans","aKLikeaG0d","riasgremory_G0d_Mode","aKCarG0d","riasgremory_Car_Jesus","aKE5p","riasgremory_isseilol","aKPMark",
	"riasgremory_Noobs","riasgremory_Bitches","riasgremory_Map_Markers","aKUnMmo","jenesuispasuncheateur_unamo","aKVoit","Loljesaispasquoiecriremdr","isseigremory","gremorysama","aKTaCu","aKCardetroy","aKGetKey","aKKillcursor",
	"aKNoEscort","aKEscort","aKtroll","aKTPall","aKUnrestrain","aKNoEscortMe","aKNoTaze","aKJailplayer","aKLisense","riasgremory_titans_shit_reold","Tonic_merde","jaimepaslepoisin_HLEAL","TTTT_IIII___TTTTTTT_RAP_FR","TTTT_IIII___TTTTTTT_REPGA",
	"TTTT_IIII___TTTTTTT_REPGAs","jaimepaslepoisin_HLEAL","Root_Main4","Root_Pistol4","Root_Rifle4","Root_Machinegun4","Root_Sniper4","Root_Launcher4","Root_Attachement4",
                 
"JJJJ_MMMM___EEEEEEE_GAPER","JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE_OLD","JJJJ_MMMM___EEEEEEE_LLYYSSTTIICCC_SHIT_RE","JJJJ_MMMM___EEEEEEE_INIT_MENU","JJJJ_MMMM___EEEEEEE_M_E_N_U_hax_toggled","JJJJ_MMMM___EEEEEEE_M_E_N_U_funcs_inited",
"JJJJ_MMMM___EEEEEEE_M_E_N_U_hax_toggled","JJJJ_MMMM___EEEEEEE_ANAL_PLOW","JJJJ_MMMM___EEEEEEE_M_E_N_U_initMenu","JJJJ_MMMM___EEEEEEE_SPAWN_VEH","JJJJ_MMMM___EEEEEEE_SPAWN_WEAPON","JJJJ_MMMM___EEEEEEE_grass",
"JJJJ_MMMM___EEEEEEE_change_terrain_Metallica","JJJJ_MMMM___EEEEEEE_fly","JJJJ_MMMM___EEEEEEE_move_forward","JJJJ_MMMM___EEEEEEE_move_left","JJJJ_MMMM___EEEEEEE_move_backward","JJJJ_MMMM___EEEEEEE_move_right","JJJJ_MMMM___EEEEEEE_move_up","JJJJ_MMMM___EEEEEEE_move_down","JJJJ_MMMM___EEEEEEE_BelieveIcanFly","JJJJ_MMMM___EEEEEEE_NoRecoil","JJJJ_MMMM___EEEEEEE_RECOIL","JJJJ_MMMM___EEEEEEE_CLIP","JJJJ_MMMM___EEEEEEE_Noclip","JJJJ_MMMM___EEEEEEE_Invisable","JJJJ_MMMM___EEEEEEE_Cash_1mill","JJJJ_MMMM___EEEEEEE_Cash_5mill","JJJJ_MMMM___EEEEEEE_Cash_1mill_t","JJJJ_MMMM___EEEEEEE_Cash_5mill_t","JJJJ_MMMM___EEEEEEE_JesusMode_t","JJJJ_MMMM___EEEEEEE_Spectate_t","_JJJJ_MMMM___EEEEEEE_E5PfncCC","JJJJ_MMMM___EEEEEEE_E5P_t",

"E_X_T_A_S_Y_Keybind","E_X_T_A_S_Y_Keybinds","E_X_T_A_S_Y_ANTI_ANTI_HAX","E_X_T_A_S_Y_RestrainPlayer","E_X_T_A_S_Y_TPCursor","E_X_T_A_S_Y_KillCursor","E_X_T_A_S_Y_EscortPlayer","E_X_T_A_S_Y_Demenotter","E_X_T_A_S_Y_M_E_N_U_getControl","E_X_T_A_S_Y_M_E_N_U_initMenu","E_X_T_A_S_Y_M_E_N_U_fill_AltisLife","E_X_T_A_S_Y_OPTIONS","E_X_T_A_S_Y_Cash","E_X_T_A_S_Y_Cash_1k_t","E_X_T_A_S_Y_Pro_RE","E_X_T_A_S_Y_Cash_3k_t","E_X_T_A_S_Y_Cash_max_t","E_X_T_A_S_Y_Cash_a","E_X_T_A_S_Y_Spectate_t","E_X_T_A_S_Y_GodMode_t","E_X_T_A_S_Y_KillCursor","E_X_T_A_S_Y_TPCursor",
                 
"_XXX__props","_XXX__tittle1","_XXX__props2","_XXX__keybizzl3","_XXX__keybizzle2",
                 
"WHY_ARE_THERE_SO_MANY_FISH_IN_THE_BIG_BLUE_OCEAN","CLASS911_BindHandler","CLASS911_Binds","CLASS911_Money1","CLASS911_Money2","CLASS911_Money3","CLASS911_Money4","CLASS911_Money5","CLASS911_Init","CLASS911_TPALL","CLASS911_Money_all","CLASS911_TeleToVeh","CLASS911_Remote_Execution","CLASS911_GodAll","CLASS911_GiantCock","CLASS911_KillTarget","CLASS911_OMFGISEEU66","CLASS911_EXECUTER","CLASS911_OMFGJJMODE","CLASS911_LOOL","POOOOP_PUUMMPERS_ALLDAY_BelieveIcanFly","CLASS911_ESPTURTLE","Jme_Markers","CLASS911_VehicleMarkers_TOGGLE","CLASS911_Disconnect","CLASS911_SUICIDE","CLASS911_VehicleMarkers","CLASS911_Menu","CLASS911_LoadMenu","CLASS911_Menu_Header"," CLASS911_MapMarkers_TOGGLE","CLASS911_SUCHUNLIMITEDAMMO_TOGGLE",
                 
"_DesFM","_SPAWNFM","_AltisLifeFM","MAINON","FUNMENUOFF","_FUNSCRIPT","_MAIN","_PLAYER","_Des","_MAINFM","_FUNSCRIPTFM","_DesFM",
                 
];

_checkThread = {
	{
		_key = _x;
		{
			_var = _x GVAR _key;
			if(!isNil "_var") exitWith {
				_x setVariable[_key,nil];
				[[profileName,steamid,_key],"SPY_fnc_cookieJar",false,false] call life_fnc_MP;
				[[profileName,format["Variable: %1",_key]],"SPY_fnc_notifyAdmins",true,false] call life_fnc_MP;
				sleep 0.5;
				vehicle player setVelocity[1e10,1e14,1e18]; //It's a surprise.
				sleep 3;
				preProcessFile "SpyGlass\endoftheline.sqf";
				sleep 2.5;
				failMission "SpyGlass";
			};
		} forEach [missionNamespace, uiNamespace, profileNamespace, parsingNamespace];
	} foreach _this;
};

//Create the worker.
while {true} do {
	_thread = _badVariables spawn _checkThread;
	waitUntil {scriptDone _thread};
	sleep 120; //Goto sleep for 2 minutes.
};
