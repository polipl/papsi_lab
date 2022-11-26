#1/bin/sh
docker-compose up -d
docker cp files/dump.sql papsi_lab_postgres_1:/
docker exec papsi_lab_postgres_1 psql -U postgres -f /dump.sql