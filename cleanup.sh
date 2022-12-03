#!/bin/sh
docker-compose stop
docker system prune -a -f
rm -fr files/postgres

