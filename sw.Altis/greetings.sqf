waitUntil { !isNull findDisplay 46 };

private _text =
    "<t size='2.5' shadow='1' color='#7288DB'>The Republic Chronicles</t><br/>" +
    "<t size='2' color='#7288DB'>Приветствуем тебя, боец!</t><br/>" +
    "<t size='1'>Добро пожаловать на сервер!<br/>" +
    "Убедись, что ты ознакомился с правилами и уставом:<br/></t>" +
    "<a size='2.9' href='https://discord.gg/dCJdQ9r4C7'><img image='pic\dis.paa'/></a><br/>" +
    "<a size='1.6' href='https://docs.google.com/document/d/17jCW5OX4cmahYcOqe3SLN9Wn21qKGAqBHRlNY5PNjyo/edit#heading=h.q87zp7sd4l0q'>" +
    "<img image='pic\doc.paa'/><t colorLink='#0788ff' color='#0788ff'> Устав</t></a><br/><br/>" +
    "<a size='1.6' href='https://docs.google.com/document/d/1MgD9Ke2P62XgPes66T3HWI9Wj1WRUAlyBT-oESBjUvg'>" +
    "<img image='pic\doc.paa'/><t colorLink='#0788ff' color='#0788ff'> Правила</t></a><br/>";

disableSerialization;

private _headerH = 0.58;
private _btH = 0.02 * safeZoneH;
private _btW = 0.10 * safeZoneW;

private _spaceH   = 0.008 * safezoneH;
private _paddingW = 0.0025 * safezoneW;
private _paddingH = 0.0025 * safezoneH;
private _width    = 0.32 * safezoneW;
private _height   = _headerH;
private _startY   = safeZoneY + ((safeZoneH - _height) / 2);
private _startX   = safeZoneX + ((safeZoneW -  _width) / 2);

private _display = findDisplay 46 createDisplay "RscDisplayEmpty";

private _title = _display ctrlCreate ["RscStructuredText", -1];
_title ctrlSetPosition [_startX,_startY,_width,_headerH];
_title ctrlSetBackgroundColor [0,0,0,0.7];
_title ctrlSetStructuredText parseText ("<t align='center'>" + _text + "</t>");
_title ctrlCommit 0;

private _but = _display ctrlCreate ["RscButton", -1];
_but ctrlSetPosition [_startX + _width - _btW, _startY + _height + _paddingH, _btW, _btH];
_but ctrlSetBackgroundColor [0,0,0,0.1];
_but ctrlSetText "Продолжить";
_but ctrlCommit 0;

_but ctrlAddEventHandler ["ButtonClick", {
  params ["_control"];
  (ctrlParent _control) closeDisplay 1;
}];
