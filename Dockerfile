FROM python:2.7

COPY requirements.txt ./
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

WORKDIR /usr/src/app
COPY ./app .
CMD [ "python", "./run_cron.py" ]
