class Socket_Reciever {
    tag = "SOCK";
    class SQL_Socket {
        file = "core\session";
        class dataQuery {};
        class insertPlayerInfo {};
        class requestReceived {};
        class syncData {};
        class updatePartial {};
        class updateRequest {};
    };
};

class Life_Client_Core {
    tag = "life";

    class Master_Directory {
        file = "core";
        class initCiv {};
        class initCop {};
        class initMedic {};
        class setupActions {};
        class setupEVH {};
        class survival {};
        class welcomeNotification {};
    };

    class Actions {
        file = "core\actions";
        class arrestAction {};
        class buyLicense {};
        class captureHideout {};
        class catchFish {};
        class dpFinish {};
        class dropFishingNet {};
		class dTruckFinish {};
        class escortAction {};
        class gather {};
		class gatherAlgue {};
		class gatherArcheo {};
        class getDPMission {};
        class gutAnimal {};
        class healHospital {};
        class impoundAction {};
        class mine {};
		class packupBarrier {};
		class packupBarrierel {};
		class packupBarstop {};
		class packupCone {};
		class packupCordon {};
		class packupGlissiere {};
		class packupLadder {};        
		class packupLightd {};
		class packupPanneau {};
		class packupPanneauattention {};
        class packupSpikes {};
        class pickupItem {};
        class pickupMoney {};
        class postBail {};
        class processAction {};
        class pulloutAction {};
        class putInCar {};
        class removeContainer {};
        class repairTruck {};
        class restrainAction {};
        class robAction {};
		class robShops {};
		class robConcessionnaire {};        
		class robTraceurGPSAction {};
        class searchAction {};
        class searchVehAction {};
        class seizePlayerAction {};
        class serviceChopper {};
        class stopEscorting {};
        class storeVehicle {};
        class surrender {};
        class ticketAction {};
        class unrestrain {};
		class vesteExplosive {};
    };

    class Admin {
        file = "core\admin";
        class adminCompensate {};
        class adminDebugCon {};
        class adminFreeze {};
        class admingetID {};
        class adminGodMode {};
        class adminid {};
        class admininfo {};
        class adminMarkers {};
        class adminMenu {};
        class adminQuery {};
        class adminSpectate {};
        class adminTeleport {};
        class adminTpHere {};
    };

    class Civilian {
        file = "core\civilian";
        class civLoadout {};
        class civMarkers {};
        class demoChargeTimer {};
        class freezePlayer {};
        class jail {};
        class jailMe {};
        class knockedOut {};
        class knockoutAction {};
        class removeLicenses {};
        class robPerson {};
        class robReceive {};
		class robTraceurGPS {};
        class tazed {};
    };

    class Config {
        file = "core\config";
        class houseConfig {};
        class itemWeight {};
        class vehicleAnimate {};
        class vehicleWeightCfg {};
    };

    class Cop {
        file = "core\cop";
        class bountyReceive {};
        class containerInvSearch {};
		class copEnter {};
        class copInteractionMenu {};
        class copLights {};
        class copLoadout {};
        class copMarkers {};
		class copOpener {};
        class copSearch {};
        class copSiren {};
        class doorAnimate {};
        class fedCamDisplay {};
        class Insigne {};
        class InsigneAction {};
        class licenseCheck {};
        class licensesRead {};
        class questionDealer {};
        class radar {}; 
        class repairDoor {};
        class restrain {};
        class searchClient {};
        class seizeClient {};
        class sirenLights {};
        class spikeStripEffect {};
        class ticketGive {};
        class ticketPaid {};
        class ticketPay {};
        class ticketPrompt {};
        class vehInvSearch {};
        class wantedGrab {};
    };

    class Dialog_Controls {
        file = "dialog\function";
        class bankDeposit {};
        class bankTransfer {};
        class bankWithdraw {};
        class displayHandler {};
        class gangDeposit {};
        class gangWithdraw {};
        class garageLBChange {};
        class impoundMenu {};
        class progressBar {};
        class safeFix {};
        class safeInventory {};
        class safeOpen {};
        class safeTake {};
        class sellGarage {};
        class setMapPosition {};
        class spawnConfirm {};
        class spawnMenu {};
        class spawnPointCfg {};
        class spawnPointSelected {};
        class unimpound {};
        class vehicleGarage {};
        class wireTransfer {};
    };

    class Functions    {
        file = "core\functions";
        class accType {};
        class actionKeyHandler {};
        class animSync {};
		class autoMessages {};
		class CacherMarkers {};
        class calWeightDiff {};
		class CarAlarmSound {};
        class clearVehicleAmmo {};
        class dropItems {};
        class escInterupt {};
        class fetchCfgDetails {};
        class fetchDeadGear {};
        class fetchVehInfo {};
        class isDamaged {};
        class giveDiff {};
        class handleDamage {};
        class handleInv {};
        class handleItem {};
        class hideObj {};
        class hudSetup {};
        class hudUpdate {};
        class inventoryClosed {};
        class inventoryOpened {};
        class isUIDActive {};
        class keyHandler {};
        class loadDeadGear {};
        class loadGear {};
        class nearATM {};
        class nearestDoor {};
        class nearUnits {};
        class numberText {};
        class onFired {};
        class onTakeItem {};
        class playerSkins {};
        class playerTags {};
        class pullOutVeh {};
        class pushObject {};
        class receiveItem {};
        class receiveMoney {};
        class revealObjects {};
        class saveGear {};
        class searchPosEmpty {};
        class simDisable {};
        class stripDownPlayer {};
        class tazeSound {};
        class teleport {};
        class whereAmI {};
    };

    class Gangs    {
        file = "core\gangs";
        class createGang {};
        class gangCreated {};
        class gangDisband {};
        class gangDisbanded {};
        class gangInvite {};
        class gangInvitePlayer {};
        class gangKick {};
        class gangLeave {};
        class gangMenu {};
        class gangNewLeader {};
        class gangUpgrade {};
        class initGang {};
    };

    class Housing {
        file = "core\housing";
        class buyHouse {};
        class containerMenu {};
        class copBreakDoor {};
        class copHouseOwner {};
        class garageRefund {};
        class getBuildingPositions {};
        class houseMenu {};
        class initHouses {};
        class lightHouse {};
        class lightHouseAction {};
        class lockHouse {};
        class lockupHouse {};
        class placeContainer {};
        class PlayerInBuilding {};
        class raidHouse {};
        class sellHouse {};
    };

    class Items {
        file = "core\items";
        class blastingCharge {};
        class boltcutter {};
        class cone {};
        class conel {};
        class barrier {};
        class barrierl {};
        class crowbar {};
        class defuseKit {};
        class flashbang {};
        class jerrycanRefuel {};
        class jerryRefuel {};
        class ladder {};        
        class lockpick {};
        class placestorage {};
        class spikeStrip {};
        class storageBox {};
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

    class Medical_System {
        file = "core\medical";
        class deathScreen {};
        class medicLights {};
        class medicLoadout {};
        class medicMarkers {};
        class medicRequest {};
        class medicSiren {};
        class medicSirenLights {};
        class onPlayerKilled {};
        class onPlayerRespawn {};
        class requestMedic {};
        class respawned {};
        class revived {};
        class revivePlayer {};
    };

    class Network {
        file = "core\functions\network";
        class broadcast {};
        class corpse {};
        class jumpFnc {};
        class say3D {};
        class setFuel {};
        class soundDevice {};
    };

    class Player_Menu {
        file = "core\pmenu";
        class altisPhone {};
        class cellphone {};
        class giveItem {};
        class giveMoney {};
        class keyDrop {};
        class keyGive {};
        class keyMenu {};
        class p_openMenu {};
        class p_updateMenu {};
        class pardon {};
        class removeItem {};
        class s_onChar {};
        class s_onCheckedChange {};
        class s_onSliderChange {};
        class settingsMenu {};
        class updateViewDistance {};
        class useItem {};
        class wantedAddP {};
        class wantedInfo {};
        class wantedList {};
        class wantedMenu {};
    };

    class Shops    {
        file = "core\shops";
        class atmMenu {};
        class buyClothes {};
        class changeClothes {};
        class chopShopMenu {};
        class chopShopSelection {};
        class chopShopSell {};
        class clothingFilter {};
        class clothingMenu {};
        class fuelLBchange {};
        class fuelStatOpen {};
        class vehicleShop3DPreview {};
        class vehicleShopBuy {};
        class vehicleShopEnd3DPreview {};
        class vehicleShopInit3DPreview {};
        class vehicleShopLBChange {};
        class vehicleShopMenu {};
        class virt_buy {};
        class virt_menu {};
        class virt_sell {};
        class virt_update {};
        class weaponShopAccs {};
        class weaponShopBuySell {};
        class weaponShopFilter {};
        class weaponShopMags {};
        class weaponShopMenu {};
        class weaponShopSelection {};
        class addsubstract {};
    };

    class Vehicle {
        file = "core\vehicle";
        class addVehicle2Chain {};
        class colorVehicle {};
        class deviceMine {};
        class FuelRefuelcar {};
        class fuelStore {};
        class fuelSupply {};
        class lockVehicle {};
        class openInventory {};
        class vehiclecolor3DRefresh {};
        class vehicleOwners {};
        class vehicleWeight {};
        class vehInventory {};
        class vehStoreItem {};
        class vehTakeItem {};
        class vInteractionMenu {};
    };
};
