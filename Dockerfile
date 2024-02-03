FROM python:3.11 as python-base

COPY requirements.txt /requirements.txt

RUN pip install --user --upgrade pip

RUN pip install --no-cache-dir --user -r /requirements.txt

# This app run in port 8001
EXPOSE 8001