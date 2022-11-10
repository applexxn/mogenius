#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e80da9d3-569a-4756-abc0-c2448ff3472a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

