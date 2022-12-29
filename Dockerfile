FROM python:3.10-slim
COPY ./ITticket/requirements.txt requirements.txt
RUN apt-get update && apt-get -y install \
    gcc \
    mc \
    procps \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*
RUN ["pip3", "install", "-r", "/requirements.txt"]
COPY ./ITticket /ITticket
EXPOSE 8000
WORKDIR "/ITticket"
ENTRYPOINT [ "/usr/local/bin/gunicorn","-w"," 4","--reload", "--timeout", "900", "ITticket.wsgi:application", "-b", "0.0.0.0:8000", "--capture-output", "--log-level", "debug" ]

