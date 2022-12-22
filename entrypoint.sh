#!/usr/bin/env bash

rm -f /dev/ppp && mknod /dev/ppp c 108 0 \
    && ./parallel_commands.sh "$SSTPC_CMD" \
    "bash ./curl.sh"