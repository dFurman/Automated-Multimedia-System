#!/bin/bash

echo **Spin up containers**
docker-compose up -d

echo **Get Radarr APIkey**
RadarrAPIKey=($(grep -oP '(?<=ApiKey>)[^<]+' "$SHARE_LOCATION/htpc/radarr/config/config.xml"))
echo $radarrAPIKey

echo **Get Sonarr APIkey**
SonarrAPIKey=($(grep -oP '(?<=ApiKey>)[^<]+' "$SHARE_LOCATION/htpc/sonarr/config/config.xml"))
echo $SonarrAPIKey

