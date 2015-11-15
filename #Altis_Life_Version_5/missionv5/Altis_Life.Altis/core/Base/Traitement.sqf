private ["_obj","_dat","_cString","_adString"];

_obj = objNull;_dat = [];_adString = "CAN_COLLIDE";
_cString = {_obj = createVehicle [(_dat select 0), call compile (_dat select 1), [], 0, _adString];if((_dat select 4) == 0) then {_obj enableSimulation false};_obj setdir (_dat select 2);if((_dat select 3) == -100) then {_obj setposATL (call compile (_dat select 1))} else {_obj setposASL [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)]};if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)};if(count _dat > 7) then {if (_dat select 7 == 1) then {_obj allowDamage false;} else {_obj allowDamage true;};};};

//TraitementCocaine

_dat = ["Land_Pallet_vertical_F","[8430.879883,12759.43457,1.17593]",94.7351,-100,0,0,[],1];call _cString;
_dat = ["Land_Pallet_vertical_F","[8431.03125,12760.955078,1.1633]",-263.497,-100,0,0,[],1];call _cString;
_dat = ["Land_Pallet_vertical_F","[8433.288086,12762.203125,1.1633]",10.7328,-100,0,0,[],1];call _cString;
_dat = ["Land_Pallet_vertical_F","[8434.798828,12762.0576172,1.1633]",359.495,-100,0,0,[],1];call _cString;
_dat = ["Land_Pallet_vertical_F","[8435.408203,12758.990234,1.1633]",92.842,-100,0,0,[],1];call _cString;
_dat = ["Land_Pallet_vertical_F","[8435.555664,12760.50293,1.1633]",-620.593,-100,0,0,[],1];call _cString;
_dat = ["Land_CinderBlocks_F","[8455.229492,12764.992188,0.37963]",-495.505,-100,0,0,[],1];call _cString;
_dat = ["Land_FieldToilet_F","[8437.65332,12759.827148,0.0757577]",-495.505,-100,0,0,[],1];call _cString;
_dat = ["Land_Portable_generator_F","[8438.758789,12767.137695,0.110268]",4.7351,-100,0,0,[],1];call _cString;
_dat = ["Land_WoodenTable_large_F","[8443.591797,12760.957031,0.0673409]",4.7351,-100,0,0,[],1];call _cString;
_dat = ["Land_WoodenTable_large_F","[8443.834961,12763.889648,0.0353546]",4.7351,-100,0,0,[],1];call _cString;
_dat = ["Land_Axe_fire_F","[8443.916016,12764.398438,0.86532]",-220.265,-100,0,1,[],1];call _cString;
_dat = ["Land_Gloves_F","[8444.0771484,12764.299805,0.888048]",-220.265,-100,0,1,[],1];call _cString;
_dat = ["Land_PortableLight_double_F","[8450.204102,12756.407227,0.185184]",140.429,-100,0,0,[],1];call _cString;
_dat = ["Land_Workbench_01_F","[8443.4375,12757.288086,0.160775]",-529.71,-100,0,1,[],1];call _cString;
_dat = ["Land_HumanSkeleton_F","[8434.729492,12758.235352,0.0648148]",-579.394,-100,0,0,[],1];call _cString;
_dat = ["Land_HumanSkull_F","[8434.169922,12757.711914,0.110269]",-579.394,-100,0,0,[],1];call _cString;
_dat = ["Land_HumanSkull_F","[8433.71582,12757.6875,0.116162]",-579.394,-100,0,0,[],1];call _cString;
_dat = ["Land_HumanSkull_F","[8433.210938,12757.739258,0.12037]",-579.394,-100,0,0,[],1];call _cString;
_dat = ["Land_GarbageBags_F","[8453.118164,12764.942383,0.217172]",-669.394,-100,0,0,[],1];call _cString;
_dat = ["Land_Cargo10_blue_F","[8449.578125,12764.988281,0]",-714.394,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_Laptop","[8443.384766,12760.203125,0.930134]",-838.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_toughbook","[8443.665039,12763.320313,0.884679]",-658.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.356445,12760.757813,0.919757]",-658.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.541992,12761.0800781,0.917232]",-658.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.706055,12760.728516,0.927333]",-658.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.894531,12761.0371094,0.913865]",-658.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.232422,12761.205078,0.914706]",-658.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.550781,12760.90625,0.914706]",-703.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.27832,12761.0302734,0.914706]",-703.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.850586,12760.855469,0.914706]",-703.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.691406,12761.150391,0.914706]",-703.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.950195,12761.0800781,0.914706]",-703.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_money","[8443.416992,12761.270508,0.914706]",-703.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_moneya","[8443.980469,12760.386719,0.926491]",-703.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_moneya","[8443.1875,12761.808594,0.913865]",-703.725,-100,0,0,[],1];call _cString;
_dat = ["ARP_Objects_cardboardcratewater","[8446.585938,12756.9375,0.177784]",-714.015,-100,0,0,[],1];call _cString;
_dat = ["Land_HBarrierBig_F","[8436.639648,12773.208984,0]",5.93434,-100,0,1,[],1];call _cString;
_dat = ["Land_HBarrierBig_F","[8445.446289,12772.293945,0]",5.93434,-100,0,1,[],1];call _cString;
_dat = ["Land_HBarrierBig_F","[8454.31543,12771.37207,-0.0021553]",5.98995,-100,0,1,[],1];call _cString;
