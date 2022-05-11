FROM python:3.8.13

WORKDIR /app

COPY ./app /app

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r /app/requirements.txt

EXPOSE 8080

# name of application module
ENV APPLICATION_MODULE main:application

CMD gunicorn --conf "/app/gunicorn_conf.py" $APPLICATION_MODULE
