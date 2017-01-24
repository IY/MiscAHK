#Persistent
CoordMode, Mouse, Window
SetDefaultMouseSpeed, 0
SetBatchLines, -1
SetMouseDelay, 0
SetTitleMatchMode, 3
SetWinDelay, -1
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
`::suspend
return
1::Click,right
return
2::
CoordMode, Pixel, window
ImageSearch, FoundX, FoundY, 0, 0, 860, 681, C:\plates.png
If ErrorLevel = 0
{
MouseMove, 0, 58, 1, R
}

else

{
MouseMove, 0, 70, 1, R
}
3::click
return