#!/usr/bin/env bash
curl -C - -o /data/seed/restaurants.zip "https://university.mongodb.com/static/MongoDB_2017_M201_February/handouts/restaurants.json.3a811464e735.zip"
unzip -p  /data/seed/restaurants.zip restaurants.json |mongoimport --host mongo --port 30000 -d m201 -c restaurants
