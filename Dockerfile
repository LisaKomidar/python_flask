FROM python:3.7-alpine as base

FROM base as builder

RUN mkdir /install

WORKDIR /install

COPY requirements.txt /requirements.txt
RUN pip install --install-option="--prefix=/install" -r /requirements.txt

FROM baseCOPY --from=builder /install /usr/local
COPY src /app

WORKDIR /app

CMD [ "main.py" ]
