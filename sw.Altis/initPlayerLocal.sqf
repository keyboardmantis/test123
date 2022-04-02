
//////////////////////////////////////////////////////

//["videos\intro_preview.ogv"] call BIS_fnc_playVideo;

// Add EH
waitUntil{!(isNull player)};
waitUntil{local player};

[] execVM "scripts\vehicle\crew\medic.sqf";  //Инит пульсометра
/* [] execVM "zeus\curator.sqf";  // Инит зевсов */
[] execvm "scripts\vehicle\crew\crew.sqf"; // Инит показа экипажа
//[] execVM "scripts\diary.sqf";	 	// Вкладки с правилами

player addeventhandler ["killed",{[player,[missionnamespace,"virtualinventory"]] call Bis_fnc_saveinventory;}];
player addEventHandler ["killed",{execVM "onPlayerKilled.sqf"}];
player addeventhandler ["respawn",{[player,[missionnamespace,"virtualinventory"]] call Bis_fnc_loadinventory;}];



[] execVM "intro\introtext.sqf";
/* [] execVM "greetings.sqf"; */


[] spawn ZONT_fnc_loadProfile;
[] spawn ZONT_fnc_autoSaveInit;

[] spawn ZONT_fnc_initTeleportTerminals;

[] execVM "chatCommands.sqf";

[] execVM "initPlayerAfterRespawn.sqf";


///////////////////////////////////////////////////////////
if (!isDedicated) then {
    [] spawn {
        private _bt = {[format["<t size='1' color='#ff0000'>%1</t>",_this], -1,-1,2,0] spawn bis_fnc_dynamicText;};
        private _time = 0;
        while {(alive player) AND (side player == independent)} do {
            if ((vehicle player inArea "banzone5") && {vehicle player isKindOf "Land"}) then {
                format ["Вы в запретной зоне! До уничтожения %1 сек.", (10-_time)] call _bt;
                _time = _time + 1;
            } else {
                _time = 0;
            };
            if (_time > 10) then {
                "Мина!" call _bt;
                vehicle player call BIS_fnc_neutralizeUnit;
            };
            sleep 1;
        };
    };
};


/******                          Активные Зевсы                          ******/
while {true} do {
    waitUntil {!isnull (finddisplay 312)};
    _name = format ["%1 (%2)", name player, getPlayerUID player];
    _current_curators = missionNamespace getVariable ["current_curators", []];

    if (!(_name in _current_curators)) then {
        _current_curators pushBack _name;
        missionNamespace setVariable["current_curators", _current_curators, true];
    };
    _str = "<t color='#00FF00'>Активные зевсы:</t>";
    { _str = format["%1 <br/> %2", _str, _x]; } forEach _current_curators;
    hintSilent parseText _str;
    (finddisplay 312) displayAddEventHandler ["Unload", {
        _current_curators deleteAt (_current_curators find _name);
        missionNamespace setVariable ["current_curators", _current_curators, true];
        hintSilent "";
    }];
    sleep 5;
}
