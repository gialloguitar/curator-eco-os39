FROM centos/python-27-centos7
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /usr/src/app
COPY ./app .
CMD [ "python", "./run_cron.py" ]
