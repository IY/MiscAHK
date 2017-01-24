    #SingleInstance Force

  
	 
RandomSleep(min, max) {

    Random, rand, min, max

    Sleep rand

}


Loop
{	
RandomSleep(999, 95988)
Send {Up down}
RandomSleep(9, 999)
Send {Up up}
}
return
