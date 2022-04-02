//	edited by [TF]def 2015 09 20 (0.4.1)
/**/
//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = false;

//Only set to true if you are making pre-made vehicle lists with VVS_x (i.e VVS_Car)
VVS_Premade_List = false;

/*
									Pre-set VVS Vehicles
		This is similar to VAS's functionality, using these variables will only make those vehicles available.
		Leave them the way they are if you want to auto-fetch the entire vehicle config and list every vehicle.

		Example:
		VVS_Car = ["C_Offroad_01_F","C_Quadbike_01_F"];
		VVS_Air = ["B_Heli_Light_01_armed_F"];
*/

VVS_Car = [
	"3as_RTT",
	"442_argon_ammo",
	"442_argon_covered",
	"442_argon_transport",
	"442_argon_medical",
        "442_argon_fuel",
	"442_argon_repair",
	"3AS_BarcSideCar",
	"442_argon_fuel",
        "3AS_Barc",
        "SKX_fast_inf_transport_republic",
        "SKX_warden_tank_field", 
        "ls_ground_barc"
	];

VVS_HEVY = [
	"3as_Jug",
	"3as_UTAT",
	"442_rx200_aa"	,
	"442_rx200_arty",
        "3as_ATTE_Base", 
	"3as_AV7",
        "3as_ATAP_base",
        "3AS_RX200_Base"
	];

VVS_Car_Mercenary = [
	"OPTRE_M12_FAV",
	"C_M080apc1_FCW_F"
	];

VVS_Air_Mercenary = [
	"442_argon_ammo",
	"442_argon_fuel"
	];
VVS_CIS = [
	"212th_3AS_Reaper_ARC170",
	"RD501_Y_wing_MkII",
	"RD501_v_wing_MkII",
	"3as_Z95_orange",
        "3as_V19_base",
        "3as_arc_170_blue",
	"212th_3AS_Nu_Shuttle"
	];
VVS_Ship = [];
VVS_Armored = [];
VVS_Autonomous = [];
VVS_Support = [];

/*
									Vehicle restriction
		Again, similar to VAS's functionality. If you want to restrict a specific vehicle you can do it or
		you can restrict an entire vehicle set by using its base class.

		Example:
		VVS_Car = ["Quadbike_01_base_F"]; //Completely removes all quadbikes for all sides
		VVS_Air = ["B_Heli_Light_01_armed_F"]; //Removes the Pawnee
*/
VVS_R_Car = [
	"3as_saber_m1",
	"3as_saber_m1Recon",
	"3as_saber_super",
	"3as_saber_m1G",
	"SWLG_tanks_tx130",
        "SKX_Bantha_IFV_V1",
        "SKX_arty_rocket_Catapult_republic",
        "SKX_arty_Trebucher_republic",
        "RD501_Longbow_Republic",
	"3as_saber_AA"
					];
VVS_R_Air = [
        "3AS_Patrol_LAAT_Republic",
	"3AS_LAATC",
        "lsd_heli_laati", 
        "lsd_heli_laatc",
        "ls_heli_laatle_transportGunship",
        "ls_heli_laatle",
        "3as_arc_170_red",
        "3as_V19_base",
        "3AS_Nuclass",
        "3as_Z95_Republic"
];
VVS_R_Ship = [];
VVS_R_Armored = [];
VVS_R_Autonomous = [];
VVS_R_Support = [];
