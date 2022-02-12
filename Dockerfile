FROM python:3.9-slim

RUN apt-get update && \
    apt-get install -qq -y rsync libssl-dev libacl1-dev build-essential && \
    /usr/local/bin/python -m pip install --upgrade pip && \
    ln -s /usr/local/bin/python3.9 /usr/bin/python

COPY requirements.txt /tmp/requerements.txt

RUN pip3 install -r /tmp/requerements.txt && rm /tmp/requerements.txt



