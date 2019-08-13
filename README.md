 #### Project setup
 
 ###### Docker setup
 ```
$ cd docker

$ docker volume create --name=nxsacademy-ardb-data
$ docker volume create --name=nxsacademy-elastic-data
$ docker volume create --name=nxsacademy-db-data
$ docker volume create --name=nxsacademy-rabbitmq-data

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

chmod -R 777 /data/shop/development/current/data
chown -R 1000:1000 /data/shop/development/current
```