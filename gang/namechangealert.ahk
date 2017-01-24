#Persistent


Sleep 577

Loop

{
		CoordMode, Pixel, window
		ImageSearch, FoundX, FoundY, 0, 0, 860, 681, C:\namechanged.png
If ErrorLevel = 0
break
Sleep 11
}

Sleep 11
{
SoundPlay, changed.mp3
}
sleep 3000
Reload