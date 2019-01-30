#!/bin/bash
# vim: tabstop=4 shiftwidth=4 softtabstop=4
# -*- sh-basic-offset: 4 -*-

set -euo pipefail
IFS=$'\n\t'

while true; do
    python cloudiot_mqtt_example.py \
        --registry_id=${REGISTRY_ID} \
        --cloud_region=${CLOUD_REGION} \
        --project_id=${PROJECT_ID} \
        --device_id=${DEVICE_ID} \
        --algorithm=ES256 \
        --private_key_file=/data/wott/certs/client.key \
        --ca_certs=roots.pem \
        --message_type state \
        device_demo
    sleep 30
done



