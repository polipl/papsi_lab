FROM python:3.10-slim
COPY /ITticket/requirements.txt requirements.txt
RUN ["apt-get", "update"]
RUN ["apt-get", "-y", "install","libmariadb-dev", "gcc", "coreutils"]
RUN ["pip", "install", "-r", "/requirements.txt"]
EXPOSE 8000
WORKDIR "/ITticket"
ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000" ]
