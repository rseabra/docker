#!/bin/sh

TAGS="$1"

cd wordpress
docker build -t $TAGS .
