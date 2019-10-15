FROM centos/python-27-centos7
RUN pip install PyYAML python-crontab pytz
WORKDIR /usr/src/app
COPY ./app .
CMD [ "python", "./run_cron.py" ]
