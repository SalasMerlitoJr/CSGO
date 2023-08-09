#NoEnv
#SingleInstance force
#Persistent

SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory
#SingleInstance,Force
Gui,show, w250 h310
Gui, Color, WindowColor884488, ControlColorab13b8
Gui Add, Text, cBlue,Merlito
Gui Add, Text, cBlue, Aimbot (Default key is E)
Gui, Add, Button, w80 h20 gAimbot1 , Aimbot
Gui, Add, Button, w80 h20 gEspAimbot1 , ESP Aimbot
Gui Add, Text, cBlue, ESP Section
Gui Add, Text, cBlue, Wallhack (Use at your own risk)
Gui, Add, Button, w80 h20 gMemory1 , Wallhack
Gui, Add, Button, w80 h20 gWallhack1 , Chams

Gui Add, Text, cBlue, Misc (Use at your own risk)
Gui, Add, Button, w80 h20 gBhop1 , Bhop
Gui, Add, Button, w80 h20 gNoRecoil1 , No Recoil
Gui, Add, Button, w80 h20 gRapidFire1 , Rapidfire

Gui, Show,, CSGO

Return

Button1: 

Gui show


Aimbot:
Gui, Submit, NoHide
return

AimAssist:
Gui, Submit, NoHide
return


Pause:: pause
return:

info:
msgbox, 0, %version%, Made in the Philippines.`nIf you have issues try this`nWindowed Fullscreen`nDisable your antivirus and make sure your ahk is installed
return

exit:
exitapp

; buttons

Aimbot1:
Run Head.ahk
Return

EspAimbot1:
Run ESPAimbot.ahk
Return

Memory1:
Run classMemory.ahk
Return

Wallhack1:
Run wallhack.ahk
Return

Bhop1:
Run bhop.ahk
Return

NoRecoil1:
Run NoRecoil.ahk
Return

RapidFire1:
Run RapidFire.ahk
Return

guiclose:
exitapp
return