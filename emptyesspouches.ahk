`::Suspend
0::
3::
	BlockInput On
	X=0
	BlockInput Off
	return
1::
	BlockInput On
	X+=1
		if (X==1 or X==5 or X==9){
			Click right
		}
		if (X==2 or X==6 or X==10){
			MouseMove, 0, 36, 0, R
		}
		if (X==3 or X==7 or X==11){
			Click
		}
		if (X==4 or X==8){
			MouseMove, 42, -36, 0, R
		}
		if (X==12){
			MouseMove, 42, -36, 0, R
			X=0
			Sleep, 2000
		}
	BlockInput Off
	return
2::
	BlockInput On
	X+=1
		if (X==1 or X==5 or X==9 or X==13){
			Click right
		}
		if (X==2 or X==6 or X==10 or X==14){
			MouseMove, 0, 36, 0, R
		}
		if (X==3 or X==7 or X==11 or X==15){
			Click
		}
		if (X==4 or X==8 or X==12){
			MouseMove, 42, -36, 0, R
		}
		if (X==16){
			MouseMove, 42, -36, 0, R
			X=0
			Sleep, 2000
		}
	BlockInput Off
	return
	
; Start hovered over the left-most pouch
; Hold 1 to empty 3 pouches side-by-side
; Hold 2 to empty 4 pouches side-by-side
; Press 0 or 3 to reset the script (if you need to, it's done automatically after each full sequence)
; Press ~ ' to suspend/unsuspend the script