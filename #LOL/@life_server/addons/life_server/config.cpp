class DefaultEventhandlers;
class CfgPatches 
{
	class life_server
	{
		units[] = {"C_man_1"};
		weapons[] = {};
		requiredAddons[] = {"A3_Data_F","A3_Soft_F","A3_Soft_F_Offroad_01","A3_Characters_F"};
		fileName = "life_server.pbo";
		author[]= {"TAW_Tonic"}; 
	};
};

class CfgFunctions
{
	class BIS_Overwrite
	{
		tag = "BIS";
		class MP
		{
			file = "\life_server\Functions\MP";
			class initMultiplayer{};
			class call{};
			class spawn{};
			class execFSM{};
			class execVM{};
			class execRemote{};
			class addScore{};
			class setRespawnDelay{};
			class onPlayerConnected{};
			class initPlayable{};
			class missionTimeLeft{};
		};
	};
	
	class MySQL_Database
	{
		tag = "DB";
		class MySQL
		{
			file = "\life_server\Functions\MySQL";
			class numberSafe {};
			class mresArray {};
			class queryRequest{};
			class asyncCall{};
			class insertRequest{};
			class updateRequest{};
			class mresToArray {};
			class repaintVehicle {};
			class insertVehicle {};
			class bool{};
			class mresString {};
			class updatePartial {};
			class updateStats {};
		};
	};
	
	class Life_System
	{
		tag = "life";
		class Wanted_Sys
		{
			file = "\life_server\Functions\WantedSystem";
			class wantedFetch {};
			class wantedPerson {};
			class wantedBounty {};
			class wantedTicket {};
			class wantedPardon {};
			class wantedRemove {};
			class wantedAdd {};
			class wantedPunish {};
		};
		
		class Debug
		{
			file = "\life_server\debug";
			class clientToServerLog {preInit=1;};
			class serverLog {preInit=1;};
			class adminLog {preInit=1;};
		};
		
		class Jail_Sys
		{
			file = "\life_server\Functions\Jail";
			class jailSys {};
			class jailTimer {};
			class jailPlayer {};
		};
		
		class Client_Code
		{
			file = "\life_server\Functions\Client";
		};

		class Misc
		{
			file = "\life_server\Functions\Misc";
			class forceRuleMenu {};
			class talentInfo {};
			class talentMenu {};
			class addTalentRow {};
			class ruleInfo {};
			class ruleMenu {};
			class addRuleRow {};
			class forceRuleInfo {};
			class adrenaline {};
			class drinkBeer {};
			class drinkMoonshine {};
			class drinkWhiskey {};
			class drinkWine {};
			class breathalyzer {};
			class updateRunnedDistance {};
			class updateDrivedDistance {};
			class addStatPoint {};
			class updateStates {};
			class updateFatigue {};
			class updateSurvTime {};
			class reinitSurvTime {};
			class gatherRabbit {};
			class lockPickMen {};
			class checkTalent {};
			class handleHackQuest {};
			class activateNitro {};
			class variables {};
			class checkDrink {};
			class insureVehicle {};
			class insureConfirm {};
			class p_updateMenu {};
			class track {};
			//class radarFlash {};
			class initSafeCode {postInit=1;};
		};
	};
	
	class TON_System
	{
		tag = "TON";
		class Systems
		{
			file = "\life_server\Functions\Systems";
			class managesc {};
			class cleanup {};
			class huntingZone {};
			class getID {};
			class vehicleCreate {};
			class vehicleDead {};
			class spawnVehicle {};
			class getVehicles {};
			class vehicleStore {};
			class vehicleDelete {};
			class spikeStrip {};
			class rabbitsHandle {};
			class logIt {};
			class federalUpdate {};
			class chopShopSell {};
			class clientDisconnect {};
			class vehicleRepaint {};
			class cleanupRequest {};
			class loadBounties {};
			class saveBounties {};
			class jailStore {};
			class ticketStore {};
			class wantedFetchRequest {};
			class noteStore {};
			class wantedStore {};
			class delInfos {};
		};
		
		class Housing
		{
			file = "\life_server\Functions\Housing";
			class addHouse {};
			class fetchPlayerHouses {};
			class initHouses {};
			class sellHouse {};
			class updateHouseContainers {};
			class updateHouseTrunk {};
			class houseCleanup {};
		};
		
		class Companies
		{
			file = "\life_server\Functions\Companies";
			class initContainers {};
			class updateCompaniesContainer {};
		};
		
		class Gangs
		{
			file = "\life_server\Functions\Gangs";
			class insertGang {};
			class queryPlayerGang {};
			class removeGang {};
			class updateGang {};
		};
	};
	class GHBSystem
	{
		tag = "GHB";
		class Smartphone
		{
			file = "\life_server\Functions\Smartphone";
			class handleMessages {};
			class msgRequest {};
		};	
	};
};

class CfgVehicles
{
	class Car_F;
	class CAManBase;
	class Civilian;
	class Civilian_F : Civilian
	{
		class EventHandlers;
	};
	
	class C_man_1 : Civilian_F
	{
		class EventHandlers: EventHandlers
		{
			init = "(_this select 0) execVM ""\life_server\fix_headgear.sqf""";
		};
	};
};