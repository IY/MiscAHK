`::suspend
return
1:: Click right ; Right clicks using the mouse.
return ; Not really necessary to include return but it ensures that multiple commands are not ran.
2:: Mousemove, 0, 36, 0, R ; Moves 36 pixels south. Is relative to the mouse position
return
3:: Click ; Left clicks using the mouse
return
4:: Mousemove, 0, -36, 0, R ; Moves 36 pixels south. Is relative to the mouse position
return