/*
	File: introtext.sqf
	Description: Добавляет текст после загрузки игрока на сервер
*/

[  
 [  
  ["SYSTEM INITIALISATION:", "<t align = 'left' shadow = '1' size = '0.5' color = '#44dd44' font='LucidaConsoleB'>%1</t><br/><br/>",5],   
  ["NOOSPHERE PROTOCOL...", "<t align = 'left' shadow = '1' size = '0.5' color = '#44dd44' font='LucidaConsoleB'>%1</t>",3], ["network search...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t>",15], ["on-line...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dddd44' font='LucidaConsoleB'>%1</t><br/><br/>",5],
  
  ["LIFE SUPPORT SYSTEM... ", "<t align = 'left' shadow = '1' size = '0.5' color = '#44dd44' font='LucidaConsoleB'>%1</t>",4], ["loading...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t><br/>",10],
  ["30%...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t><br/>",10],
  ["50%...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t><br/>",10],
  ["70%...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t><br/>",5],
  ["100%...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t><br/><br/>",1],
  
  ["ENGINEERING SUBSYSTEMS", "<t align = 'left' shadow = '1' size = '0.5' color = '#44dd44' font='LucidaConsoleB'>%1</t>",5], ["ACTIVATED IN...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t><br/>",5], 
  
  ["3...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t>",5], 
  ["2...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t>",5],
  ["1...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t>",8],
  ["OK...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dddd44' font='LucidaConsoleB'>%1</t><br/><br/>",5],
  
  ["DIAGNOSTIC SOFTWARE...", "<t align = 'left' shadow = '1' size = '0.5' color = '#44dd44' font='LucidaConsoleB'>%1</t>",5], ["radio interference found...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dd4444' font='LucidaConsoleB'>%1</t>",5],  ["OK...", "<t align = 'left' shadow = '1' size = '0.5' color = '#dddd44' font='LucidaConsoleB'>%1</t><br/>",25]
],-0.2,-0.25 
] spawn BIS_fnc_typeText;