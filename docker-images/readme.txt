#Create/build docker image
docker build -t python-gunicorn-docker:0.0.1 .

#remove docker image
docker image rm python-gunicorn-docker:0.0.1

#create container
docker-compose up -d

#stop/down
docker stop python-gunicorn-app_app_1

#remove
docker-compose down
Stopping django-gunicorn-app_app_1 ... done
Removing django-gunicorn-app_app_1 ... done
Removing network django-gunicorn-app_default
