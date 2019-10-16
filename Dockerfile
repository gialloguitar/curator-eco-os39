FROM python:3

RUN pip3 install PyYAML python-crontab pytz

ENV CURATOR_CONF_LOCATION=/usr/src/app/config.yaml \
    CURATOR_SCRIPT_LOG_LEVEL=INFO \
    CURATOR_DEFAULT_DAYS=31 \
    CURATOR_DEFAULT_SIZE=10 \
    CURATOR_RUN_HOUR=0 \
    CURATOR_RUN_MINUTE=0 \
    CURATOR_RUN_TIMEZONE=UTC \
    CURATOR_TIME_LOOP=15

WORKDIR /usr/src/app
COPY ./app .
CMD [ "python", "-u", "./run_cron.py" ]
