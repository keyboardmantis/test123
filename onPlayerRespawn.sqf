cutText ["","BLACK FADED",2];
titleText ["<t color='#EE0000' size='3'>Вы очнулись в мед. блоке</t><br/><t color='#aaaaaa' size='2'>Стоит немного отдохнуть</t>", "PLAIN", 0.4, true, true];
sleep 3;
cutText ["","BLACK IN",5];


removeAllActions player;
player removeAction 0;
player say3D "ACE_hit_Male06ENG_mid_1";

{ _x setStamina 180; } forEach allPlayers;

call yy_fnc_playerAddAction;


[] execVM "initPlayerAfterRespawn.sqf";


[player, {
private _curators = call ZONT_fnc_retrieveCurators;
if not ((getPlayerUID _this) in _curators) exitWith { };
_this call ZONT_fnc_giveZeus;
}] remoteExec ["bis_fnc_call", 2];
