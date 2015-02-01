#!/bin/bash

PIDFILE="/var/run/haproxy.pid"
CONFIG="haproxy.cfg"

cd /etc/haproxy

haproxy -D -f "$CONFIG" -p "$PIDFILE"

while inotifywait -e modify "$CONFIG"; do
  haproxy -D -f "$CONFIG" -p "$PIDFILE" -sf "$(cat $PIDFILE)"
done
