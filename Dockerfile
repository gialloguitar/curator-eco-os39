FROM python:2.7
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY ./curator-test-app /usr/src/app
WORKDIR /usr/src/app
CMD [ "python", "./run_cron.py" ]
