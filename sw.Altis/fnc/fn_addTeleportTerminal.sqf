/*
	File: fn_addTeleportTerminal.sqf
	Author: Daniel "ZONT_" Weizenfeld

	Description:
	Adds terminal to teleporter net

	0: terminal object
	1: tooltip (when selecting teleport TO)
	2: [optional] <PositionATL> to teleport here (from other teleport). Default - [] = this pos X+2
  3: [optional] <STRING> color of tooltip. Default - #ffffff
  4: [optional] <STRING> condition. Default - "true"
  5: [optional] <NUMBER> priority of action. Default - 6
  6: [optional] <CODE or STRING> condition, if false, then terminal will not be added as destination.
                       use _thisTermX to get current checking terminal. Default - {true}

  [this, "Переместиться на базу Наемников", [], "#33c208"] call ZONT_fnc_addTeleportTerminal
*/
params [
  ["_thisTerm", objNull],
  ["_tooltip", ""],
  ["_posATL", []],
  ["_color", "#ffffff"],
  ["_cond", "true"],
  ["_priority", 6],
  ["_createCond", {true}]
];

if (isNil '_thisTerm') exitWith { };
if (typeName _createCond == typeName "") then { _createCond = compile _createCond };
if (count _posATL == 0) then { _posATL = ASLToATL (_thisTerm modelToWorldWorld [2,0,0]) };

_thisTerm setVariable ["ZTT_params", [_tooltip, _color, _posATL, _cond, _priority, _createCond]];
