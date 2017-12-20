#!/bin/bash

sudo cp systemd/smartledclock.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable smartledclock.service
sudo systemctl start smartledclock.service

exit 0