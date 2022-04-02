//////////////////////////////////////
//radioJammer = [[jammer1, jammer2, jammer3], 1000, 100, TRUE] execVM "scripts\TFARjamRadios.sqf";

_EndSplashScreen = {
    for "_x" from 1 to 4 do {
        endLoadingScreen;
        sleep 3;
    };
};

[] spawn _EndSplashScreen;

[] execVM "scripts\chat\init.sqf";

[] execVM "scripts\clear_group.sqf";

["Initialize", [true]] call BIS_fnc_dynamicGroups;

///////////////////////////////////////////

0 fadeRadio 0;
enableRadio true;
enableSentences false;
enableSaving [false, false];

///////////////////////////////////////////////////////

if(isNil "yy_fnc_hideObj") then
{
	yy_fnc_hideObj =
	{
		if (isPlayer param[0]) then
		{
			_cloakunit = _this select 0;
			_bool = _this select 1;
			_cloakunit hideObjectGlobal _bool;
		};
	};
	publicVariable "yy_fnc_hideObj";
};

/////////////////////////////////////////



player addEventHandler ["killed",{execVM "onPlayerKilled.sqf"}];

/////////////////////////////////////////
call{0 spawn {
	waitUntil {!isNull(findDisplay 46)};

	(findDisplay 46) displayAddEventHandler ["KeyDown", {
		if(_this select 1 == 0x46) then {
			_earplugsctrl = (_this select 0) displayCtrl 9001;
			if(isNull(_earplugsctrl)) then {
				_earplugsctrl = (_this select 0) ctrlCreate ["RscText", 9001];
				_earplugsctrl ctrlSetPosition [SafeZoneXAbs, SafeZoneY + (SafeZoneH - 0.05) / 2, 0.2, 0.03];
				_earplugsctrl ctrlSetFontHeight 0.03;
				_earplugsctrl ctrlSetText "Беруши активны";
				_earplugsctrl ctrlShow false;
				_earplugsctrl ctrlCommit 0;
			};
			_shown = ctrlShown _earplugsctrl;
			0.1 fadeSound (if(_shown)then{1}else{0.1});
			_earplugsctrl ctrlShow !_shown;
		};
	}];
};};

//Distance restriction
CHVD_allowNoGrass = true; // Set 'false' if you want to disable "Low" option for terrain (default: true)
CHVD_maxView = 8000; // Set maximum view distance (default: 12000)
CHVD_maxObj = 8000; // Set maximimum object view distance (default: 12000)

//////////////////////////////////////////////////

fnc_checkTagOpen = {
    params ["_unit","_tag","_kpp","_trg"];
    _name = name _unit;

    if (((_name find _tag) > -1) && (_unit distance (getPos _trg) < 3)) then {
        _kpp setVariable ["bis_disabled_Door_1",0,true];
        "Доступ разрешен" remoteExec ["hint",_unit];
    }
        else {
        _kpp setVariable ["bis_disabled_Door_1",1,true];
        _kpp animate ["door_1_rot",0];
        "Доступ запрещен" remoteExec ["hint",_unit];
    };
};

fnc_checkTagClose = {
    params ["_kpp","_unit"];
    _kpp setVariable ["bis_disabled_Door_1",1,true];
    _kpp animate ["door_1_rot",0];
    "Закрыто" remoteExec ["hint",_unit];
};



enableSaving [false, false];
