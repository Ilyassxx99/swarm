#!/bin/bash
docker-compose -f docker-compose-deploy.yml run --rm app1 python manage.py migrate
