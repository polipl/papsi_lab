#!/bin/sh
docker compose -f docker-compose-dev.yml stop
docker system prune -a -f
rm -fr files/postgres

