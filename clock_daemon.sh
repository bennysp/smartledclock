#!/bin/bash

#====================
# Configure Settings
#====================

# Set Base Directory 

basedir=/home/pi/smartledclock

# Set your bottom text

bottomtext="Testing..."

# Set the brightness here

#brightness=100
brightness=50
#brightness=25


# Set you color here

#color=255,0,0 #red
#color=25,0,0 #dark red
#color=0,255,0 #green
#color=0,0,255 #blue
color=255,255,255 #white

# Set you color here

bottomcolor=255,0,0 #red
#bottomcolor=25,0,0 #dark red
#bottomcolor=0,255,0 #green
#bottomcolor=0,0,255 #blue
#bottomcolor=255,255,255 #white

#=================
# Run the script
#================= 

# For raspberry pi 2/3, you need to set the slowndown for gpio; 
# mapping the adafruit hat for gpio
# Reduce the PWM bits - at the default of 11, when you reduce the brightness, it flickers, this prevents flickering
sudo ${basedir}/clock --led-gpio-mapping=adafruit-hat --led-chain=2 --led-slowdown-gpio=2 -b ${brightness} -f ${basedir}/fonts/7x14B.bdf -x 5 -y 0.5 -C ${color} --led-brightness=${brightness} --led-pwm-bits=5 -d '%I:%M %p' -t ${bottomtext} -L ${bottomcolor} & 

exit 0
