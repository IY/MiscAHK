; Script is used for making Oak Dungeon Doors which are ~450k xp/hr depending how good you are.
; Contact me - RSN: Jiklim | Twitter: @JiklimRS | Reddit: /u/Cameronza | Twitch: Cameronza
; Uses q, w & e to build the Oak Dungeon Doors + a, s & d to remove them. These keys can be changed to suit your preferences.

`::suspend
return
q:: Click right ; Right clicks using the mouse
return ; Not really necessary to include return but it ensures that multiple commands are not ran.
w:: MouseMove, 0, 55, 1, R ; Moves 54 pixels south to the build option.
return
e:: Click ; Left clicks using the mouse
return
a:: Click right
return
s:: MouseMove, 0, 103, 1, R ; Moves 108 pixels south to the remove option.
return
d:: Click
return