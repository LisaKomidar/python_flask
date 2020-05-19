FROM ubuntu:16.04

RUN apt-get update && apt-get install -y --no-install-recommends python3  python-pip python-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
 
# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /var/www/app/requirements.txt

WORKDIR /html

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "main.py" ]
