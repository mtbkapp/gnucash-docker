#!/bin/bash
docker run -d -p6080:6080 -eVNC_PASSWD=Password ubuntu-novnc:latest
