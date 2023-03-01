#!/bin/sh 

sleep .5

xdotool key --clearmodifiers "alt+0"
xdotool key --clearmodifiers "ctrl+l"
sleep .5
xdotool key --clearmodifiers "ctrl+c"

xdotool key --clearmodifiers "alt+9"
xdotool key --clearmodifiers "ctrl+shift+v"
sleep .5
xdotool key --clearmodifiers "Return"

xdotool key --clearmodifiers "alt+0"
xdotool key --clearmodifiers "ctrl+w"


exit


xdotool key alt_l + 9
xdotool key ctrl+c
xdotool key ctrl+shift+v

#xdotool key alt_l + 0
#xdotool key ctrl + w

