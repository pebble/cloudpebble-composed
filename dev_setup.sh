#!/bin/bash
docker-compose build
docker-compose run web sh -c "rm -rf bower_components && cd /tmp && python /code/manage.py bower install && mv bower_components /code/"
docker-compose stop
