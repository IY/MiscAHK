`::Suspend
2::
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
		if (X==2){
			MouseMove, 0, 88, 0, R
			Sleep, 2
		}
		if (X==3){
			Click
			Sleep, 950
		}
		if (X==4){
			MouseMove, 0, -88, 0, R
			Sleep, 2
		}
		if (X==6 or X==10){
			MouseMove, 0, 58, 0, R
			Sleep, 2
		}
		if (X==7){
			Click
			Sleep, 950
		}
		if (X==8){
			MouseMove, 0, -58, 0, R
			Sleep, 2
		}
		if (X==11){
			Click
			Sleep, 1200
		}
		if (X==12){
			MouseMove, 0, -58, 0, R
			X=0
			Sleep, 2
		}
	BlockInput Off
	return

; Choose a world with the least lag possible, because timings are important
; Hold 1 to smack bitches
; Press 2 to reset the script (if you need to)
; Press ~ ` key to suspend/unsuspend the script