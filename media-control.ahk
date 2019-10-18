; Media control
; Use Ctrl + Win + <KEY> to control volume and media play
; Useful for using with a keyboard with a keypad
^#NumpadSub:: Send {Volume_Down} 
^#NumpadAdd:: Send {Volume_Up} 
^#Numpad0:: Send {Volume_Mute} 
^#NumpadDiv:: Send {Media_Prev}
^#NumpadMult:: Send {Media_Next}
^#Space:: Send {Media_Play_Pause}

; Use Win + Alt + Arrows to next and previous track
; Useful for using with laptop keyboard

#!Left:: Send {Media_Prev}
#!Right:: Send {Media_Next}
#!Down:: Send {Volume_Down} 
#!Up:: Send {Volume_Up} 
#!Space:: Send {Volume_Mute} 
