_auto := true 
~LButton::autofire() 
+LButton::_auto := ! _auto 
F5::Suspend
autofire() 
{ 
global _auto 
if _auto 
{ 
Loop 
{ 
if GetKeyState("LButton", "P") 
{ 
Sleep 0 
mouseXY(0, 1) 
Sleep 150 
} 
else 
break 
} ;; loop 
} ;; if 
} ;; autofire()
mouseXY(x,y) 
{ 
DllCall("mouse_event",uint,1,int,x,int,y,uint,0,int,0) 
}

del:: Pause
End:: ExitApp