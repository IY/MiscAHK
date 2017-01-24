#If WinActive("ahk_exe osbuddy.exe") or WinActive("ahk_exe 

jagexlauncher.exe")

1::esc
2::
MouseMove, 0, 73, 1, R
keywait, 2
return
3::
MouseMove, 0, 37, 1, R
keywait, 3
return
4::
Click
keywait, 4
return
`::suspend