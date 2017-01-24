`::Suspend
2::
        BlockInput On
        X=0
        BlockInput Off
        return
space::
        BlockInput On
        X+=1
                if (X==1 or X==5 or X==9){
                        Click right
                }
                if (X==2){
                        MouseMove, 0, 38, 0, R
                        Sleep, 2
                }
                if (X==3){
                        Click
                        Sleep, 950
                }
                if (X==4){
                        MouseMove, 0, -38, 0, R
x=0
                        Sleep, 2


                }
        BlockInput Off
        return
