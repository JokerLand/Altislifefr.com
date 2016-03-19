// Mapping by Kamikaz for AltisLifeFR.com
private ["_obj","_dat","_cString","_adString"];

_obj = objNull;_dat = [];_adString = "CAN_COLLIDE";
_cString = 
{
	_obj = createVehicle [(_dat select 0), [0,0,0], [], 0, _adString];
	if((_dat select 4) == 0) then {_obj enableSimulation false};
	if((_dat select 8) == 0) then {_obj allowDamage false};
	_obj setdir (_dat select 2);
	if((_dat select 3) == -100) then
	{
		_obj setposATL (call compile (_dat select 1));
		if((_dat select 5) == 0) then {_obj setVectorUp [0,0,1]} else {_obj setVectorUp (surfacenormal (getPosATL _obj))};
	}
	else
	{
		_obj setposworld [((call compile (_dat select 1)) select 0),((call compile (_dat select 1)) select 1),(_dat select 3)];
		[_obj,((_dat select 7) select 0),((_dat select 7) select 1)] call BIS_fnc_setPitchBank;
	};
	if(count (_dat select 6) > 0) then {{call _x} foreach (_dat select 6)};
};

_dat = ["Land_WaterTank_F","[8448.824219,12765.628906,0.29958]",94.2929,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_WaterTank_F","[8445.560547,12765.995117,0.301346]",90.8207,-100,0,0,[],[0,0],0];call _cString;
_dat = ["CargoNet_01_barrels_F","[8447.19043,12765.814453,0]",92.2096,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Ficus_Bush_1","[8420.895508,12747.579102,0]",0,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_Cargo20_brick_red_F","[8441.871094,12742.954102,0.00187683]",275.282,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_Cargo_House_V1_F","[8414.753906,12766.746094,0.607224]",273.051,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_Device_disassembled_F","[8449.4375,12761.253906,0.392933]",275.871,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_PressureWasher_01_F","[8444.257813,12757.169922,0.217381]",5.87162,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_PaperBox_closed_F","[8437.21582,12758.144531,0.142349]",95.872,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_Coil_F","[8455.993164,12743.40332,0]",95.8713,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_GarbageBarrel_01_F","[8446.394531,12756.913086,0]",95.8713,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_Bench_F","[8441.953125,12757.439453,0.233166]",95.8713,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_RattanChair_01_F","[8442.496094,12766.984375,0]",5.87127,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_PressureWasher_01_F","[8453.330078,12765.694336,0.129631]",188.144,-100,0,0,[],[0,0],0];call _cString;
_dat = ["BluntStone_Erosion","[8423.961914,12765.380859,0.274216]",187.827,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_WeldingTrolley_01_F","[8440.745117,12766.987305,0.132996]",273.914,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_CampingChair_V1_F","[8434.166016,12761.586914,0.156566]",363.914,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_CampingChair_V1_F","[8435.078125,12759.868164,0.156567]",93.9142,-100,0,0,[],[0,0],0];call _cString;
_dat = ["WaterPump_01_forest_F","[8430.564453,12746.520508,1.52588e-005]",3.91471,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Oleander_White","[8454.239258,12768.235352,0]",275.303,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Oleander_White","[8447.576172,12769.0839844,0]",275.303,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Oleander_White","[8435.15625,12769.901367,0]",275.303,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Oleander_White","[8440.192383,12769.734375,0]",275.303,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Oleander2","[8419.908203,12754.632813,0]",275.303,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_HBarrier_Big_F","[8453.347656,12771.761719,-0.00602341]",8.16493,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_HBarrier_Big_F","[8444.780273,12772.68457,0.0321045]",8.19084,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_HBarrier_Big_F","[8436.233398,12773.72168,0.107662]",8.67608,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_Razorwire_F","[8436.748047,12773.652344,1.26684]",7.553,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_Razorwire_F","[8445.285156,12772.522461,1.26684]",7.553,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_Razorwire_F","[8452.943359,12771.651367,1.26684]",6.543,-100,0,0,[],[0,0],0];call _cString;
_dat = ["BluntStone1","[8428.349609,12770.692383,0]",0,-100,0,1,[],[0,0],0];call _cString;
_dat = ["BluntStone1","[8426.874023,12759.962891,0.019558]",359.945,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Ficus_Bush_3","[8459.761719,12750.260742,0]",0,-100,0,0,[],[0,0],0];call _cString;
_dat = ["BluntStone_Erosion","[8450.510742,12751.571289,0.289787]",90.0002,-100,0,1,[],[0,0],0];call _cString;
_dat = ["MapBoard_altis_F","[8455.782227,12765.120117,0.446968]",45,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_Metal_rack_F","[8439.229492,12757.296875,0.139801]",183.914,-100,0,1,[],[0,0],0];call _cString;
_dat = ["Land_PortableLight_single_F","[8455.666992,12761.293945,0.41835]",93.914,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_PortableLight_single_F","[8436.189453,12761.722656,0.124579]",273.914,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_PortableLight_single_F","[8439.688477,12767.206055,0.144783]",3.91401,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Land_MobileScafolding_01_F","[8444.24707,12755.382813,0.0101013]",3.91401,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Cane1","[8462.606445,12759.248047,2.34091]",3.91401,-100,0,0,[],[0,0],0];call _cString;
_dat = ["Ficus_Bush_3","[8428.0712891,12778.0380859,0.370369]",3.91401,-100,0,0,[],[0,0],0];call _cString;
