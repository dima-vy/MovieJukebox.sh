#!/bin/sh
#This is a modification of MovieJukebox.sh from YAMJ project for low power devices, such home NAS. The modification will check if java is running, will wait 30 seconds and check again.


ps | grep [j]ava > /dev/null
while [ $? -eq 0 ]
do
  echo "Process is running."
  sleep 30s
  ps | grep [j]ava > /dev/null
  done
java -Xms256m -Xmx512m -classpath .:./resources:./lib/* com.moviejukebox.MovieJukebox "$@"