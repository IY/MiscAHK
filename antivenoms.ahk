`::suspend
return
q::
Click right
return

w::
MouseMove 0,67,1,R
return

e::
Count += 1
Click
return






a::
Click
return

s::
MouseMove 0,150,1,R
Click
return



d::
If (Count = 1 or Count = 2 or Count = 3 or Count = 5 or Count = 6 or Count = 7 or Count = 9 or Count = 10 or Count = 11)
{
	MouseMove 43,-150,1,R
	Count += 1
} else if (Count = 4 or Count = 8)
{
	MouseMove -129,-115,1,R
	Count += 1
} else if (Count = 12)
{
	Count = 0
}
return