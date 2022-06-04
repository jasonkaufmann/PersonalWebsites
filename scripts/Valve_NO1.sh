#!/bin/sh

#this script will do the following : 
#set cold plate valve (x122) Valve 2 to 39 deg 
#set cool plate valve (x121) Valve 1 to 53 deg
#set power tray bypass valve (x126) Valve 5 to 43 deg
#set host tray bypass valve (x125) Valve 6 to 28 deg

echo "setting valves to Normal Operation 1"

#setting Valve 2: 
cansend can0 200#0210030000000000
sleep 0.5
cansend can0 200#062FD00303102700

sleep 1
#setting Valve 1: 
cansend can0 200#0210030000000000
sleep 0.5
cansend can0 200#062FD003030F3500

sleep 1
#setting Valve 5:
cansend can0 200#0210030000000000
sleep 0.5
cansend can0 200#062FD00303132b00

sleep 1
#setting Valve 6:
cansend can0 200#0210030000000000
sleep 0.5
cansend can0 200#062FD00303141C00

echo "Done"
