#!/usr/bin/env bash

docker volume create --name=nxsacademy-ardb-data
docker volume create --name=nxsacademy-elastic-data
docker volume create --name=nxsacademy-db-data
docker volume create --name=nxsacademy-rabbitmq-data