init:
#NoEnv
#SingleInstance, Force
#Persistent
#InstallKeybdHook
#UseHook
#KeyHistory, 0
#HotKeyInterval 1
#MaxHotkeysPerInterval 127
version = 1.1
traytip, CSGO Aimbot AHK-.%version%, Aimbot is now turned on!, 5, 1
Menu, tray, NoStandard
Menu, tray, Tip, AHK Aimbot %version%
Menu, tray, Add, AHK Aimbot %version%, return
Menu, tray, Add
Menu, tray, Add, Help, info
Menu, tray, Add, Exit, exit
SetKeyDelay,-1, 1
SetControlDelay, -1
SetMouseDelay, -1
SetWinDelay,-1
SendMode, InputThenPlay
SetBatchLines,-1
ListLines, Off
CoordMode, Pixel, Screen, RGB
CoordMode, Mouse, Screen
PID := DllCall("GetCurrentProcessId")
Process, Priority, %PID%, High

EMCol := 0xD6DBED,0xD2D7E8,0xFCFFFF,0xCCD2D6,0xCCD0D2,0xFFFEF0,0xFBFDFC,0xFEFFFF,0xD6DBED,0xD2D7E8,0xFCFFFF,0xCCD2D6,0xCCD0D2,0xFFFEF0,0xFBFDFC,0xFEFFFF,0xDFD853,0xDED550,0xDFD853,0xDFD953,0xDAC146,0xD9BF47,0xD8C248,0xE0DC53,0xD5BD4A,0xD9BB49,0x14110F,0x2C211B,0x251915,0x000000,0x2D221D,0x2E231D,0x291E19,0x261F18,0x2B231C,0x2D221B,0x2B231E,0x241C17,0x2D241D,0x2B231C,0x262322,0x2E2824,0x24211C,0x5D5E5D,0x241B17,0x353231,0x2B2520,0x2E2F26,0x343328,0x28251F,0x464542,0x2B2622
ColVn := 65
AntiShakeX := (A_ScreenHeight // 160)
AntiShakeY := (A_ScreenHeight // 128)
ZeroX := (A_ScreenWidth // 2)
ZeroY := (A_ScreenHeight // 2)
CFovX := (A_ScreenWidth // 8)
CFovY := (A_ScreenHeight // 64)
ScanL := ZeroX - CFovX
ScanT := ZeroY
ScanR := ZeroX + CFovX
ScanB := ZeroY + CFovY
NearAimScanL := ZeroX - AntiShakeX
NearAimScanT := ZeroY - AntiShakeY
NearAimScanR := ZeroX + AntiShakeX
NearAimScanB := ZeroY + AntiShakeY

Loop, {
KeyWait, E, D
PixelSearch, AimPixelX, AimPixelY, NearAimScanL, NearAimScanT, NearAimScanR, NearAimScanB, EMCol, ColVn, Fast RGB
if (!ErrorLevel=0) {
loop, 10 {
PixelSearch, AimPixelX, AimPixelY, ScanL, ScanT, ScanR, ScanB, EMCol, ColVn, Fast RGB
AimX := AimPixelX - ZeroX
AimY := AimPixelY - ZeroY
DirX := -1
DirY := -1
If ( AimX > 0 ) {
DirX := 1
}
If ( AimY > 0 ) {
DirY := 1
}
AimOffsetX := AimX * DirX
AimOffsetY := AimY * DirY
MoveX := Floor(( AimOffsetX ** ( 1 / 2 ))) * DirX
MoveY := Floor(( AimOffsetY ** ( 1 / 2 ))) * DirY
DllCall("mouse_event", uint, 1, int, MoveX * 1.5, int, MoveY, uint, 0, int, 0)
}
}
}

Pause:: pause
return:
goto, init

info:
msgbox, 0, %version%, Made in the Philippines.`nIf you have issues try this`nWindowed Fullscreen`nDisable your antivirus and make sure your ahk is installed
return

exit:
exitapp