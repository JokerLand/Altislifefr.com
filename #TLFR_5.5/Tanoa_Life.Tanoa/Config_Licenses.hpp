/*
*    class:
*        variable = Variable Name
*        displayName = License Name
*        price = License Price
*        illegal = Illegal License
*        side = side indicator
*/
class Licenses {
    //Civilian Licenses
    class driver {
        variable = "driver";
        displayName = "STR_License_Driver";
        price = 2500;
        illegal = false;
        side = "civ";
    };

    class boat {
        variable = "boat";
        displayName = "STR_License_Boat";
        price = 1500;
        illegal = false;
        side = "civ";
    };

    class pilot {
        variable = "pilot";
        displayName = "STR_License_Pilot";
        price = 18500;
        illegal = false;
        side = "civ";
    };

    class trucking {
        variable = "trucking";
        displayName = "STR_License_Truck";
        price = 20000;
        illegal = false;
        side = "civ";
    };

    class gun {
        variable = "gun";
        displayName = "STR_License_Firearm";
        price = 20000;
        illegal = false;
        side = "civ";
    };

    class dive {
        variable = "dive";
        displayName = "STR_License_Diving";
        price = 5500;
        illegal = false;
        side = "civ";
    };

    class home {
        variable = "home";
        displayName = "STR_License_Home";
        price = 85000;
        illegal = false;
        side = "civ";
    };

    class oil {
        variable = "oil";
        displayName = "STR_License_Oil";
        price = 10000;
        illegal = false;
        side = "civ";
    };
        
    class algue {
        variable = "algue";
        displayName = "STR_License_Algue";
        price = 35000;
        illegal = true;
        side = "civ";
    };
    
    class souffre {
        variable = "souffre";
        displayName = "STR_License_Souffre";
        price = 28500;
        illegal = true;
        side = "civ";
    };
    
    class saphir {
        variable = "saphir";
        displayName = "STR_License_Saphir";
        price = 37500;
        illegal = false;
        side = "civ";
    };
    
    class emeraude {
        variable = "emeraude";
        displayName = "STR_License_Emeraude";
        price = 45000;
        illegal = false;
        side = "civ";
    };
    
    class pierrevolcanique {
        variable = "pierrevolcanique";
        displayName = "STR_License_Pierrevolcanique";
        price = 22000;
        illegal = true;
        side = "civ";
    };
        
    class bois {
        variable = "bois";
        displayName = "STR_License_Bois";
        price = 12500;
        illegal = false;
        side = "civ";
    };
    
    
    class mais {
        variable = "mais";
        displayName = "STR_License_Mais";
        price = 10500;
        illegal = false;
        side = "civ";
    };
    
    class meth {
        variable = "meth";
        displayName = "STR_License_Meth";
        price = 250000;
        illegal = true;
        side = "civ";
    };

    class sand {
        variable = "sand";
        displayName = "STR_License_Sand";
        price = 15000;
        illegal = false;
        side = "civ";
    };

    class sugarcane {
        variable = "sugarcane";
        displayName = "STR_License_Sugarcane";
        price = 8500;
        illegal = false;
        side = "civ";
    };
    
    //Illegal Licenses
    
    /*class gangster {
        variable = "gangster";
        displayName = "STR_License_Gangster";
        price = 550000;
        illegal = true;
        side = "civ";
    };	
    */

    
    class rebel {
        variable = "rebel";
        displayName = "STR_License_Rebel";
        price = 400000;
        illegal = true;
        side = "civ";
    };
	
	class chefrebelle {
        variable = "chefrebelle";
        displayName = "STR_License_ChefRebelle";
        price = -1;
        illegal = true;
        side = "civ";
    };

    //Cop Licenses
    class cAir {
        variable = "cAir";
        displayName = "STR_License_Pilot";
        price = 8000;
        illegal = false;
        side = "cop";
    };

    class cg {
        variable = "cg";
        displayName = "STR_License_CG";
        price = 1000;
        illegal = false;
        side = "cop";
    };
	
    class armee {
        variable = "armee";
        displayName = "STR_License_Armee";
        price = -1;
        illegal = false;
        side = "cop";
    };	

    //Medic Licenses
    class mAir {
        variable = "mAir";
        displayName = "STR_License_Pilot";
        price = 5000;
        illegal = false;
        side = "med";
    };
	
	// Entreprise
	class ion {
        variable = "ion";
        displayName = "STR_License_Ion";
        price = -1;
        illegal = false;
        side = "civ";
    };
	
	class aan {
        variable = "aan";
        displayName = "STR_License_Aan";
        price = -1;
        illegal = false;
        side = "civ";
    };
    
    class depan {
        variable = "depan";
        displayName = "STR_License_Depan";
        price = -1;
        illegal = false;
        side = "civ";
    };
	
	class altisfly {
        variable = "altisfly";
        displayName = "STR_License_Altisfly";
        price = -1;
        illegal = false;
        side = "civ";
    };
    
    class entreprise_maritime {
        variable = "entreprise_maritime";
        displayName = "STR_License_entreprise_maritime";
        price = -1;
        illegal = false;
        side = "civ";
    };
    
    class staff {
        variable = "staff";
        displayName = "STR_License_staff";
        price = -1;
        illegal = false;
        side = "civ";
    };
};
