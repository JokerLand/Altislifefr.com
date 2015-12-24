private ["_obj","_dat","_cString","_adString"];

_obj = objNull;_dat = [];_adString = "CAN_COLLIDE";
_cString = {_obj = createVehicle [(_dat select 0), call compile (_dat select 1), [], 0, _adString];if((_dat select 4) == 0) then {_obj enableSimulation false};_obj setdir (_dat select 2);if((_dat select 3) == -100) then {_obj setposATL (call compile (_dat select 1))} else {_obj setposASL [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)]};if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)};if(count _dat > 7) then {if (_dat select 7 == 1) then {_obj allowDamage false;} else {_obj allowDamage true;};};};

//Garage1

_dat = ["Land_HelipadSquare_F","[3466.290527,12855.473633,0]",202.083,-100,0,0,[],1];call _cString;
_dat = ["Land_HelipadSquare_F","[3489.482666,12862.200195,0]",19.811,-100,0,0,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3488.88623,12847.574219,0]",19.811,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3484.990723,12848.977539,0.00290108]",19.5476,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3481.0930176,12850.381836,0.0058012]",19.2856,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3477.195313,12851.786133,0.00139904]",19.6761,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3470.196777,12875.0371094,0]",19.811,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3474.0944824,12873.632813,0]",19.811,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3478.00317383,12872.224609,0]",19.811,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3481.906738,12870.818359,0.00656986]",19.1298,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3476.0646973,12854.499023,0.00123119]",289.946,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3483.285889,12868.237305,0.011518]",290.339,-100,0,1,[],1];call _cString;
_dat = ["Land_WheelieBin_01_F","[3487.940186,12839.773438,0]",469.906,-100,0,1,[],1];call _cString;
_dat = ["Land_Tyres_F","[3488.785889,12845.344727,0]",469.906,-100,0,1,[],1];call _cString;
_dat = ["Land_Tyres_F","[3486.386719,12846.21875,0]",469.906,-100,0,1,[],1];call _cString;
_dat = ["Land_Bench_F","[3476.330811,12851.186523,0]",469.906,-100,0,1,[],1];call _cString;
_dat = ["Land_Bench_F","[3478.255859,12850.484375,0]",469.906,-100,0,1,[],1];call _cString;
_dat = ["Land_Bench_F","[3480.180908,12849.782227,0]",469.906,-100,0,1,[],1];call _cString;
_dat = ["Land_Bench_F","[3482.0998535,12849.0771484,0.00132656]",110.171,-100,0,1,[],1];call _cString;
_dat = ["Land_Bench_F","[3484.0187988,12848.37207,0]",469.906,-100,0,1,[],1];call _cString;
_dat = ["Land_RattanTable_01_F","[3469.536621,12870.548828,0]",424.906,-100,0,1,[],1];call _cString;
_dat = ["Land_RattanTable_01_F","[3473.430908,12869.132813,0]",424.906,-100,0,1,[],1];call _cString;
_dat = ["Land_RattanChair_01_F","[3469.171875,12871.392578,0]",694.906,-100,0,1,[],1];call _cString;
_dat = ["Land_RattanChair_01_F","[3473.0710449,12869.918945,0]",694.906,-100,0,1,[],1];call _cString;
_dat = ["Land_RattanChair_01_F","[3469.927979,12869.862305,0]",514.906,-100,0,1,[],1];call _cString;
_dat = ["Land_RattanChair_01_F","[3473.789551,12868.34082,0]",514.906,-100,0,1,[],1];call _cString;
_dat = ["Land_LampStreet_small_F","[3475.481201,12831.743164,0.233165]",514.906,-100,0,0,[],1];call _cString;

//Superette

_dat = ["Land_Obstacle_Saddle_F","[3409.145996,13124.320313,-0.0782967]",231.689,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3406.807373,13127.28125,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3404.39502,13130.638672,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3402.102539,13133.885742,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3399.803467,13137.162109,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3397.476318,13140.348633,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3407.432861,13122.966797,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3405.0976563,13125.923828,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3402.538574,13129.163086,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3400.0742188,13132.283203,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3397.602051,13135.413086,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3395.428467,13138.725586,-0.0782829]",-128.308,-100,0,1,[],1];call _cString;
_dat = ["Land_Sacks_goods_F","[3417.411377,13130.19043,0.392581]",96.6774,-100,0,1,[],1];call _cString;
_dat = ["Land_CratesShabby_F","[3419.982178,13127.996094,0.329966]",-173.308,-100,0,0,[],1];call _cString;
_dat = ["Land_Sack_F","[3414.361328,13128.466797,0.424243]",-173.308,-100,0,0,[],1];call _cString;
_dat = ["Land_LampDecor_F","[3383.938477,13105.647461,0.228956]",-173.308,-100,0,0,[],1];call _cString;
_dat = ["Land_LampDecor_F","[3417.121338,13119.484375,0.183502]",-173.308,-100,0,0,[],1];call _cString;

//Hopital

_dat = ["Land_HelipadRescue_F","[3727.958008,12995.919922,0]",90,-100,0,0,[],1];call _cString;
_dat = ["Land_PipeWall_concretel_8m_F","[3731.852295,13035.711914,0]",-65,-100,0,1,[],1];call _cString;
_dat = ["Land_PipeWall_concretel_8m_F","[3728.41626,13028.532227,0]",-63.6742,-100,0,1,[],1];call _cString;
_dat = ["Land_PipeWall_concretel_8m_F","[3724.899902,13021.425781,0.000246048]",295.743,-100,0,1,[],1];call _cString;
_dat = ["Land_PipeWall_concretel_8m_F","[3721.973145,13014.105469,0]",-72.0707,-100,0,1,[],1];call _cString;
_dat = ["Land_PipeWall_concretel_8m_F","[3720.00976563,13006.429688,0]",-79.2045,-100,0,1,[],1];call _cString;
_dat = ["Land_HelipadSquare_F","[3743.254639,12991.96582,0]",359.369,-100,0,0,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3734.854736,13003.00488281,-0.0749158]",-91.5152,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3734.82373,13006.890625,-0.0749158]",-91.5152,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3734.798584,13010.878906,-0.0749158]",-91.5152,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3734.757813,13014.854492,-0.0749158]",-91.5152,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3734.736816,13018.841797,-0.0749158]",-91.5152,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3734.718994,13022.783203,-0.0749158]",-91.5152,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3756.00610352,13014.90332,-0.0622311]",268.481,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3753.709229,13014.841797,-0.0639731]",-91.5152,-100,0,1,[],1];call _cString;
_dat = ["Land_LampDecor_F","[3708.235596,13009.708984,0.23064]",-91.5152,-100,0,0,[],1];call _cString;
_dat = ["Land_LampDecor_F","[3742.966797,13028.768555,0.23064]",-94.1036,-100,0,0,[],1];call _cString;

//Quaincallerie

_dat = ["Land_Obstacle_Saddle_F","[3685.834473,13269.201172,-0.0596333]",23.0992,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3682.591064,13270.407227,-0.0804844]",23.1038,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3679.50293,13271.725586,-0.0884218]",23.0999,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3676.245361,13273.115234,-0.067709]",23.0628,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3684.352783,13265.727539,-0.0606062]",23.1061,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3681.105469,13266.923828,-0.0530304]",23.1061,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3677.980713,13268.157227,-0.0681819]",23.1061,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3674.743408,13269.585938,-0.0574703]",23.0847,-100,0,1,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3674.909424,13275.745117,0.0395623]",-66.8939,-100,0,1,[],1];call _cString;
_dat = ["Land_LampDecor_F","[3684.790039,13261.119141,0.218855]",-66.8939,-100,0,0,[],1];call _cString;
_dat = ["Land_LampStreet_F","[3654.59082,13280.287109,0.0917509]",-237.045,-100,0,0,[],1];call _cString;
_dat = ["Land_Obstacle_Saddle_F","[3685.280518,13263.209961,-0.067359]",-66.897,-100,0,1,[],1];call _cString;

//Garage2

_dat = ["Land_TouristShelter_01_F","[3739.303223,13268.104492,-0.0992289]",231.446,-100,0,1,[],1];call _cString;
_dat = ["Land_TouristShelter_01_F","[3801.358887,13262.901367,0]",140.025,-100,0,0,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3793.13623,13253.634766,0.00366116]",49.6548,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3790.467041,13256.818359,0.0073204]",49.2836,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3787.777588,13259.984375,0.0169315]",48.8784,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3785.0871582,13263.151367,0.00489998]",49.5439,-100,0,1,[],1];call _cString;
_dat = ["Land_Pipe_fence_4m_F","[3782.395508,13266.320313,0.00613976]",49.4328,-100,0,1,[],1];call _cString;
_dat = ["Land_HelipadSquare_F","[3793.370605,13272.527344,0]",316.435,-100,0,0,[],1];call _cString;
_dat = ["Land_HelipadSquare_F","[3748.964355,13275.918945,0]",51.3595,-100,0,0,[],1];call _cString;
_dat = ["Land_Bench_F","[3741.447266,13266.75,0.000119209]",51.367,-100,0,1,[],1];call _cString;
_dat = ["Land_Bench_F","[3802.626465,13265.0527344,0.000101089]",319.578,-100,0,1,[],1];call _cString;
_dat = ["Land_Tyres_F","[3736.270264,13271.452148,0]",319.592,-100,0,0,[],1];call _cString;
_dat = ["cl3_garage","[3733.254639,13275.353516,0.0867004]",139.276,-100,0,0,[],1];call _cString;
_dat = ["cl3_garage","[3737.80249,13279.193359,0.0867004]",139.276,-100,0,0,[],1];call _cString;
_dat = ["cl3_garage","[3746.193115,13261.641602,0.0867004]",321.801,-100,0,0,[],1];call _cString;
_dat = ["cl3_garage","[3750.83667,13265.262695,0.0867004]",321.801,-100,0,0,[],1];call _cString;
_dat = ["Land_Cargo10_grey_F","[3809.120117,13268.453125,0.00414848]",321.956,-100,0,1,[],1];call _cString;
_dat = ["Land_Cargo10_grey_F","[3807.615479,13270.375977,0.00414848]",321.956,-100,0,1,[],1];call _cString;
_dat = ["Land_TablePlastic_01_F","[3797.0812988,13259.910156,-0.166202]",186.833,-100,0,1,[],1];call _cString;
_dat = ["Land_Sunshade_01_F","[3797.0634766,13259.907227,9.53674e-007]",186.801,-100,0,0,[],1];call _cString;
_dat = ["Land_ChairPlastic_F","[3798.560303,13259.708008,0.000253677]",186.817,-100,0,1,[],1];call _cString;
_dat = ["Land_ChairPlastic_F","[3795.621094,13260.0185547,0.000167847]",6.78989,-100,0,1,[],1];call _cString;
_dat = ["Land_LampDecor_F","[3804.969727,13265.49707,-9.53674e-007]",217.58,-100,0,0,[],1];call _cString;
_dat = ["Land_LampDecor_F","[3737.558594,13266.701172,0]",226.48,-100,0,0,[],1];call _cString;
_dat = ["Land_LampDecor_F","[3740.539795,13305.896484,0.221381]",226.48,-100,0,0,[],1];call _cString;
