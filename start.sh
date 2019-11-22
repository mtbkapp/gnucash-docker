#!/bin/bash -e

if [ ! -f $HOME/.vnc/passwd ]; then 
  mkdir -p $HOME/.vnc
  echo $VNC_PASSWD | tigervncpasswd -f > $HOME/.vnc/passwd
  chmod 0600 $HOME/.vnc/passwd
fi

rm -rf /tmp/.X1*

foreman start
