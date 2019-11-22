# gnucash-docker

Scripts to build a docker container to run Gnucash and use it from a browser.

Main packages:
1. novnc - web based vnc viewer
2. tigervnc - vnc server
3. openbox - window manager
4. gnucash - financial management software

Running:
1. build with `./build.sh`
2. Edit run.sh with chosen vnc password
3. `./run.sh`

Stopping:
1. `docker stop <container id or name>`

Starting again after stop:
1. `docker start <container id or name>`

Todo
1. security, connection between browser and vnc not secured, and probably other 
   things.
2. ensure tigervnc is only listening locally
3. gnucash persistence: postgresql, docker volumes, something

