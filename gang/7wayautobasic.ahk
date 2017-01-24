#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
Random, rand, 41, 66
Random, rand4, 42, 68
`::
BlockInput, MouseMove
Click
Sleep rand
Mousemove , 0 , 36 , 0 , R
Sleep rand4
Click
Sleep rand
Mousemove , 36 , -36 , 0 , R
Sleep rand4
Click
Sleep rand
Mousemove , 0 , 36 , 0 , R
Sleep rand4
Click
Sleep rand
Mousemove , 36 , -36 , 0 , R
Sleep rand4
Click
Sleep rand
Mousemove , 0 , 36 , 0 , R
Sleep rand4
Click
Sleep rand
Mousemove , -72 , -36 , 0 , R
BlockInput, MouseMoveOff
return

