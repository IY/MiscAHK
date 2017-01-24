`::Suspend
2::
	BlockInput On
	X=0
	BlockInput Off
	return
	
1::

	BlockInput On
	X+=2
		
		if (X==2){
Click 
Random, rand1, 481,621
Sleep % rand1

		}
		if (X==4){
Click 
Random, rand2, 421,611
Sleep % rand2
		}
		if (X==6){
			Mousemove,0,90,0,R

		}
		if (X==8){
Mousemove,-110,0,0,R
Random, rand3, 461,619
Sleep % rand3

		}
		if (X==10){
			click
		}
		if (X==12){
		Mousemove,-305,0,0,R
	Random, rand4, 451,631
Sleep % rand4
		}
		if (X==14){
			Mousemove,0,-90,0,R
		Random, rand5, 249,369
Sleep % rand5
		}
		if (X==16){
			click
		}
		if (X==18){
			Mousemove,415,0,0,R
 Random, rand6, 699,851
Sleep % rand6
				X=0
			
		}
	BlockInput Off
	return


	
