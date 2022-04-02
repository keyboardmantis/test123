
MPS_spawn_BDINIT = [] spawn {
  [] call ZONT_fnc_bd_initBasic;
  MPS_BDL_pres =
      ["profiles"] call ZONT_fnc_bd_initCustom;
  MPS_BDL_status =
      ["status"] call ZONT_fnc_bd_initCustom;
};

MPH_COMMITER = [{ [] call ZONT_fnc_commitInfo }, 20] call CBA_fnc_addPerFrameHandler;

private _fortif_list = [

    ["Land_BagFence_Corner_F",20],
    ["Land_BagFence_Long_F",35],
    ["Land_BagFence_Short_F",20],
    ["Land_BagFence_End_F",20],
    ["Land_BagFence_Round_F",20],
    ["Land_BarGate_F",35],
    ["Land_BagBunker_Small_F",70],
    ["442_barricade1_rep",40],
    ["3as_Barricade_prop",60],
    ["CamoNet_OPFOR_big_Curator_F",100],
    ["CamoNet_OPFOR_Curator_F",50],
    ["3as_shield_C_prop",100],
    ["3as_shield_1_prop",20],
    ["3as_shield_3_prop",40],
    ["3as_shield_5_prop",70],
    ["3as_Cover1",30],
    ["3as_Cover2",50]
];
[west,       2000, _fortif_list] call acex_fortify_fnc_registerObjects;
[east,       2000, _fortif_list] call acex_fortify_fnc_registerObjects;
[resistance, 2000, _fortif_list] call acex_fortify_fnc_registerObjects;
