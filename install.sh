#!/bin/bash

echo **Spin up containers**
docker-compose up -d

echo **Get Radarr APIkey**
echo "Waiting for Radarr to be up..."
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:7878)" != "200" ]]
do sleep 5
done
# RadarrAPIKey=($(grep -oP '(?<=ApiKey>)[^<]+' "$SHARE_LOCATION/htpc/radarr/config/config.xml"))
RadarrAPIKey=$(curl -sS localhost:7878 | grep ApiKey | cut -d"'" -f 2)
echo $radarrAPIKey

echo **Get Sonarr APIkey**
echo "Waiting for Sonarr to be up..."
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:8989)" != "200" ]]
do sleep 5
done

# SonarrAPIKey=($(grep -oP '(?<=ApiKey>)[^<]+' "$SHARE_LOCATION/htpc/sonarr/config/config.xml"))
SonarrAPIKey=$(curl -sS localhost:8989 | grep ApiKey | cut -d"'" -f 2)
echo $SonarrAPIKey

