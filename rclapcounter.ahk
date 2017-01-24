#SingleInstance force
 
    Gosub,currentTime
    Gosub,updateGui
    SetTimer,currentTime,500
 
    FillCount := 1
    ResetTime := A_TickCount
    CurrentTime := A_TickCount
    Difference := CurrentTime - ResetTime
 
    Gui,-border -caption +alwaysontop +disabled +owner -sysmenu
    Gui,color,green
    Gui,add,Text, vCount w30 h11 +center,%FillCount%
    Gui,add,Text, vTime w30 h11 +center,%Difference%
    Gui,show
 
 
    Loop
    {
 
    ifWinExist, ahk_class SunAwtFrame
    {
    ifWinActive, ahk_class SunAwtFrame
    {
    Gui,+alwaysontop
    }
    else
    {
    Gui,-alwaysontop
    }
    WinGetPos,orx,ory,width,height, ahk_class SunAwtFrame
    winX := orx + 719
    winY := ory + 54
    Gui,show,NA x%winX% y%winy%
    Sleep,500
    }
    else
    {
    Gui,Submit
    Sleep,2000
    }
    }
    return
 
    3::
    FillCount += 1
    if(Fillcount > 9)
    {
    FillCount = 1
    }
    if(FillCount >= 8)
    {
    if(FillCount = 9)
    {
    Gui,color,red
    }
    else
    {
    Gui,color,yellow
    }
    }
    else
    {
    Gui, color, green
    }
    ResetTime = %A_TickCount%
    GuiControl,text,Count,%FillCount%
    GuiControl,text,Time,0
    return
 
    currentTime:
    CurrentTime = %A_TickCount%
    gosub,updategui
    return
 
    updateGui:
    difference := (CurrentTime - ResetTime)
    difference /= 1000
    GuiControl,text,Time,%difference%
    return