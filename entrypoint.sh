#!/bin/sh -e

if [ "${DEBUG}" == "true" ]; then
  set -x
fi

HOMEASSISTANT_IP=${HASS_IP:=127.0.0.1}
HOMEASSISTANT_PORT=${HASS_PORT:=5684}
PROXY_UDP_IP=${PROXY_IP:=224.0.1.187}
PROXY_UDP_PORT=${PROXY_PORT:=5683}

# Start proxy
 python3 /opt/proxy.py --hass-ip=$HOMEASSISTANT_IP --hass-port=$HOMEASSISTANT_PORT --proxy-ip=$PROXY_UDP_IP --proxy-port=$PROXY_UDP_PORT