FROM openshift/python-35-centos7

COPY requirements.txt ./
RUN pip install --upgrade pip && \
    pip install PyYAML python-crontab pytz
    
WORKDIR /usr/src/app
COPY ./app .
CMD [ "python", "./run_cron.py" ]
