`::Suspend





~::
        BlockInput On
        X=0
        BlockInput Off
        return
1::
       Click
 return
2::
        MouseMove, 42, 0, 0, R
Click
return
3::
       
                        MouseMove, -42, 0, 0, R
     
        BlockInput Off
        return
; Start hovered over the left item and have both items side-by-side
; Hold 1 to add feathers to bolts
; Press 2 to reset the script
; Press ~ ' to suspend/unsuspend the script
