#!/bin/sh
sleep 2
xset -display :0 s off -dpms
xte -x :0 'mousemove 4000 300'
#wait until networks is ready and pingplay already started or not
sleep 10
#ensure pingplay is started otherwise, load it again
ps -e | grep player_raspi
retval=$?
if [ "$retval" = 1 ]
then
    /home/pi/player_raspi
fi
#chromium -incognito -kiosk "https://app.pingview.io/m/ENTREPRISE/POINTAFFICHAGE"
