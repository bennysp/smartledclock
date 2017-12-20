#!/bin/bash

sudo cp systemd/smartclock.service /lib/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable smartclock.service
sudo systemctl start smartclock.service

exit 0