FROM python:3.11 as python-base

COPY requirements.txt requirements.txt

COPY main.py main.py

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

# Entry point to our app
ENTRYPOINT /usr/local/bin/uvicorn main:app --host 0.0.0.0 --port 8001