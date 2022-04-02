## Роли ##

- Новые роли можно назначать в файле `profiles_framework\roles.ext`, следуя документации в его верхушке
- Роли без параметра `free` либо с его значением `false` доступны игроку только в том случае,
  если его прописали в дискорде через `//roles add <ID> @user 7656XXXXXXXXXXXX`;
  либо напрямую в базе данных в таблице *profiles* (**не** *characters*) в колонке *roles*
- Проверять на наличие роли можно функцией `[_wl, _bl, _rl] call ZONT_fnc_checkRole`.
  Документацию см. в `profiles_framework\fn_checkRole.sqf`
- ЕСЛИ НУЖНО ИЗМЕНИТЬ ЧТО-ТО ПРИ РЕСПАВНЕ ИГРОКА, используйте файл
  `initPlayerAfterRespawn.sqf`; там уже находится пример с
  отключением стамины роли *Mechanicus* и добвалением им флага *инженер*


## Терминалы телепорта ##

- В `description.ext` - `CfgConsts` - `ztt_terminals[] = {"Land_OPTRE_vidphone_terminal"};`. Это массив имен классов объектов, в
  которых будет искаться терминалы телепортов. В редакторе - в инициализации этих объектов - `[this, ... ] call ZONT_fnc_addTeleportTerminal`.
  Для полной документации, см. `fnc\fn_addTeleportTerminal.sqf`
