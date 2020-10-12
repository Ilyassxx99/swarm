#!/bin/sh
docker login -u ilyassifez -p Ilyassifez123
docker tag $1 ilyassifez/micro-images:www-proxy-kube-latest
docker tag $2 ilyassifez/micro-images:www-proxy-latest
docker tag $3 ilyassifez/micro-images:app-latest
docker tag $4 ilyassifez/micro-images:db-latest
docker push ilyassifez/micro-images:www-proxy-kube-latest
docker push ilyassifez/micro-images:www-proxy-latest
docker push ilyassifez/micro-images:www-app-latest
docker push ilyassifez/micro-images:www-db-latest
