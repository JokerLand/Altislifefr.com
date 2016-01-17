private ["_obj","_dat","_cString","_adString"];

_obj = objNull;_dat = [];_adString = "CAN_COLLIDE";
_cString = {_obj = createVehicle [(_dat select 0), call compile (_dat select 1), [], 0, _adString];if((_dat select 4) == 0) then {_obj enableSimulation false};_obj setdir (_dat select 2);if((_dat select 3) == -100) then {_obj setposATL (call compile (_dat select 1))} else {_obj setposASL [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)]};if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)}};

_dat = ["Land_WoodenTable_large_F","[8437.40918,12759.693359,0.102693]",95,-100,0,0,[]];call _cString;
_dat = ["Land_WoodenTable_large_F","[8439.571289,12759.504883,0.126263]",95,-100,0,0,[]];call _cString;
_dat = ["Land_ShelvesWooden_khaki_F","[8440.943359,12759.419922,0.126263]",5.12626,-100,0,0,[]];call _cString;
_dat = ["Land_ShelvesWooden_khaki_F","[8440.944336,12759.419922,1.123]",5.12627,-100,0,0,[]];call _cString;
_dat = ["MapBoard_seismic_F","[8442.780273,12757.107422,0]",150.126,-100,0,0,[]];call _cString;
_dat = ["Land_ChairPlastic_F","[8440.0595703,12760.333984,0]",125.126,-100,0,0,[]];call _cString;
_dat = ["Land_ChairPlastic_F","[8439.552734,12758.551758,0]",-84.8737,-100,0,0,[]];call _cString;
_dat = ["Land_OfficeChair_01_F","[8437.113281,12758.733398,0]",-159.874,-100,0,0,[]];call _cString;
_dat = ["Land_FlatTV_01_F","[8436.668945,12760.101563,0.952394]",-24.8737,-100,0,0,[]];call _cString;
_dat = ["Land_PCSet_01_case_F","[8437.616211,12759.763672,0.952394]",5.12627,-100,0,0,[]];call _cString;
_dat = ["Land_PCSet_01_mouse_F","[8437.3125,12759.756836,0.952394]",5.12627,-100,0,0,[]];call _cString;
_dat = ["Land_PCSet_01_keyboard_F","[8436.852539,12759.673828,0.952394]",-24.8737,-100,0,0,[]];call _cString;
_dat = ["Land_Printer_01_F","[8438.379883,12759.558594,0.952394]",5.12627,-100,0,0,[]];call _cString;
_dat = ["Land_Projector_01_F","[8439.696289,12759.787109,0.952394]",-354.874,-100,0,0,[]];call _cString;
_dat = ["Land_Tablet_01_F","[8437.179688,12759.464844,0.95639]",337.278,-100,0,0,[]];call _cString;
_dat = ["Land_HBarrier_1_F","[8455.257813,12765.0146484,0.342612]",322.278,-100,0,0,[]];call _cString;
_dat = ["Land_PressureWasher_01_F","[8452.369141,12765.0986328,0.0875421]",-190.253,-100,0,0,[]];call _cString;
_dat = ["Land_DataTerminal_01_F","[8450.19043,12765.916016,0.0875421]",-175.253,-100,0,0,[]];call _cString;
_dat = ["Land_DataTerminal_01_F","[8450.138672,12765.336914,0.0875421]",-175.253,-100,0,0,[]];call _cString;
_dat = ["Land_Device_assembled_F","[8446.495117,12761.955078,0.0875421]",-262.917,-100,0,0,[]];call _cString;
_dat = ["Land_Bucket_F","[8448.574219,12760.874023,1.41549]",-262.917,-100,0,0,[]];call _cString;
_dat = ["Land_CanisterFuel_F","[8444.84082,12761.144531,0.102131]",-352.917,-100,0,0,[]];call _cString;
_dat = ["Land_CanisterFuel_F","[8444.831055,12760.980469,0.102131]",-352.917,-100,0,0,[]];call _cString;
_dat = ["Land_CanisterFuel_F","[8444.888672,12760.754883,0.102131]",-377.917,-100,0,0,[]];call _cString;
_dat = ["Land_CanisterFuel_F","[8445.158203,12760.957031,0.102131]",-272.917,-100,0,0,[]];call _cString;
_dat = ["Land_CanisterOil_F","[8446.430664,12762.165039,1.21578]",-272.917,-100,0,0,[]];call _cString;
_dat = ["Land_CanisterPlastic_F","[8445.955078,12762.129883,1.21578]",-222.917,-100,0,0,[]];call _cString;
_dat = ["Land_Canteen_F","[8446.889648,12761.761719,1.21578]",-222.917,-100,0,0,[]];call _cString;
_dat = ["Land_FireExtinguisher_F","[8448.0380859,12760.753906,0.0527343]",-352.917,-100,0,0,[]];call _cString;
_dat = ["Land_Shovel_F","[8444.839844,12762.150391,1.44456]",-172.917,-100,0,0,[]];call _cString;
_dat = ["Land_Graffiti_02_F","[8431.486328,12766.489258,1.44456]",-264.318,-100,0,0,[]];call _cString;
_dat = ["Land_Leaflet_04_F","[8431.373047,12765.421875,1.44456]",-264.318,-100,0,0,[]];call _cString;
_dat = ["Land_Leaflet_04_F","[8431.269531,12764.453125,1.44456]",-264.318,-100,0,0,[]];call _cString;
_dat = ["Land_Leaflet_04_F","[8444.430664,12762.191406,0.793564]",-264.318,-100,0,0,[]];call _cString;
_dat = ["Land_Ammobox_rounds_F","[8445.34668,12761.488281,1.23624]",-369.318,-100,0,0,[]];call _cString;
_dat = ["Land_FoodContainer_01_F","[8447.512695,12760.537109,0.0827883]",-369.318,-100,0,0,[]];call _cString;
_dat = ["Land_Laptop_unfolded_scripted_F","[8446.384766,12761.632813,1.21598]",-184.318,-100,0,0,[]];call _cString;
_dat = ["Land_MobilePhone_old_F","[8447.788086,12761.28125,1.17642]",-184.318,-100,0,0,[]];call _cString;
_dat = ["Land_PalletTrolley_01_khaki_F","[8447.84082,12765.643555,0.0744437]",-219.318,-100,0,0,[]];call _cString;
_dat = ["Land_CargoBox_V1_F","[8447.495117,12765.332031,0.192761]",-219.318,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_blue_F","[8438.912109,12766.161133,0.192761]",-174.444,-100,0,0,[]];call _cString;
_dat = ["Land_Cargo20_blue_F","[8438.96875,12766.152344,0.192761]",-354.444,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[8442.8125,12766.644531,-3.90126]",-354.444,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[8455.753906,12763.365234,-3.90126]",-354.444,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[8450.248047,12756.352539,-3.90126]",-324.444,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[8433.418945,12759.53125,-3.90126]",-324.444,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_F","[8444.500977,12757.697266,0.219672]",-404.444,-100,0,0,[]];call _cString;
_dat = ["Land_Pallet_vertical_F","[8446.90332,12756.301758,0.219672]",-354.444,-100,0,0,[]];call _cString;
_dat = ["Land_Pallets_F","[8446.682617,12757.623047,0.219672]",-404.444,-100,0,0,[]];call _cString;
_dat = ["Land_Scaffolding_F","[8442.916992,12754.915039,0.219672]",-444.444,-100,0,0,[]];call _cString;
_dat = ["Land_FloodLight_F","[8431.0166016,12763.288086,5.57226]",-179.444,-100,0,0,[]];call _cString;
_dat = ["Land_FloodLight_F","[8456.397461,12760.679688,5.93842]",-359.444,-100,0,0,[]];call _cString;
_dat = ["Land_PortableLight_double_F","[8451.341797,12763.980469,0.0935059]",60.556,-100,0,0,[]];call _cString;
_dat = ["Land_PortableLight_double_F","[8443.624023,12760.342773,0.159055]",-114.444,-100,0,0,[]];call _cString;
_dat = ["Land_WeldingTrolley_01_F","[8448.833984,12760.264648,0.0935041]",-399.444,-100,0,0,[]];call _cString;
_dat = ["Land_Workbench_01_F","[8439.171875,12764.395508,0.0935041]",-354.444,-100,0,0,[]];call _cString;
_dat = ["RoadCone_F","[8437.544922,12764.875977,0.0935041]",-354.444,-100,0,0,[]];call _cString;
_dat = ["RoadCone_F","[8440.810547,12764.478516,0.0935041]",-354.444,-100,0,0,[]];call _cString;
_dat = ["RoadBarrier_F","[8443.945313,12762.349609,0.0935041]",-443.118,-100,0,0,[]];call _cString;
_dat = ["BluntStone1","[8448.633789,12753.274414,0]",-398.118,-100,0,0,[]];call _cString;
_dat = ["BluntStone1","[8452.151367,12750.601563,0]",-482.992,-100,0,0,[]];call _cString;
_dat = ["BluntStone1","[8455.402344,12752.839844,0]",-537.992,-100,0,0,[]];call _cString;
_dat = ["BluntStone1","[8429.905273,12769.015625,0]",-302.992,-100,0,0,[]];call _cString;
_dat = ["BluntStone1","[8427.539063,12765.681641,0]",-367.992,-100,0,0,[]];call _cString;
_dat = ["BluntStone1","[8429.384766,12762.358398,0]",-427.992,-100,0,0,[]];call _cString;
_dat = ["Ficus_Bush_3","[8451.128906,12752.078125,0]",-427.992,-100,0,0,[]];call _cString;
_dat = ["Ficus_Bush_3","[8428.566406,12760.944336,0]",-467.992,-100,0,0,[]];call _cString;
_dat = ["Cane2","[8446.820313,12771.314453,0]",-647.992,-100,0,0,[]];call _cString;
_dat = ["Cane1","[8442.158203,12744.984375,0]",-647.992,-100,0,0,[]];call _cString;
_dat = ["Cane1","[8445.482422,12747.651367,0]",-647.992,-100,0,0,[]];call _cString;
_dat = ["Cane1","[8449.823242,12746.336914,0]",-647.992,-100,0,0,[]];call _cString;
_dat = ["Cane1","[8430.342773,12754.981445,0]",-647.992,-100,0,0,[]];call _cString;