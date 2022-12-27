#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6cd81c17-022c-4b51-9050-eb162419cd3c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

