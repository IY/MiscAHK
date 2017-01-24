    #SingleInstance Force

     
Random, rand, 1880, 57888
Random, rand2, 21, 487
     
     
	 
RandomSleep(min, max) {

    Random, rand, min, max

    Sleep rand

}


q::
Loop
{	
RandomSleep(1880, 57888)
Click
    	Sleep, 18
RandomSleep(21, 487)
Click
}
return

w::Pause,Toggle