private ["_obj","_dat","_cString","_adString"];

_obj = objNull;_dat = [];_adString = "CAN_COLLIDE";
_cString = {_obj = createVehicle [(_dat select 0), call compile (_dat select 1), [], 0, _adString];if((_dat select 4) == 0) then {_obj enableSimulation false};_obj setdir (_dat select 2);if((_dat select 3) == -100) then {_obj setposATL (call compile (_dat select 1))} else {_obj setposASL [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)]};if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)}};

_dat = ["Land_Offices_01_V1_F","[16093.600586,16933.167969,-9.53674e-007]",180,-100,0,0,[]];call _cString;
_dat = ["Land_Offices_01_V1_F","[16073.985352,17063.648438,0]",-1.70454,-100,0,0,[]];call _cString;
_dat = ["Land_Offices_01_V1_F","[16135.287109,17030.0605469,0]",60,-100,0,0,[]];call _cString;
_dat = ["Land_Offices_01_V1_F","[16135.542969,16964.158203,0]",-241.705,-100,0,0,[]];call _cString;
_dat = ["Land_i_Barracks_V1_dam_F","[15991.972656,16962.527344,0]",-5,-100,0,0,[]];call _cString;
_dat = ["Land_dp_smallFactory_F","[16071.457031,17095.560547,0]",-2.39898,-100,0,0,[]];call _cString;
_dat = ["Land_dp_smallFactory_F","[16169.765625,16969.767578,0]",77.601,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16052.454102,16958.433594,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16044.887695,16968.193359,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16029.0234375,16977.958984,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16058.0820313,17050.771484,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16071.220703,17051.119141,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16088.186523,17057.835938,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16115.871094,17037.535156,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16122.905273,17026.103516,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16137.0996094,17015.0546875,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16132.105469,16984.513672,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16125.918945,16972.587891,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16123.0859375,16954.773438,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16109.19043,16945.701172,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16095.49707,16945.976563,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampDecor_F","[16079.435547,16938.990234,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampHalogen_F","[16034.876953,17009.0117188,0]",213.868,-100,0,0,[]];call _cString;
_dat = ["Land_LampHalogen_F","[16035.30957,16985.949219,0]",144.121,-100,0,0,[]];call _cString;
_dat = ["Land_LampHalogen_F","[16080.526367,16976.652344,0]",269.121,-100,0,0,[]];call _cString;
_dat = ["Land_LampHalogen_F","[16094.231445,16981.277344,0]",204.121,-100,0,0,[]];call _cString;
_dat = ["Land_LampHalogen_F","[16099.801758,16995.015625,0]",159.121,-100,0,0,[]];call _cString;
_dat = ["Land_LampHalogen_F","[16091.131836,17009.496094,0]",114.121,-100,0,0,[]];call _cString;
_dat = ["Land_LampHalogen_F","[16073.0957031,17001.632813,0]",24.1207,-100,0,0,[]];call _cString;
_dat = ["Land_LampHalogen_F","[16071.584961,16988.390625,0]",-20.8793,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16092.9375,17055.544922,0]",-20.8793,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16053.263672,17049.0839844,0]",-20.8793,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16029.233398,16982.548828,0]",-35.8793,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16054.399414,16953.984375,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16074.744141,16940.166016,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16114.03125,16945.976563,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16118.861328,16952.0136719,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16135.987305,16990.134766,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16136.853516,17008.380859,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Palm_2","[16114.342773,17043.402344,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16023.851563,17005.935547,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16009.844727,17005.554688,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[15996.0195313,17005.625,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[15981.30957,17005.396484,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[15958.305664,17005.611328,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[15935.0810547,17004.324219,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[15940.865234,16984.287109,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[15959.12207,16983.792969,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[15981.417969,16985.457031,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16001.132813,16986.822266,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16009.892578,16986.908203,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16024.114258,16986.595703,0]",-100.879,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16074.0253906,17030.599609,0]",-45.8793,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16094.103516,17030.445313,0]",-45.8793,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16109.792969,17014.791016,0]",-45.8793,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16114.586914,16994.337891,0]",-45.8793,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16106.0390625,16978.261719,0]",-45.8793,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16088.582031,16968.691406,0]",-45.8793,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16065.891602,16975.0664063,0]",-45.8793,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16055.535156,16996.259766,0]",-45.8793,-100,0,0,[]];call _cString;
_dat = ["Paper_Mulberry","[16059.699219,17016.144531,0]",-45.8793,-100,0,0,[]];call _cString;
