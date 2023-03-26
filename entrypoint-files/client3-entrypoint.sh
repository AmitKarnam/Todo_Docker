#!/bin/sh

CONFIG_FILE=/consul/config/client.json

if [ -f "$CONFIG_FILE" ]; then
  consul agent -config-file=$CONFIG_FILE &
else
  consul agent -dev &
fi

# Wait for consul agent to start 
while ! consul info; do
  sleep 1
done

# Run the consul connect proxy sidecar for web service
consul connect proxy -sidecar-for db &


# Wait for consul connect proxy to start
while ! curl -sS localhost:21002 > dev/null; do
  sleep 1
do

# Execute any additional commands
exec "$@"
