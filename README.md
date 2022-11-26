# Simple IT Ticket application
env:
- django application docker container <br />
- mariadb docker container <br />
<br />
build and run cmd:<br />

docker-compose up -d <br />

restore db: </br >
docker cp files/dump.sql papsi_lab_postgres_1:/ <br />
docker exec papsi_lab_postgres_1 psql -U postgres -f /dump.sql <br />
