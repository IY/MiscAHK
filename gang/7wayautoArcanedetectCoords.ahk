#Persistent
CoordMode, Mouse, Window
SetDefaultMouseSpeed, 0
SetBatchLines, -1
SetMouseDelay, 0
SetTitleMatchMode, 3
SetWinDelay, -1
RandomSleep(min, max) {

    Random, rand, min, max

    Sleep rand

}

Random(min,max) {
	Random, out, %min%, %max%
	return	out
}


`::
CoordMode, Pixel, window
ImageSearch, FoundX, FoundY, 0, 0, 860, 681, *5 C:\arcane.png
If ErrorLevel = 0
{
CoordMode, Mouse, Window
MouseGetPos, StartX, StartY
BlockInput, MouseMove
MouseClick, , % Random(577,590), % Random(267,277)
MouseMove, StartX, StartY
RandomSleep(70, 80)
MouseClick, , % Random(577,593), % Random(299,319)
MouseMove, StartX, StartY
RandomSleep(75, 80)
MouseClick, , % Random(618,636), % Random(265,285)
MouseMove, StartX, StartY
RandomSleep(75, 80)
MouseClick, , % Random(618,634), % Random(302,319)
MouseMove, StartX, StartY
RandomSleep(74, 80)
MouseClick, , % Random(664,671), % Random(264,278)
MouseMove, StartX, StartY
RandomSleep(70, 75)
MouseClick, , % Random(663,671), % Random(302,324)
RandomSleep(1, 3)
MouseMove, StartX, StartY
BlockInput, MouseMoveOff
return
}

else

{
CoordMode, Mouse, Window
MouseGetPos, StartX, StartY
BlockInput, MouseMove
MouseClick, , % Random(577,590), % Random(267,277)
MouseMove, StartX, StartY
RandomSleep(70, 80)
MouseClick, , % Random(577,593), % Random(299,319)
MouseMove, StartX, StartY
RandomSleep(75, 80)
MouseClick, , % Random(618,636), % Random(265,285)
MouseMove, StartX, StartY
RandomSleep(75, 80)
MouseClick, , % Random(618,634), % Random(302,319)
MouseMove, StartX, StartY
RandomSleep(74, 80)
MouseClick, , % Random(664,671), % Random(264,278)
RandomSleep(1, 3)
MouseMove, StartX, StartY
BlockInput, MouseMoveOff
return
}