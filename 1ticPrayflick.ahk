    #SingleInstance Force
	
RandomSleep(min, max) {

    Random, rand, min, max

    Sleep rand

}

Random(min,max) {
	Random, out, %min%, %max%
	return	out
}
	

q::
Loop
{		
Click
RandomSleep(16, 68)
Click
RandomSleep(593, 658)

}
return

w::Pause,Toggle