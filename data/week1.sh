#!/usr/bin/env bash
mkdir -p /data
curl -C - -o /data/people.json "https://university.mongodb.com/static/MongoDB_2017_M201_February/handouts/people.a74d7de502b1.json"
mongoimport --host mongo --port 30000 -d m201 -c people /data/people.json
