## Testing out a basic running program ##
FROM python as base

WORKDIR /opt/python

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY src src

## Generate executable ##
FROM tobix/pywine:3.11 as compiler

WORKDIR /opt/python

COPY requirements.txt requirements.txt

RUN wine pip install -r requirements.txt

COPY src src
COPY byebg.ico byebg.ico

ENTRYPOINT wine pyinstaller --onefile --noconsole --icon=byebg.ico ./src/byebg.py