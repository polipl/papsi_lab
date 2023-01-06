docker-compose -f docker-compose.yml up -d
docker exec -i papsi_lab_postgres_1 psql -U postgres -c "CREATE DATABASE itticket"
docker exec -i papsi_lab_postgres_1 psql -U postgres -c "CREATE USER itticket WITH PASSWORD 'adminsql123q'"
docker exec -i papsi_lab_postgres_1 psql itticket -U postgres -c "ALTER ROLE itticket SET client_encoding TO 'utf8'"
docker exec -i papsi_lab_postgres_1 psql itticket -U postgres -c "ALTER ROLE itticket SET default_transaction_isolation TO 'read committed'"
docker exec -i papsi_lab_postgres_1 psql itticket -U postgres -c "ALTER ROLE itticket SET timezone TO 'UTC'"
docker exec -i papsi_lab_postgres_1 psql itticket -U postgres -c "GRANT ALL PRIVILEGES ON SCHEMA public to itticket"
docker exec -i papsi_lab_postgres_1 psql itticket -U postgres -c "GRANT ALL PRIVILEGES ON DATABASE itticket to itticket"
docker exec -i papsi_lab_postgres_1 psql itticket -U postgres -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO itticket"
docker exec -i papsi_lab_postgres_1 psql itticket -U postgres -c "GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO itticket"
docker cp "files/dump-pgsql.sql" "papsi_lab_postgres_1:/"
docker exec -i papsi_lab_postgres_1 psql -U postgres -f dump-pgsql.sql


