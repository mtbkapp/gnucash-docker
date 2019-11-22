FROM ubuntu:18.04 

ARG DEBIAN_FRONTEND=noninteractive

# upgrade all packages
RUN apt update && apt upgrade -y

# install packages

# vnc stuff
RUN apt install -y novnc
RUN apt install -y tigervnc-standalone-server

# window manager
RUN apt install -y openbox

# the app
RUN apt install -y gnucash

# for novnc
RUN apt install -y net-tools

# for debugging
RUN apt install -y vim curl


# create user
RUN useradd novnc
RUN mkdir /home/novnc 

# add openbox startup script
RUN mkdir -p /home/novnc/.config/openbox
RUN echo "exec gnucash &" > /home/novnc/.config/openbox/autostart

# add startup script
# make it executable
COPY start.sh /home/novnc/start.sh
RUN chmod u+x /home/novnc/start.sh

# setup novnc cert?

# switch to user
RUN chown -R novnc:novnc /home/novnc
USER novnc

# set cmd
CMD $HOME/start.sh


