#Persistent


Sleep 600

Loop

{
		CoordMode, Pixel, window
		ImageSearch, FoundX, FoundY, 0, 0, 860, 681, C:\login.png
If ErrorLevel = 0
break
Sleep 11
}

Sleep 11
{
CoordMode, Mouse, Window
 mouseclick, left, 450, 314, 1, 0
Sleep 3333

     Send, EMAIL HERE
	 Sleep 19
    Send, {Enter}
	Sleep 51
 Send, PASSWORD HERE
 Sleep 19
    Send, {Enter}
	Sleep 6443
 mouseclick, left, 390, 333, 1, 0
 
 Sleep 4444
  mouseclick, left, 615, 498, 1, 0


}
sleep 3000
Reload