docker-compose stop
echo y | docker system prune -a
rm -fr files/mysqldb
rm -fr files/postgres

