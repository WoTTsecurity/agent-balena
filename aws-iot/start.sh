#!/bin/bash
# vim: tabstop=4 shiftwidth=4 softtabstop=4
# -*- sh-basic-offset: 4 -*-

set -euo pipefail
IFS=$'\n\t'

AWS_HOST=${AWS_HOST}
AWS_CLIENT_ID=${AWS_CLIENT_ID}

while true; do
    python connect.py
    sleep 30
done



