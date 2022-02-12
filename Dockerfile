FROM python:3.8.8-slim

RUN apt-get update && \
    apt-get install -qq -y rsync libssl-dev libacl1-dev build-essential && \
    /usr/local/bin/python -m pip install --upgrade pip

COPY requirements.txt /tmp/requerements.txt

RUN pip3 install -r /tmp/requerements.txt && rm /tmp/requerements.txt



