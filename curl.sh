#!/usr/bin/env bash

sleep 5 && \
ip route add 0.0.0.0/1 dev ppp0 && \
curl -s ifconfig.me