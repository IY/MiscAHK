; This script only works when your active window is OSBuddy or default client


`::Suspend
0::
	BlockInput On
	X=0
	BlockInput Off
	return
1::
2::
3::
4::
5::
	BlockInput On
	X+=1
		if (X==1 or X==5 or X==9 or X==13 or X==17 or X==21 or X==25 or X==29 or X==33 or X==37 or X==41 or X==45 or X==49 or X==53 or X==57 or X==61 or X==65 or X==69 or X==73 or X==77 or X==81 or X==85 or X==89 or X==93 or X==97 or X==101 or X==105){
			Click
		}
		if (X==3){
			Click
			Sleep, 3125
		}
		if (X==7 or X==11 or X==15 or X==19 or X==23 or X==27 or X==31 or X==35 or X==39 or X==43 or X==47 or X==51 or X==55 or X==59 or X==63 or X==67 or X==71 or X==75 or X==79 or X==83 or X==87 or X==91 or X==95 or X==99 or X==103){
			Click
			Sleep, 2275
		}
		if (X==2){
			MouseMove, 0, 36, 0, R
		}
		if (X==4){
			MouseMove, 0, -36, 0, R
		}
		if (X==6){
			MouseMove, 0, 72, 0, R
		}
		if (X==8){
			MouseMove, 0, -72, 0, R
		}
		if (X==10){
			MouseMove, 0, 108, 0, R
		}
		if (X==12){
			MouseMove, 0, -108, 0, R
		}
		if (X==14){
			MouseMove, 0, 144, 0, R
		}
		if (X==16){
			MouseMove, 0, -144, 0, R
		}
		if (X==18){
			MouseMove, 0, 180, 0, R
		}
		if (X==20){
			MouseMove, 0, -180, 0, R
		}
		if (X==22){
			MouseMove, 0, 216, 0, R
		}
		if (X==24){
			MouseMove, 0, -216, 0, R
		}
		if (X==26){
			MouseMove, 42, 0, 0, R
		}
		if (X==28){
			MouseMove, -42, 0, 0, R
		}
		if (X==30){
			MouseMove, 42, 36, 0, R
		}
		if (X==32){
			MouseMove, -42, -36, 0, R
		}
		if (X==34){
			MouseMove, 42, 72, 0, R
		}
		if (X==36){
			MouseMove, -42, -72, 0, R
		}
		if (X==38){
			MouseMove, 42, 108, 0, R
		}
		if (X==40){
			MouseMove, -42, -108, 0, R
		}
		if (X==42){
			MouseMove, 42, 144, 0, R
		}
		if (X==44){
			MouseMove, -42, -144, 0, R
		}
		if (X==46){
			MouseMove, 42, 180, 0, R
		}
		if (X==48){
			MouseMove, -42, -180, 0, R
		}
		if (X==50){
			MouseMove, 42, 216, 0, R
		}
		if (X==52){
			MouseMove, -42, -216, 0, R
		}
		if (X==54){
			MouseMove, 84, 0, 0, R
		}
		if (X==56){
			MouseMove, -84, 0, 0, R
		}
		if (X==58){
			MouseMove, 84, 36, 0, R
		}
		if (X==60){
			MouseMove, -84, -36, 0, R
		}
		if (X==62){
			MouseMove, 84, 72, 0, R
		}
		if (X==64){
			MouseMove, -84, -72, 0, R
		}
		if (X==66){
			MouseMove, 84, 108, 0, R
		}
		if (X==68){
			MouseMove, -84, -108, 0, R
		}
		if (X==70){
			MouseMove, 84, 144, 0, R
		}
		if (X==72){
			MouseMove, -84, -144, 0, R
		}
		if (X==74){
			MouseMove, 84, 180, 0, R
		}
		if (X==76){
			MouseMove, -84, -180, 0, R
		}
		if (X==78){
			MouseMove, 84, 216, 0, R
		}
		if (X==80){
			MouseMove, -84, -216, 0, R
		}
		if (X==82){
			MouseMove, 126, 0, 0, R
		}
		if (X==84){
			MouseMove, -126, 0, 0, R
		}
		if (X==86){
			MouseMove, 126, 36, 0, R
		}
		if (X==88){
			MouseMove, -126, -36, 0, R
		}
		if (X==90){
			MouseMove, 126, 72, 0, R
		}
		if (X==92){
			MouseMove, -126, -72, 0, R
		}
		if (X==94){
			MouseMove, 126, 108, 0, R
		}
		if (X==96){
			MouseMove, -126, -108, 0, R
		}
		if (X==98){
			MouseMove, 126, 144, 0, R
		}
		if (X==100){
			MouseMove, -126, -144, 0, R
		}
		if (X==102){
			MouseMove, 126, 180, 0, R
		}
		if (X==104){
			MouseMove, -126, -180, 0, R
		}
		if (X==106){
			MouseMove, 126, 216, 0, R
		}
		if (X==107){
			Click
			X=0
			Sleep, 5000
		}
	BlockInput Off
	return
	
; Start hovered over the tinderbox in your first inventory slot. The rest of your inventory should be logs.
; Hold 1, 2, 3, 4 or 5 to make fires (multiple for the sake of some keys wearing out)
; Press 0 to reset the script (if you need to, it's done automatically after each full sequence)
; Press ~ ' to suspend/unsuspend the script