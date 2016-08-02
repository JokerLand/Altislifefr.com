/*
*    Format:
*        licenses: ARRAY (This is for limiting spawn to certain things)
*           0: License Name
*           1: License Check Type
*                false: If license isn't set
*                true: If license is set
*           Example:
*                licenses[] = { { "pilot", true }, { "rebel", false } }; //Shows up for players with pilot and without rebel license.
*
*        level: ARRAY (This is for limiting spawn to certain things)
*            0: Variable to read from
*            1: Variable Value Type (SCALAR / BOOL / EQUAL / INVERSE)
*                SCALAR: VALUE => VALUE
*                BOOL: VALUE EXISTS
*                EQUAL: VALUE == VALUE
*                INVERSE: VALUE <= VALUE
*            2: What to compare to (-1 = Check Disabled)
*
*/
class CfgSpawnPoints {
    class Civilian {
        class Georgetown {
            displayName = "Georgetown";
            spawnMarker = "civ_spawn_1";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        class LaRochelle {
            displayName = "La Rochelle";
            spawnMarker = "civ_spawn_4";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
        
        class Lijnhaben {
            displayName = "Lijnhaven";
            spawnMarker = "civ_spawn_3";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        class Ouméré {
            displayName = "Ouméré";
            spawnMarker = "civ_spawn_2";
            icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
        
        class Rebel {
            displayName = "Base Rebelle";
            spawnMarker = "reb_spawn_1";
            icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
            licenses[] = { { "rebel", true } };
            level[] = { "", "", -1 };
        };
        
        class depan {
            displayName = "QG Dépanneurs";
            spawnMarker = "depan_spawn";
            icon = "\plp_markers\icons\plp_mark_as_building.pac";
            licenses[] = { { "depan", true } };
            level[] = { "", "", -1 };
        };
        
        class aan {
            displayName = "QG AAN";
            spawnMarker = "aan_spawn";
            icon = "\plp_markers\icons\plp_mark_as_building.pac";
            licenses[] = { { "aan", true } };
            level[] = { "", "", -1 };
        };
        
        class ion {
            displayName = "QG ION";
            spawnMarker = "ion_spawn";
            icon = "\plp_markers\icons\plp_mark_as_building.pac";
            licenses[] = { { "ion", true } };
            level[] = { "", "", -1 };
        };
        
        class altisfly {
            displayName = "QG Altis Wings";
            spawnMarker = "altisfly_spawn";
            icon = "\plp_markers\icons\plp_mark_as_building.pac";
            licenses[] = { { "altisfly", true } };
            level[] = { "", "", -1 };
        };
    };

    class Cop {
        class Kavala {
            displayName = "Georgetown";
            spawnMarker = "cop_spawn_1";
            icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        class Pyrgos {
            displayName = "La Rochelle";
            spawnMarker = "cop_spawn_4";
            icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };
        
        class Athira {
            displayName = "Lijnhaven";
            spawnMarker = "cop_spawn_3";
            icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        class Paros {
            displayName = "Ouméré";
            spawnMarker = "cop_spawn_2";
            icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        //class HW {
          //  displayName = "HW Patrol";
            //spawnMarker = "cop_spawn_5";
            //icon = "\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa";
            //licenses[] = { { "", true } };
            //level[] = { "life_coplevel", "SCALAR", 3 };
        //};
    };

    class Medic {
        class Kavala {
            displayName = "Hôpital Georgetown";
            spawnMarker = "medic_spawn_1";
            icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
            licenses[] = { { "", true } };
            level[] = { "", "", -1 };
        };

        //class AirHQ {
            //displayName = "Hôpital Air HQ";
            //spawnMarker = "medic_spawn_2";
            //icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
            //licenses[] = { { "", true } };
            //level[] = { "", "", -1 };
        //};

        //class Pyrgos {
            //displayName = "Hôpital Pyrgos";
            //spawnMarker = "medic_spawn_3";
            //icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
            //licenses[] = { { "", true } };
            //level[] = { "", "", -1 };
        //};
    };
};
