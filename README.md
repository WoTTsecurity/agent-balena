# Balena Boilerplate container for WoTT

Reference implementation of WoTT Agent for Balena.

The are multiple containers involved (all managed by `docker-compose.yml`):

 * wott-agent: This container is responsible for receiving a certificates from WoTT as well as doing certificate rotations
 * google-core-iot: A "wott-enabled" version of Google Core IoT's MQTT example.

## Usage

 * Create a [Balena](https://www.balena.io) account
 * Clone this repository
 * Modify it to fit your needs
 * Follow Balena's [Getting Started Buide](https://www.balena.io/fin/docs/getting-started/)
