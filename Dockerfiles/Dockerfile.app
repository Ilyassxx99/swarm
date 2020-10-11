ARG BASE_IMAGE
FROM $BASE_IMAGE
ENV PYTHONUNBUFFERED 1
WORKDIR /code
COPY $POLLS_PATH .
EXPOSE 8000
RUN pip install psycopg2==2.8.2 mysqlclient==1.4.2 cx-Oracle==7.1.3 dj-database-url==0.5.0
RUN python manage.py makemigrations polls
CMD ["uwsgi", "uwsgi-nginx.ini"]
