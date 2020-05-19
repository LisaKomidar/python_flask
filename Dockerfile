FROM python:3.7-alpine as base


# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /var/www/app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "main.py" ]
