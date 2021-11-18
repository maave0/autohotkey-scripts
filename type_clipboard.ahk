
#NoEnv
SetWorkingDir %A_ScriptDir%

SetKeyDelay, 100
^Numpad1::
 {
    SendRaw %clipboard%
    Return
 }