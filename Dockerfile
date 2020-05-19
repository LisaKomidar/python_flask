FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
RUN apk --update add bash nano
ENV STATIC_URL /html/static
ENV STATIC_PATH /var/www/html/app/static
COPY ./requirements.txt /var/www/html/requirements.txt
RUN pip install -r /var/www/html/requirements.txt