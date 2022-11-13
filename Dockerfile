FROM python:3.10-slim
COPY /ITticket/requirements.txt requirements.txt
COPY /ITticket /ITticket
COPY /files/conf/supervisor /etc/supervisor
COPY /files/conf/nginx /etc/nginx
RUN ["apt-get", "update"]
RUN ["/usr/bin/update-alternatives", "--install", "/usr/bin/python3", "python", "/usr/local/bin/python3.10", "0"]
RUN ["apt-get", "-y", "install","libmariadb-dev", "gcc", "nginx", "supervisor", "mc", "procps"]
RUN ["pip", "install", "-r", "/requirements.txt"]
EXPOSE 8000 80 443
WORKDIR "/ITticket"
#ENTRYPOINT ["python","manage.py","runserver","0.0.0.0:8000" ]
#ENTRYPOINT [ "/usr/local/bin/gunicorn", "ITticket.wsgi:application", "-b", "0.0.0.0:8000" ]
#CMD [ "tail", "-f", "/dev/null" ]
ENTRYPOINT [ "/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf" ] 