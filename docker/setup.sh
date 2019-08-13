#!/usr/bin/env bash

docker exec -i $1 rabbitmqctl add_vhost /DE_development_zed
docker exec -i $1 rabbitmqctl add_user DE_development mate20mg
docker exec -i $1 rabbitmqctl set_user_tags DE_development administrator
docker exec -i $1 rabbitmqctl set_permissions -p /DE_development_zed DE_development ".*" ".*" ".*"

docker exec -i $1 rabbitmqctl add_vhost /US_development_zed
docker exec -i $1 rabbitmqctl add_user US_development mate20mg
docker exec -i $1 rabbitmqctl set_user_tags US_development administrator
docker exec -i $1 rabbitmqctl set_permissions -p /US_development_zed US_development ".*" ".*" ".*"

docker exec -i $1 rabbitmqctl add_vhost /AT_development_zed
docker exec -i $1 rabbitmqctl add_user AT_development mate20mg
docker exec -i $1 rabbitmqctl set_user_tags AT_development administrator
docker exec -i $1 rabbitmqctl set_permissions -p /AT_development_zed AT_development ".*" ".*" ".*"

docker exec -i $1 rabbitmqctl add_user admin mate20mg
docker exec -i $1 rabbitmqctl set_user_tags admin administrator
docker exec -i $1 rabbitmqctl set_permissions -p /DE_development_zed admin ".*" ".*" ".*"
docker exec -i $1 rabbitmqctl set_permissions -p /US_development_zed admin ".*" ".*" ".*"
docker exec -i $1 rabbitmqctl set_permissions -p /AT_development_zed admin ".*" ".*" ".*"