#!/bin/sh
if [ ! -f UUID ]; then
  UUID="7d3a4ca0-488a-4a7c-a433-36a22bffe35a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

