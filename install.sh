#!/bin/bash

echo **Spin up containers**
docker-compose up -d

echo **Get Radarr APIkey**
radarrAPIKey=($(grep -oP '(?<=ApiKey>)[^<]+' "$SHARE_LOCATION/htpc/radarr/config/config.xml"))
echo $radarrAPIKey

