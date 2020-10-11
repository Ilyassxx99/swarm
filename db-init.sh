#!/bin/bash
docker-compose -f docker-compose-deploy.yml run --rm app python manage.py migrate
