#!/bin/bash

# Proses build image docker dengan nama item-app:v1
docker build -t item-app:v1 .

# Menampilkan Docker Images
docker images

# Login Docker untuk proses upload ke docker hub
echo $PASSWORD_DOCKER_HUB | docker login --username agungxtwo --password-stdin

# Mengubah nama image item-app:v1 menjadi agungxtwo/item-app:v1 agar dapat di upload ke repo docker hub
docker tag item-app:v1 agungxtwo/item-app:v1

# push atau upload image ke dockerhub
docker push agungxtwo/item-app:v1

