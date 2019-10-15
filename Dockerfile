FROM python:3
RUN pip install PyYAML python-crontab pytz

WORKDIR /usr/src/app
COPY ./app .
CMD [ "python", "./run_cron.py" ]
