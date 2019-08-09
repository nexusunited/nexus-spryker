 #### Project setup
 
 ###### Docker setup
 ```
$ cd docker

$ export COMPOSE_PROJECT_NAME=nxsacademy
$ docker volume create --name=$COMPOSE_PROJECT_NAME-ardb-data
$ docker volume create --name=$COMPOSE_PROJECT_NAME-elastic-data
$ docker volume create --name=$COMPOSE_PROJECT_NAME-db-data
$ docker volume create --name=$COMPOSE_PROJECT_NAME-rabbitmq-data

$ docker-compose up -d
 ```

###### Spryker setup
Connect to **app** container: "nxsacademy\_app\_ID"

```
$ docker exec -it <Container-Name> bash
```

Install spryker
```
$ cd /data/shop/development/current

$ composer install
$ vendor/bin/install
```