FROM python:2.7
COPY ./app /usr/src/
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


CMD [ "python", "./run_cron.py" ]
