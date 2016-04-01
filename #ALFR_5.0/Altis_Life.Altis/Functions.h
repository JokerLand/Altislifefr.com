class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
		class updatePartial {};
	};
};

class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
		class welcomeNotification {};
		class survival {};
		class initAdac {};
		class Erreur {};
	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
	};
	
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSirenLights {};
		class medicLights {};
		class medicSiren {};
		class medEnter {};
	};
	
	class Actions
	{
		file = "core\actions";
		class buyLicense {};
		class healHospital {};
		class pushVehicle {};
		class repairTruck {};
		class serviceChopper {};
		class catchFish {};
		class catchTurtle {};
		class dpFinish {};
		class dropFishingNet {};
		class getDPMission {};
		class postBail {};
		class processAction {};
		class arrestAction {};
		class escortAction {};
		class impoundAction {};
		class pulloutAction {};
		class putInCar {};
		class stopEscorting {};
		class restrainAction {};
		class searchAction {};
		class searchVehAction {};
		class unrestrain {};
		class pickupItem {};
		class pickupMoney {};
		class ticketAction {};
		class packupSpikes {};
		class storeVehicle {};
		class robAction {};
		class captureHideout {};
		class gather {};
		class gutAnimal {};
		class surrender {};
        class robShops {};
        class seizeObjects {};
        class vesteExplosive {};
        class packupBarriere {};
		class packupCone {};
        class packupGlissiere {};
        class packupBarstop {};
        class packupLightd {};
	};
	
	class Housing
	{
		file = "core\housing";
		class buyHouse {};
		class getBuildingPositions {};
		class houseMenu {};
		class lightHouse {};
		class lightHouseAction {};
		class sellHouse {};
		class initHouses {};
		class copBreakDoor {};
		class raidHouse {};
		class lockupHouse {};
		class copHouseOwner {};
		class lockHouse {};
		class garageRefund {};
	};
	
	class Config
	{
		file = "core\config";
		class itemWeight {};
		class taxRate {};
		class vehicleAnimate {};
		class vehicleWeightCfg {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class wantedAddP {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class s_onChar {};
		class s_onCheckedChange {};
        class cellphone2 {};
	};
	
	class Functions
	{
		file = "core\functions";
		class calWeightDiff {};
		class fetchCfgDetails {};
		class handleInv {};
		class hudSetup {};
		class hudUpdate {};
		class tazeSound {};
		class animSync {};
		class simDisable {};
		class keyHandler {};
		class dropItems {};
		class handleDamage {};
		class numberText {};
		class handleItem {};
		class accType {};
		class receiveItem {};
		class giveDiff {};
		class receiveMoney {};
		class playerTags {};
		class clearVehicleAmmo {};
		class pullOutVeh {};
		class nearUnits {};
		class actionKeyHandler {};
		class playerCount {};
		class fetchDeadGear {};
		class loadDeadGear {};
		class isnumeric {};
		class escInterupt {};
		class onTakeItem {};
		class fetchVehInfo {};
		class pushObject {};
		class onFired {};
		class revealObjects {};
		class nearestDoor {};
		class inventoryClosed {};
		class inventoryOpened {};
		class isUIDActive {};
		class saveGear {};
		class loadGear {};
        class loadCopGear {};
		class stripDownPlayer {};
		class nearATM {};
		class callbackup {};
		class backupCall {};
		class confirmRenfort {};
        class Stop {};
        class confirmStop {};		
        class playSound {};
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
		class setTexture {};
		class say3D {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class jailMe {};
		class jail {};
		class tazed {};
		class knockedOut {};
		class knockoutAction {};
		class robReceive {};
		class robPerson {};
		class removeLicenses {};
		class demoChargeTimer {};
		class civLoadout {};
		class civInteractionMenu {};	
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
		class adacVInteractionMenu {};
	};
	
	class Cop
	{
		file = "core\cop";
		class copMarkers {};
		class copLights {};
		class vehInvSearch {};
		class copSearch {};
		class bountyReceive {};
		class searchClient {};
		class restrain {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class copSiren {};
		class spikeStripEffect {};
		class radar {};
		class questionDealer {};
		class copInteractionMenu {};
		class sirenLights {};
		class licenseCheck {};
		class licensesRead {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
		class copLoadout {};
		class ticketPaid {};
		class wantedGrab {};
        class copEnter {}
        class InsigneAction {};
		class Insigne {};
		class copShowLicense {};
        class copLicenseShown {};
	};
	
	class Adac
	{
		file = "core\adac";
		class adacLoadout {};
		class adacMarkers {};
		class adacInteractionMenu {};
		class adacEnter {};
	};
	
	class Gangs
	{
		file = "core\gangs";
		class initGang {};
		class createGang {};
		class gangCreated {};
		class gangMenu {};
		class gangKick {};
		class gangLeave {};
		class gangNewLeader {};
		class gangUpgrade {};
		class gangInvitePlayer {};
		class gangInvite {};
		class gangDisband {};
		class gangDisbanded {};
	};
	
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
        class addsubstract {};
	};
	
	class Items
	{
		file = "core\items";
		class pickaxeUse {};
		class lockpick {};
		class spikeStrip {};
		class jerryRefuel {};
		class flashbang {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
		class storageBox {};
        class CarAlarmSound {};
        class barriere {};
		class cone {};
        class glissiere {};
        class barstop {};
        class lightd {};
	};
	
	class Passeport
	{
		file = "core\passeport";
		class anthonypapier {}; //faux papier - Anthony Mallard
		class christinapapier {}; //faux papier - Christina Yung
		class civpapier {}; //papier légal
		class craigpapier {}; //faux papiers - Craig Feldspar
		class deweypapier {}; //faux papiers - Dewey Wilkerson
		class dougpapier {}; //faux papiers - Doug Carter
		class ericapapier {}; //faux papiers - Erica Harris
		class ericpapier {}; //faux papiers - Eric Kenarban
		class francispapier {}; //faux papiers - Francis Pulivan
		class halpapier {}; //faux papiers - Hal Hansen
		class jingmeipapier  {}; //faux papiers - Jing-Mei Chan
		class johnpapier {}; //faux papiers - John Smith
		class joshuapapier {}; //faux papiers - Joshua Harris
		class leonpapier {}; //faux papiers - Leon Vance
		class marcelpapier {}; //faux papiers - Marcel Dupont
		class marcpapier {}; //faux papiers - Marc Sanders
		class mariepapier {}; //faux papiers - Marie Dawson
		class michealpapier {}; //faux papiers - Micheal Williams
		class mirandapapier {}; //faux papiers - Miranda Stevens
		class monicapapier {}; //faux papiers - Monica Deveaux
		class nathanpapier {}; //faux papiers - Nathan Masahashi
		class nikkipapier {}; //faux papiers - Nikki Bishop
		class richardpapier {}; //faux papiers - Richard Hunt
		class tompapier {}; //faux papiers - Tom Dubois
		class tracypapier {}; //faux papiers - Tracy Petrelli
		class usepasseport {}; // usepasseport 
		class usepasseportanthony {}; // usepasseport Anthony Mallard
		class usepasseportchristina {}; // usepasseport Christina Yung
		class usepasseportcraig {}; // usepasseport Craig Feldspar
		class usepasseportdewey {}; // usepasseport Dewey Wilkerson
		class usepasseportdoug {}; // usepasseport Doug Carter
		class usepasseporteric {}; // usepasseport Eric Kenarban
		class usepasseporterica {}; // usepasseport Erica Harris
		class usepasseportfrancis {}; // usepasseport Francis Pulivan
		class usepasseporthal {}; // usepasseport Hal Hansen
		class usepasseportjingmei {}; // usepasseport Jing-Mei Chan
		class usepasseportjohn {}; // usepasseport John
		class usepasseportjoshua {}; // usepasseport Joshua Harris
		class usepasseportleon {}; // usepasseport Leon Vance
		class usepasseportmarc {}; // usepasseport Marc Sanders
		class usepasseportmarcel {}; // usepasseport Marcel Dupont
		class usepasseportmarie {}; // usepasseport Marie Dawson
		class usepasseportmicheal {}; // usepasseport Micheal
		class usepasseportmiranda {}; // usepasseport Miranda Stevens
		class usepasseportmonica {}; // usepasseport Monica Deveaux
		class usepasseportnathan {}; // usepasseport Nathan Masahashi
		class usepasseportnikki {}; // usepasseport Nikki Bishop
		class usepasseportrichard {}; // usepasseport Richard Hunt
		class usepasseporttom {}; // usepasseport Tom
		class usepasseporttracy {}; // usepasseport Tracy Petrelli
	};
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
		class vehicleGarage {};
		class gangDeposit {};
		class wireTransfer {};
	};
};