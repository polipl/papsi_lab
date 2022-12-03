docker-compose up -d
docker cp "files/dump-pgsql.sql" "papsi_lab_postgres_1:/"
docker exec -i papsi_lab_postgres_1 psql -U postgres -f dump-pgsql.sql


