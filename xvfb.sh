#!/bin/bash

pids=$(pidof /usr/bin/Xvfb)
if [ -n "$pids" ]; then
    processes="$(ps --format command --no-headers -ww --pid $pids)"
else
    echo "Not running"
fi
