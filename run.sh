#!/bin/bash
docker run --name gnucash -d -p6080:6080 -eVNC_PASSWD=Password ubuntu-novnc:latest
