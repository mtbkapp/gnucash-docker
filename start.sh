#!/bin/bash -e

if [ ! -f $HOME/.vnc/passwd ]; then 
  mkdir -p $HOME/.vnc
  echo $VNC_PASSWD | tigervncpasswd -f > $HOME/.vnc/passwd
  chmod 0600 $HOME/.vnc/passwd
fi

rm -rf /tmp/.X1*

# start tigervnc-server
tigervncserver -xstartup openbox-session

# start novnc
cd /usr/share/novnc
utils/launch.sh --vnc localhost:5901


