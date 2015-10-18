// Created by SMC v2.1.3 (for Arma 3)
// 10/18/15 23:41:04

// --Markers--
createMarker ["safezone_1_1_4_1",[13776.383,18929.342,20.294035]];
	"safezone_1_1_4_1" setMarkerShape "ELLIPSE";
	"safezone_1_1_4_1" setMarkerSize [30,30];
	"safezone_1_1_4_1" setMarkerColor "ColorGreen";
// --Vehicles/Objects--
_veh0 = createVehicle ["Land_LampHalogen_F",[13778.172,18905.521,0],[],0,"CAN_COLLIDE"];
		_veh0 setFormDir 90.87009;
		_veh0 setDir 90.87009;
	_veh0 allowDamage false; _veh0 allowDamage false; _veh0 setVectorUp [0,0,1];
_veh1 = createVehicle ["Land_LampHalogen_F",[13801.554,18928.25,0],[],0,"CAN_COLLIDE"];
		_veh1 setFormDir 356.04065;
		_veh1 setDir 356.04065;
	_veh1 allowDamage false; _veh1 allowDamage false; _veh1 setVectorUp [0,0,1];
_veh2 = createVehicle ["Land_LampHalogen_F",[13778.116,18905.49,0],[],0,"CAN_COLLIDE"];
		_veh2 setFormDir 90.87009;
		_veh2 setDir 90.87009;
	_veh2 allowDamage false; _veh2 allowDamage false; _veh2 setVectorUp [0,0,1];
_veh3 = createVehicle ["Land_LampHalogen_F",[13801.498,18928.217,0],[],0,"CAN_COLLIDE"];
		_veh3 setFormDir 356.04065;
		_veh3 setDir 356.04065;
	_veh3 allowDamage false; _veh3 allowDamage false; _veh3 setVectorUp [0,0,1];
_veh4 = createVehicle ["Land_Tyres_F",[13759.597,18938.576,0],[],0,"CAN_COLLIDE"];
		_veh4 setFormDir 87.43301;
		_veh4 setDir 87.43301;
_veh5 = createVehicle ["GeK_Garages",[13778.829,18945.432,0],[],0,"NONE"];
		_veh5 setFormDir 50.086;
		_veh5 setDir 50.086;
	_veh5 setPos [ getPos _veh5 select 0, getPos _veh5 select 1, -0.35]; _veh5 setVectorUp [0,0,1]; _veh5 enableSimulation false; _veh5 allowDamage false;
_veh6 = createVehicle ["Land_Scrap_MRAP_01_F",[13766.733,18944.658,0],[],0,"CAN_COLLIDE"];
		_veh6 setFormDir 139.04501;
		_veh6 setDir 139.04501;
	_veh6 setPosATL [13766.733,18944.658,0.30000001];
_veh7 = createVehicle ["Land_ScrapHeap_1_F",[13770.411,18940.357,0],[],0,"CAN_COLLIDE"];
		_veh7 setFormDir 319.66602;
		_veh7 setDir 319.66602;
	_veh7 setPosATL [13770.411,18940.357,0.30000001];
_veh8 = createVehicle ["Land_DieselGroundPowerUnit_01_F",[13763.372,18934.018,0],[],0,"CAN_COLLIDE"];
		_veh8 setFormDir 319.66602;
		_veh8 setDir 319.66602;
	_veh8 setPosATL [13763.372,18934.018,0.30000001];
_veh9 = createVehicle ["Land_ScrapHeap_1_F",[13765.001,18939.486,0],[],0,"CAN_COLLIDE"];
		_veh9 setFormDir 319.66602;
		_veh9 setDir 319.66602;
	_veh9 setPosATL [13765.001,18939.486,0.30000001];
