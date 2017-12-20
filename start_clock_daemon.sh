#!/bin/sh

#start the clock dameon
sudo ./clock --led-gpio-mapping=adafruit-hat --led-chain=2 --led-slowdown-gpio=3 -b 50 -f fonts/7x14B.bdf -x 5 -y 9 -d '%I:%M %p' --led-daemon