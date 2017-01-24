`::Suspend
0::
	BlockInput On
	X=0
	BlockInput Off
	return
1::
	BlockInput On
	X+=1
		if (X==1 or X==3){
			Click
		}
		if (X==2){
			MouseMove, -383, 0, 0, R
		}
		if (X==4){
			MouseMove, 383, 0, 0, R
			X=0
		}
	BlockInput Off
	return
2::
	BlockInput On
	X+=1
		if (X==1 or X==3){
			Click
		}
		if (X==2){
			MouseMove, -478, 0, 0, R
		}
		if (X==4){
			MouseMove, 478, 0, 0, R
			X=0
		}
	BlockInput Off
	return
3::
	BlockInput On
	X+=1
		if (X==1 or X==3){
			Click
		}
		if (X==2){
			MouseMove, -287, 0, 0, R
		}
		if (X==4){
			MouseMove, 287, 0, 0, R
			X=0
		}
	BlockInput Off
	return
4::
	BlockInput On
	X+=1
		if (X==1 or X==3){
			Click
		}
		if (X==2){
			MouseMove, -192, 0, 0, R
		}
		if (X==4){
			MouseMove, 192, 0, 0, R
			X=0
		}
	BlockInput Off
	return

; Start with the bolt interface and spellbook opened
; Start with your cursor over the Enchant Crossbow Bolt spell
; Works better if you make sure you can't walk to wherever you're clicking
; Hold 1 to enchant diamond bolts
; Hold 2 to enchant ruby bolts
; Hold 3 to enchant dragonstone bolts
; Hold 4 to enchant onyx bolts
; Press 0 to reset the script
; Press ~ ' to suspend/unsuspend the script