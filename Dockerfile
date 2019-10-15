FROM centos/python-27-centos7

WORKDIR /usr/src/app
COPY ./app .
CMD [ "python", "./run_cron.py" ]
