 #### Project setup
 
 ###### Docker setup
 _COMPOSE_PROJECT_NAME_ is configured in /docker/.env
 
 ```
$ cd docker

$ docker volume create --name=<COMPOSE_PROJECT_NAME>-ardb-data
$ docker volume create --name=<COMPOSE_PROJECT_NAME>-elastic-data
$ docker volume create --name=<COMPOSE_PROJECT_NAME>-db-data
$ docker volume create --name=<COMPOSE_PROJECT_NAME>-rabbitmq-data

$ docker-compose up -d
 ```

###### Spryker setup
Connect to _app_ container
- name is f.e. "<COMPOSE_PROJECT_NAME>\_app\_<random_id>"
- tip: display all started containers `$ docker ps`

```
$ docker exec -it <Container-Name> bash
```

Install spryker
```
$ cd /data/shop/development/current

$ composer install
$ vendor/bin/install
```