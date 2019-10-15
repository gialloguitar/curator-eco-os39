FROM python:2.7

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./curator-test-app .

CMD [ "python", "./run_cron.py" ]
