#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    exec sudo -- "$0" "$@"
fi

cd "$(dirname "$0")"


cp homeseer.service /etc/systemd/system/
systemctl daemon-reload

echo "If you haven't already, please run: sudo apt install mono-complete mono-vbnc avahi-daemon libttspico-utils alsa-utils"
echo "To start, run: sudo systemctl enable/start homeseer"
