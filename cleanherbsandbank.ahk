`::Suspend
0::
4::
	BlockInput On
	X=0
	Z=0
	BlockInput Off
	return
1::
	BlockInput On
	X+=1
		if (X==1 or X==3 or X==5 or X==7 or X==9 or X==11 or X==13 or X==15 or X==17 or X==19 or X==21 or X==23 or X==25 or X==27 or X==29 or X==31 or X==33 or X==35 or X==37 or X==39 or X==41 or X==43 or X==45 or X==47 or X==49 or X==51 or X==53 or X==55 or X==57){
			Click
		}
		if (X==2 or X==4 or X==6 or X==8 or X==10 or X==12 or X==16 or X==18 or X==20 or X==22 or X==24 or X==26 or X==30 or X==32 or X==34 or X==36 or X==38 or X==40 or X==44 or X==46 or X==48 or X==50 or X==52 or X==54){
			MouseMove, 0, 36, 0, R
		}
		if (X==14 or X==28 or X==42){
			MouseMove, 42, -216, 0, R
		}
		if (X==56){
			MouseMove, -370, -235, 0, R
			Z=0
		}
	BlockInput Off
	return
2::
	BlockInput On
	Z+=1
		if(Z==1){
			MouseMove, 110, 100, 0, R
		}
		if(Z==2 or Z==6 or Z==8){
			Click
		}
		if(Z==3){
			MouseMove, -355, -210, 0, R
		}
		if(Z==4){
			Click right
		}
		if(Z==5){
			MouseMove, 0, 103, 0, R
		}
		if(Z==7){
			MouseMove, 395, -180, 0, R
		}
		if(Z==9){
			MouseMove, 94, 206, 0, R
			X=0
		}
	BlockInput Off
	return
3::
	BlockInput On
	X+=1
		if (X==1 or X==3 or X==5 or X==7 or X==9 or X==11 or X==13 or X==15 or X==17 or X==19 or X==21 or X==23 or X==25 or X==27 or X==29 or X==31 or X==33 or X==35 or X==37 or X==39 or X==41 or X==43 or X==45 or X==47 or X==49 or X==51 or X==53 or X==55){
			Click
		}
		if (X==2 or X==4 or X==6 or X==8 or X==10 or X==12 or X==16 or X==18 or X==20 or X==22 or X==24 or X==26 or X==30 or X==32 or X==34 or X==36 or X==38 or X==40 or X==44 or X==46 or X==48 or X==50 or X==52 or X==54){
			MouseMove, 0, 36, 0, R
		}
		if (X==14 or X==28 or X==42){
			MouseMove, 42, -216, 0, R
		}
		if (X==56){
			MouseMove, -370, -235, 0, R
			Sleep, 5
		}
		if (X==57){
			Click
			Sleep, 700
		}
		if(X==58){
			MouseMove, 110, 100, 0, R
		}
		if(X==59 or X==63 or X==65){
			Click
		}
		if(X==60){
			MouseMove, -355, -210, 0, R
		}
		if(X==61){
			Click right
		}
		if(X==62){
			MouseMove, 0, 103, 0, R
		}
		if(X==64){
			MouseMove, 395, -180, 0, R
		}
		if(X==66){
			MouseMove, 94, 206, 0, R
			X=0
			Sleep, 900
		}
	BlockInput Off
	return

; Use resizeable mode with the smallest window and zoom all the way in (alt+scroll wheel), stand at the bank booth with the camera down so the booth fills most of the screen.
; Preferably the Grand Exchange bank booth.
; Place herbs in the very first slot in any bank tab.
; Hover over the center of the herb in the very first inventory slot before beginning.
; Hold 1 to clean herbs, then open the bank.
; Hold 2 when the bank pops up to do the banking sequence, then get ready to clean again.
; Hold 3 to do a combination of 1 and 2 non-stop.
; Press 4 or 0 to reset the script progress for the 1 and 2 keys.
; Press ~ ` key to suspend/unsuspend the script.