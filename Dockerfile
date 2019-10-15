FROM openshift/python-35-centos7

RUN pip install PyYAML python-crontab pytz

WORKDIR /usr/src/app
COPY ./app .
CMD [ "python", "./run_cron.py" ]
