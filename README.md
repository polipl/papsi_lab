# Simple IT Ticket application
env:
- django application docker container <br />
- postgresql docker container <br />
<br />
build and run cmd:<br />

docker-compose up -d <br />

restore db: </br >
docker cp files/dump-pgsql.sql papsi_lab_postgres_1:/ </br >
docker exec -i papsi_lab_postgres_1 psql -U postgres -f dump-pgsql.sql <br /><br />

warning! do not use cleanup.sh or cleanup.bat - docker system prune -a -f<br />



