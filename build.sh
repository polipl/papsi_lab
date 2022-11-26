#1/bin/sh
docker-compose up -d

docker cp files/dump-pgsql.sql papsi_lab_postgres_1:/
docker exec -i papsi_lab_postgres_1 psql -U postgres -f dump-pgsql.sql

docker cp files/dump-mysql.sql papsi_lab_mariadb_1:/
#docker exec papsi_lab_mariadb_1 mysql -u root -padminsql123q < dump-mysql.sql
cat files/dump-mysql.sql | docker exec -i papsi_lab_mariadb_1 mysql -uroot -padminsql123q


