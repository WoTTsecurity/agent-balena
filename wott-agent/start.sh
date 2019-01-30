#!/bin/bash
# vim: tabstop=4 shiftwidth=4 softtabstop=4
# -*- sh-basic-offset: 4 -*-

set -euo pipefail
IFS=$'\n\t'

while true; do
    wott-agent
    python3 -c 'import agent; print("I am {}".format(agent.get_device_id()))'
    sleep 3600
done
