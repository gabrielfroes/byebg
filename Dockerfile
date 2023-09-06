FROM python

WORKDIR /opt/python

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY src src