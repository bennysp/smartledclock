#!/bin/bash

make
chmod 755 systemd/clock_daemon.sh
chmod 755 systemd/install_service.sh
systemd/install_service.sh

exit 0