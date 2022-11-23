#!/bin/sh
if [ ! -f UUID ]; then
  UUID="02aaeb74-7ba0-4aaf-b0f3-f75bc720fd74"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

