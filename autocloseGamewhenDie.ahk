#Persistent


Sleep 600

Leep

{
		CoordMode, Pixel, window
		ImageSearch, FoundX, FoundY, 0, 0, 1366, 768, C:\hp.png
If ErrorLevel = 0
break
Sleep 100
}

Sleep 100
{
WinGetActiveTitle, Output
WinKill, %Output%

}

ExitApp