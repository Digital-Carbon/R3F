
R3F_LOG_CFG_CF_sell_back_bargain_rate = 0.75;

R3F_LOG_CFG_CF_whitelist_light_categories =
[
	"Objects",                          // Objects (1 entries)
	"Armory",                           // Armory (0 entries)
	"Targets",                          // Targets (0 entries)
	"Cargo",                            // Objects (Construction) (43 entries)
	"Flag",                             // Objects (Flags) (35 entries)
	"Lamps",                            // Objects (Lamps) (0 entries)
	"Communication",                    // Objects (Communications) (0 entries)
	"Furniture",                        // Objects (Furniture) (22 entries)
	"Misc",                             // Objects (0 entries)
	"Signs",                            // Objects (Signs) (50 entries)
	"Small_items",                      // Objects (Small) (88 entries)
	"Training",                         // Training (80 entries)
	"Shelters",                         // Objects (Shelters) (0 entries)
	"Fortifications",                   // Objects (Fortifications) (47 entries)
	"Tents",                            // Objects (Camping) (46 entries)
	"Market",                           // Objects (Market) (11 entries)
	"Structures",                       // Structures (0 entries)
	"Structures_Military",              // Structures (Military) (12 entries)
	"Structures_Walls",                 // Structures (Walls) (0 entries)
	"Structures_Fences"                 // Structures (Fences) (1 entries)
];

R3F_LOG_CFG_CF_whitelist_medium_categories = R3F_LOG_CFG_CF_whitelist_light_categories +
[
	"Ammo",                             // Ammo (49 entries)
	"Static",                           // Static (28 entries)
	"Container",                        // Objects (Containers) (39 entries)
	"Objects_Airport",                  // Objects (Airport) (20 entries)
	
	// All in Arma
	"StaticW",                          // Static (woodland) (4 entries)
	"Static_ChDKZ",                     // Static (Insurgency) (0 entries)
	"Static_USMC",                      // Static (USMC) (0 entries)
	"Static_RU",                        // Static (RU) (0 entries)
	"Static_CDF"                        // Static (CDF) (0 entries)
];

R3F_LOG_CFG_CF_whitelist_full_categories = R3F_LOG_CFG_CF_whitelist_medium_categories +
[
	"Car",                              // Cars (42 entries)
	"Armored",                          // Armored (16 entries)
	"Air",                              // Air (19 entries)
	"Support",                          // Supports (21 entries)
	"Ship",                             // Ships (13 entries)
	"Autonomous",                       // Autonomous (15 entries)
	"Submarine",                        // Submarines (3 entries)
	"Wreck",                            // Wrecks (24 entries)
	"Wreck_sub",                        // Wrecks (Submerged) (5 entries)
	"Military",                         // Objects (Military) (9 entries)
	"Structures_Commercial",            // Structures (Commercial) (1 entries)
	"Structures_Infrastructure",        // Structures (Infrastructure) (1 entries)
	"Structures_Town",                  // Structures (Town) (4 entries)
	"Structures_Cultural",              // Structures (Cultural) (0 entries)
	"Structures_Industrial",            // Structures (Industrial) (0 entries)
	"Structures_Transport",             // Structures (Transport) (0 entries)
	"Structures_Village",               // Structures (Village) (0 entries)
	"Structures_Slums",                 // Structures (Slums) (0 entries)
	"Structures_Airport",               // Structures (Airport) (0 entries)
	
	// All in Arma
	"Wrecks",                           // Wrecks (19 entries)
	"Military_US_EP1",                  // Military (US) (12 entries)
	"Military_TKA_EP1",                 // Military (TKA) (12 entries)
	"Military_GUE_EP1",                 // Military (Guerillas) (12 entries)
	"SupportWoodland_ACR",              // Support (woodland) (4 entries)
	"WarfareBuildingsClassname",        // Warfare Buildings (79 entries)
	"ArmouredD",                        // Armored (desert) (1 entries)
	"ArmouredW",                        // Armored (woodland) (7 entries)
	"CarD",                             // Cars (desert) (4 entries)
	"CarW",                             // Cars (woodland) (10 entries)
	"Military_With_side",               // Military (36 entries)
	"WarfareClassName",                 // Warfare (16 entries)
	"Armored_CDF",                      // Armored (CDF) (0 entries)
	"Armored_ChDKZ",                    // Armored (Insurgency) (0 entries)
	"Armored_USMC",                     // Armored (USMC) (0 entries)
	"Armored_RU",                       // Armored (RU) (0 entries)
	"Car_USMC",                         // Cars (USMC) (0 entries)
	"Car_RU",                           // Cars (RU) (0 entries)
	"Car_ChDKZ",                        // Cars (Insurgency) (0 entries)
	"Car_CDF",                          // Cars (CDF) (0 entries)
	"Air_ChDKZ",                        // Air (Insurgency) (0 entries)
	"Air_USMC",                         // Air (USMC) (0 entries)
	"Air_RU",                           // Air (RU) (0 entries)
	"Air_CDF",                          // Air (CDF) (0 entries)
	"Ship_CDF",                         // Ship (CDF) (0 entries)
	"Ship_ChDKZ",                       // Ship (Insurgency) (0 entries)
	"Ship_USMC",                        // Ship (USMC) (0 entries)
	"Ship_RU",                          // Ship (RU) (0 entries)
	"support_ChDKZ",                    // Support (Insurgency) (0 entries)
	"support_USMC",                     // Support (USMC) (0 entries)
	"support_RU",                       // Support (RU) (0 entries)
	"support_CDF",                      // Support (CDF) (0 entries)
	"Structures_E",                     // Structures EP1 (0 entries)
	"Ruins"                             // Ruins (0 entries)
];

R3F_LOG_CFG_CF_blacklist_categories =
[
	"Submerged",                        // Objects (Sea) (2 entries)
	"Camera",                           // Cameras (0 entries)
	"Sounds",                           // Sounds (9 entries)
	"Mines",                            // Mines (15 entries)
	"Backpacks",                        // Backpacks (157 entries)
	"Uniforms",                         // Uniforms (0 entries)
	"Anomalies",                        // Anomalies (0 entries)
	"Test",                             // TEST (0 entries)
	"Locations",                        // Locations (0 entries)
	"Modules",                          // Modules (128 entries)
	"Emitters",                         // Emitters (0 entries)
	"WeaponsPrimary",                   // Weapons (Primary) (30 entries)
	"WeaponsSecondary",                 // Weapons (Launchers) (10 entries)
	"WeaponsHandguns",                  // Weapons (Sidearms) (6 entries)
	"WeaponAccessories",                // Weapon Accessories (26 entries)
	"Magazines",                        // Magazines (0 entries)
	"Items",                            // Items (18 entries)
	"ItemsHeadgear",                    // Items (Headgear) (110 entries)
	"ItemsVests",                       // Items (Vests) (39 entries)
	"ItemsUniforms",                    // Items (Uniforms) (53 entries)
	"Intel",                            // Intel (3 entries)
	"Virtual",                          // Virtual Entities (0 entries)
	"Garbage",                          // Objects (Garbage) (15 entries)
	"Helpers",                          // Objects (Helpers) (34 entries)
	"Dead_bodies",                      // Objects (Dead bodies) (12 entries)
	"SystemLocations",                  // Locations (11 entries)
	"SystemSides",                      // Sides (3 entries)
	"SystemMisc",                       // Misc (3 entries)
	"Objects_VR",                       // Objects (Virtual Reality) (1 entries)
	"Objects_Sports",                   // Objects (Sports) (24 entries)
	"Structures_VR",                    // Structures (Virtual Reality) (10 entries)
	"Structures_Sports",                // Structures (Sports) (11 entries)
	"Explosives",                       // Explosives (0 entries)
	"Respawn",                          // Respawn (5 entries)
	
	// All in Arma
	"IEDs",                             // IEDs (4 entries)
	"LocationLogics",                   // Locations (14 entries)
	"Test_EP1"                          // Test EP1 (0 entries)
];

R3F_LOG_CFG_CF_creation_cost_factor =
[
	["Car", 12],
	["Armored", 15],
	["Air", 15],
	["Support", 100],
	["Ammo", 5000],
	["Ship", 8],
	["Static", 3],
	["Autonomous", 10],
	["Submarine", 1500],
	["Wreck", 100],
	["Wreck_sub", 100],
	["Cargo", 10],
	["Container", 5],
	["Objects_Airport", 50],
	
	// All in Arma
	["StaticW", 3],
	["Military_US_EP1", 8000],
	["Military_TKA_EP1", 8000],
	["Military_GUE_EP1", 8000],
	["SupportWoodland_ACR", 70],
	["WarfareBuildingsClassname", 100],
	["ArmouredD", 5],
	["ArmouredW", 20],
	["CarD", 60],
	["CarW", 60],
	["Military_With_side", 1000],
	["WarfareClassName", 50]
];