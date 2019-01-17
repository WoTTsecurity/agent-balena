#!/bin/bash
# vim: tabstop=4 shiftwidth=4 softtabstop=4
# -*- sh-basic-offset: 4 -*-

set -euo pipefail
IFS=$'\n\t'

CERT_PATH=/data/wott/certs
mkdir -p $CERT_PATH

while true; do
    CERT_PATH="$CERT_PATH" wott-agent
    python3 -c 'import agent; print("I am {}".format(agent.get_device_id()))'
    sleep 3600
done
