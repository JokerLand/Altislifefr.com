private ["_obj","_dat","_cString","_adString"];

_obj = objNull;_dat = [];_adString = "CAN_COLLIDE";
_cString = {_obj = createVehicle [(_dat select 0), call compile (_dat select 1), [], 0, _adString];if((_dat select 4) == 0) then {_obj enableSimulation false};_obj setdir (_dat select 2);if((_dat select 3) == -100) then {_obj setposATL (call compile (_dat select 1))} else {_obj setposASL [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)]};if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)};if(count _dat > 7) then {if (_dat select 7 == 1) then {_obj allowDamage false;} else {_obj allowDamage true;};};};

_dat = ["Land_CncWall4_F","[9197.274414,11502.8125,0]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9202.450195,11502.681641,0]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9218.101563,11502.285156,0]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9223.321289,11502.15332,0]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9228.521484,11502.0214844,0]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9233.732422,11501.889648,0]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9237.518555,11499.929688,-0.0363846]",231.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9240.404297,11495.654297,-0.0363846]",241.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9242.487305,11490.930664,-0.0363846]",251.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9243.512695,11485.90332,-0.0363846]",266.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9243.834961,11480.713867,-0.0363846]",266.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9244.15625,11475.527344,-0.141609]",266.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9244.483398,11470.255859,0.0233841]",266.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9244.811523,11464.962891,-0.116356]",266.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9245.12207,11459.822266,-0.138237]",266.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9245.449219,11454.5,-0.482513]",266.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9244.416016,11449.869141,-0.166855]",296.452,-100,0,0,[],1];call _cString;
_dat = ["Land_i_Barracks_V1_F","[9181.0283203,11447.791992,0]",272.784,-100,0,1,[],1];call _cString;
_dat = ["Land_BarGate_F","[9212.609375,11441.329102,0]",337.033,-100,0,0,[],1];call _cString;
_dat = ["Land_Cargo_Tower_V1_No3_F","[9218.243164,11421.117188,0]",18.548,-100,0,0,[],1];call _cString;
_dat = ["Land_Cargo_Tower_V1_No1_F","[9194.148438,11429.579102,0]",18.548,-100,0,0,[],1];call _cString;
_dat = ["Land_HelipadCircle_F","[9190.464844,11475.707031,0]",133.548,-100,0,0,[],1];call _cString;
_dat = ["Land_HelipadSquare_F","[9196.929688,11448.259766,0]",3.6743,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9237.375977,11435.720703,-0.16433]",296.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9235.0195313,11430.986328,-0.16433]",296.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9232.702148,11426.329102,-0.63739]",296.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9230.367188,11421.636719,-0.547325]",296.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9228.0341797,11416.949219,-0.160965]",296.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9225.71875,11412.285156,-0.16433]",296.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9222.291016,11410.835938,0.111763]",16.894,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9217.285156,11412.356445,-0.511971]",16.894,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9212.295898,11413.87207,-0.340256]",16.894,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9206.994141,11414.364258,-0.16433]",354.672,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9205.613281,11431.949219,-0.037796]",296.764,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9203.277344,11427.344727,-0.0279617]",296.905,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9200.926758,11422.710938,-0.0312271]",296.777,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9198.365234,11418.165039,-0.0369186]",301.717,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9195.743164,11413.888672,-0.00643921]",301.486,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9192.830078,11409.65332,-0.0138474]",306.073,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9189.667969,11405.44043,-0.108032]",306.312,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9186.660156,11401.432617,-0.0150452]",305.498,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9183.563477,11397.307617,-0.0130615]",306.69,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9180.541016,11393.28125,0.269981]",306.065,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9186.755859,11388.645508,0.0719147]",126.903,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9189.825195,11392.757813,0.0378952]",126.611,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9192.947266,11396.94043,0.0436249]",126.632,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9196.0351563,11401.0771484,0.0584183]",126.132,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9198.911133,11405.381836,0.069603]",121.264,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9201.604492,11409.736328,0.0396576]",121.376,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9204.524414,11414.0820313,0.0377197]",124.545,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9207.205078,11418.375,0.018074]",119.755,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9209.609375,11422.892578,0.0173264]",116.765,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9211.857422,11427.667969,-0.00260162]",112.05,-100,0,1,[],1];call _cString;
_dat = ["Land_Cargo_Tower_V1_F","[9239.525391,11492.516602,-0.0125656]",334.432,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9207.65918,11436.678711,-0.0390244]",290.265,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9192.0644531,11503.00488281,-0.457077]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9186.814453,11503.204102,-0.0690231]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9181.600586,11503.208984,-0.141411]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9176.382813,11503.34082,0]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9173.818359,11500.990234,0.16835]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9173.605469,11495.776367,-0.0244141]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9173.392578,11490.561523,-0.20118]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9173.179688,11485.338867,-0.022728]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9172.966797,11480.117188,0.0294647]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9172.754883,11474.922852,0.0395584]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9172.541992,11469.713867,0.0016861]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9172.329102,11464.494141,-0.0850143]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9172.116211,11459.286133,-0.0294647]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9171.90332,11454.0693359,0.0286179]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9171.69043,11448.863281,0]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9171.477539,11443.635742,0]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9171.264648,11438.410156,0]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9171.0517578,11433.193359,0]",92.3359,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9173.162109,11429.745117,-0.0112228]",22.5186,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9178.0361328,11427.757813,0]",22.399,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9182.885742,11425.787109,0]",22.399,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9187.724609,11423.791992,-0.0860291]",23.002,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9192.382813,11421.873047,-0.0673828]",23.3254,-100,0,1,[],1];call _cString;
_dat = ["Land_Cargo_Tower_V1_F","[9179.632813,11496.407227,0.361977]",272.664,-100,0,0,[],1];call _cString;
_dat = ["Land_Cargo_HQ_V1_F","[9234.227539,11461.951172,0]",-3.69877,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9213.799805,11432.546875,-0.00232697]",112.251,-100,0,1,[],1];call _cString;
_dat = ["Land_BagBunker_Small_F","[9218.90918,11441.280273,-0.0875092]",111.132,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9215.729492,11437.301758,0.00491333]",112.085,-100,0,1,[],1];call _cString;
_dat = ["CamoNet_BLUFOR_Curator_F","[9224.982422,11486.178711,0]",68.548,-100,0,0,[],1];call _cString;
_dat = ["Land_CratesWooden_F","[9224.543945,11485.941406,0]",167.361,-100,0,0,[],1];call _cString;
_dat = ["Land_Sacks_goods_F","[9226.852539,11484.577148,0]",214.268,-100,0,0,[],1];call _cString;
_dat = ["Land_WoodenCart_F","[9225.606445,11480.631836,0]",54.2676,-100,0,0,[],1];call _cString;
_dat = ["Land_Mil_WiredFence_Gate_F","[9212.529297,11439.0283203,0]",175.707,-100,0,0,[],1];call _cString;
_dat = ["Land_Pallet_MilBoxes_F","[9225.398438,11488.564453,0]",337.967,-100,0,0,[],1];call _cString;
_dat = ["Land_PaperBox_open_full_F","[9224.416016,11490.936523,0]",337.967,-100,0,0,[],1];call _cString;
_dat = ["MapBoard_seismic_F","[9221.331055,11492.119141,0]",359.659,-100,0,0,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9170.1875,11384.250977,-0.293264]",50.6893,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9169.0449219,11383.310547,-0.299017]",50.7954,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9167.861328,11382.341797,-0.301369]",50.689,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9167.101563,11381.860352,-0.247124]",52.454,-100,0,1,[],1];call _cString;
_dat = ["Land_BagBunker_Small_F","[9168.959961,11383.31543,2.15804]",51.184,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9170.186523,11381.507813,0.103508]",-37.4693,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9167.429688,11384.917969,0.100464]",142.596,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall1_F","[9171.695313,11383.046875,0.0867004]",232.531,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall1_F","[9169.259766,11385.854492,0.0412369]",232.451,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9183.545898,11384.550781,0.0430603]",129.6,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9179.889648,11380.797852,-0.0383911]",139.611,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9175.71582,11377.538086,-0.0331879]",144.572,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9177.12793,11389.34082,0.181122]",315.915,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9173.383789,11385.716797,0.176888]",315.759,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9171.361328,11385.203125,-0.295813]",45.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9172.44043,11386.238281,-0.295813]",45.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9173.566406,11387.325195,-0.295813]",45.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9174.672852,11388.397461,-0.295813]",45.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9175.780273,11389.470703,-0.295813]",45.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9176.84082,11390.482422,-0.295813]",40.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9177.844727,11391.641602,-0.295813]",40.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9178.866211,11392.821289,-0.295813]",40.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9179.764648,11393.959961,-0.295813]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9180.65332,11395.166992,-0.295813]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9181.526367,11396.375977,-0.295813]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9182.393555,11397.577148,-0.295813]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9183.222656,11398.726563,-0.295813]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9184.116211,11399.961914,-0.295813]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9184.998047,11401.180664,-0.295813]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9185.868164,11402.351563,-0.295813]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9186.772461,11403.577148,-0.295813]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9187.645508,11404.573242,-0.248663]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9188.514648,11405.776367,-0.225675]",35.8521,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9189.405273,11406.904297,-0.248616]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9190.318359,11408.164063,-0.248616]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9191.232422,11409.399414,-0.248616]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9192.12793,11410.608398,-0.248616]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9193.0273438,11411.824219,-0.248616]",35.707,-100,0,1,[],1];call _cString;
_dat = ["Land_CncShelter_F","[9193.929688,11413.0449219,-0.229544]",36.4637,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9194.509766,11417.942383,0.0942761]",102.399,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9192.676758,11413.229492,0.0942761]",124.293,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9189.705078,11409.0800781,0.0942761]",127.26,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9186.554688,11404.939453,0.0942761]",127.26,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9183.508789,11400.935547,0.0942761]",127.26,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9180.59668,11396.782227,0.0942761]",125.303,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9177.374023,11392.754883,0.0942761]",130.934,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9173.813477,11388.858398,0.111664]",135.723,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall1_F","[9171.400391,11386.515625,0.0412369]",142.451,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall1_F","[9170.40332,11385.839844,0.0890274]",141.911,-100,0,1,[],1];call _cString;
_dat = ["Land_GH_Stairs_F","[9196.674805,11416.765625,-2.08182]",31.4149,-100,0,1,[],1];call _cString;
_dat = ["Land_GH_Stairs_F","[9195.835938,11417.260742,-2.06875]",31.5903,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall1_F","[9169.0371094,11385.488281,0.0412369]",327.451,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall1_F","[9171.283203,11382.943359,0.146149]",142.46,-100,0,1,[],1];call _cString;
_dat = ["Land_BagFence_Long_F","[9216.925781,11499.455078,0]",362.451,-100,0,0,[],1];call _cString;
_dat = ["Land_BagFence_Long_F","[9219.953125,11499.325195,0]",362.451,-100,0,0,[],1];call _cString;
_dat = ["Land_BagFence_Long_F","[9223.03125,11499.193359,0]",362.451,-100,0,0,[],1];call _cString;
_dat = ["Land_BagFence_Long_F","[9226.078125,11499.0625,0]",362.451,-100,0,0,[],1];call _cString;
_dat = ["Land_BagFence_Long_F","[9228.96875,11498.30957,0]",387.451,-100,0,0,[],1];call _cString;
_dat = ["Land_BagFence_Long_F","[9231.639648,11496.769531,0]",32.451,-100,0,0,[],1];call _cString;
_dat = ["Land_Mil_WallBig_4m_F","[9230.275391,11491.608398,0]",427.451,-100,0,0,[],1];call _cString;
_dat = ["Land_Mil_WallBig_4m_F","[9231.810547,11487.912109,0]",427.451,-100,0,0,[],1];call _cString;
_dat = ["Land_Mil_WallBig_4m_F","[9233.345703,11484.21582,0]",67.451,-100,0,0,[],1];call _cString;
_dat = ["Land_GH_Stairs_F","[9204.243164,11435.678711,0.564804]",293.043,-100,0,0,[],1];call _cString;
_dat = ["Land_GH_Platform_F","[9210.749023,11432.892578,4.68813]",293.106,-100,0,0,[],1];call _cString;
_dat = ["Land_GH_Stairs_F","[9217.163086,11430.196289,0.497475]",112.841,-100,0,0,[],1];call _cString;
_dat = ["Land_GH_Stairs_F","[9204.826172,11437.0498047,0.478104]",293.043,-100,0,0,[],1];call _cString;
_dat = ["Land_GH_Platform_F","[9211.333984,11434.263672,4.58038]",293.106,-100,0,0,[],1];call _cString;
_dat = ["Land_GH_Stairs_F","[9217.738281,11431.5625,0.473064]",112.841,-100,0,0,[],1];call _cString;
_dat = ["Land_Concrete_SmallWall_8m_F","[9212.759766,11434.241211,6.01852]",22.8536,-100,0,0,[],1];call _cString;
_dat = ["Land_Concrete_SmallWall_4m_F","[9208.461914,11436.0585938,6.04802]",22.8536,-100,0,0,[],1];call _cString;
_dat = ["Land_Concrete_SmallWall_4m_F","[9207.505859,11433.737305,6.1525]",23.1061,-100,0,0,[],1];call _cString;
_dat = ["Land_Concrete_SmallWall_4m_F","[9213.451172,11431.201172,6.1525]",23.1061,-100,0,0,[],1];call _cString;
_dat = ["Land_Wall_IndCnc_Pole_F","[9207.84668,11436.277344,2.06092]",21.9066,-100,0,0,[],1];call _cString;
_dat = ["Land_Wall_IndCnc_Pole_F","[9207.09375,11434.0849609,2.16867]",21.9066,-100,0,0,[],1];call _cString;
_dat = ["Land_Wall_IndCnc_Pole_F","[9213.0136719,11431.539063,2.17119]",21.9066,-100,0,0,[],1];call _cString;
_dat = ["Land_Wall_IndCnc_Pole_F","[9213.925781,11433.770508,2.08618]",21.9066,-100,0,0,[],1];call _cString;
_dat = ["Land_BagFence_Long_F","[9210.536133,11432.430664,4.74862]",23.1061,-100,0,0,[],1];call _cString;
_dat = ["Land_BagFence_Long_F","[9210.536133,11432.430664,5.10744]",23.1061,-100,0,0,[],1];call _cString;
_dat = ["Land_RampConcrete_F","[9212.516602,11501.53418,0.139732]",190.379,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9207.71875,11502.547852,0]",181.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9210.957031,11505.240234,0]",99.5075,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9215.706055,11505.139648,0]",-80.4293,-100,0,0,[],1];call _cString;
_dat = ["Land_CncBarrierMedium4_F","[9213.90918,11508.388672,0]",-170.492,-100,0,1,[],1];call _cString;
_dat = ["Land_RampConcrete_F","[9234.65625,11444.336914,-0.482323]",305.367,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9242.0820313,11445.178711,-0.166855]",296.452,-100,0,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9240.62793,11437.25,-0.521232]",391.452,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9243.0419922,11441.454102,-0.419777]",211.802,-100,0,1,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9243.649414,11438.217773,-0.618034]",298.8,-100,0,1,[],1];call _cString;
_dat = ["Land_Sign_WarningMilAreaSmall_F","[9166.550781,11381.453125,0]",53.0051,-100,0,1,[],1];call _cString;
_dat = ["Land_Flush_Light_green_F","[9190.589844,11475.630859,0]",53.0051,-100,0,0,[],1];call _cString;
_dat = ["Land_Flush_Light_green_F","[9193.988281,11471.120117,0]",53.0051,-100,0,0,[],1];call _cString;
_dat = ["Land_Flush_Light_green_F","[9187.0361328,11480.347656,0]",53.0051,-100,0,0,[],1];call _cString;
_dat = ["Land_Flush_Light_green_F","[9195.0742188,11479.0449219,0]",53.0051,-100,0,0,[],1];call _cString;
_dat = ["Land_Flush_Light_green_F","[9185.898438,11472.180664,0]",53.0051,-100,0,0,[],1];call _cString;
_dat = ["Cane2","[9242.418945,11439.15332,0.402931]",310.112,-100,0,1,[],1];call _cString;
_dat = ["Cane2","[9213.991211,11509.424805,0.0503006]",263.095,-100,0,1,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9185.323242,11501.823242,0]",224.268,-100,1,0,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9235.266602,11500.532227,0]",313.283,-100,1,0,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9244.84375,11452.568359,0]",23.2828,-100,1,0,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9206.848633,11415.526367,0]",318.283,-100,1,0,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9172.178711,11431.538086,0]",163.283,-100,1,0,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9186.77832,11450.259766,0]",128.283,-100,1,0,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9213.96875,11406.0703125,0.790932]",117.985,-100,1,1,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9190.107422,11417.564453,0.115677]",123.272,-100,1,1,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9189.694336,11390.350586,0]",327.361,-100,1,0,[],1];call _cString;
_dat = ["Land_LampHalogen_F","[9230.938477,11424.538086,0]",67.3613,-100,1,0,[],1];call _cString;
_dat = ["Land_CncWall4_F","[9171.571289,11374.40625,-0.0323944]",140.965,-100,0,1,[],1];call _cString;
