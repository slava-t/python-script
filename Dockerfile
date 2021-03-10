FROM python:3.8.8-slim

RUN apt-get update && apt-get install -qq -y rsync

COPY requirements.txt /tmp/requerements.txt

RUN pip3 install -r /tmp/requerements.txt && rm /tmp/requerements.txt



