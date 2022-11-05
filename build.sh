docker run --name mariadb -v $(pwd)/files/mysqldb:/var/lib/mysql -e MARIADB_ROOT_PASSWORD=adminsql123q -p 3306:3306 --network itticketnet -d mariadb:latest
docker build -t python-django -f ./Dockerfile .
docker run --name itticket -p 8000:8000 --network itticketnet -v $(pwd)/ITticket/:/ITticket python-django
