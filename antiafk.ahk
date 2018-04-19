#SingleInstance Force

RandomSleep(min, max) {

    Random, rand, min, max

    Sleep rand

}

q::
Loop
{
RandomSleep(222, 511079)
send {BACKSPACE}
Sleep, 13
}
return

w::Pause,Toggle
