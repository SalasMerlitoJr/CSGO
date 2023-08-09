*~$Space::
Sleep 0
Loop
{
GetKeyState, SpaceState, Space, P
If SpaceState = U
break 
Sleep 0
Send, {Blind}{Space}
}
Return

del:: Pause
End:: ExitApp