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
Random, rand, 10, 51
Random, rand1, 10, 52
Random, rand3, 11, 51

Random, rand4, 20, 72
Random, rand5, 21, 73
Random, rand6, 20, 74
RandomSleep(min, max) {

    Random, rand, min, max

    Sleep rand

}

Random(min,max) {
	Random, out, %min%, %max%
	return	out
}


;#IfWinActive Exilent v6.33 (Guest)
`::
;CoordMode, Pixel, window
;PixelGetColor, color, 625, 272, 192010, RGB
;if (color != 0x131010)
CoordMode, Pixel, window
ImageSearch, FoundX, FoundY, 0, 0, 860, 681, *5 C:\arcane.png
If ErrorLevel != 0
{
BlockInput, MouseMove
Click
Sleep rand
Mousemove , 0 , 38 , 0 , R
Sleep rand4
Click
Sleep rand1
Mousemove , 36 , -38 , 0 , R
Sleep rand5
Click
Sleep rand4
Mousemove , 0 , 38 , 0 , R
Sleep rand3
Click
Sleep rand3
Mousemove , 36 , -38 , 0 , R
Sleep rand6
Click
Sleep rand
Mousemove , 0 , 38 , 0 , R
Sleep rand4
Click
Sleep rand3
Mousemove , -76 , -38 , 0 , R
BlockInput, MouseMoveOff
sleep 100
reload
return
}

else

{
BlockInput, MouseMove
Click
Sleep rand
Mousemove , 0 , 38 , 0 , R
Sleep rand4
Click
Sleep rand1
Mousemove , 38 , -38 , 0 , R
Sleep rand5
Click
Sleep rand3
Mousemove , 0 , 38 , 0 , R
Sleep rand4
Click
Sleep rand3
Mousemove , 38 , -38 , 0 , R
Sleep rand6
Click
Sleep rand
Mousemove , 0 , 38 , 0 , R
Sleep rand4
Click
Sleep rand3
Mousemove , 38 , -38 , 0 , R
Sleep rand4
Click
Sleep rand4
Mousemove , -114 , 0 , 0 , R
BlockInput, MouseMoveOff
sleep 100
reload
return
}