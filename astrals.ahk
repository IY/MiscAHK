#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

`::
suspend
return

q::
Click Right
return

w::
MouseMove 0, 36, 1, R
return

e::Click
return

f::Esc
return

v::F2
return

g::F1
return

z::
Click Right
return

x::
MouseMove 0, 50, 1, R
return

a::
Click Right
return

s::
MouseMove, 0, 75, 1, R
return

d::
Click
return

c::
Click
return