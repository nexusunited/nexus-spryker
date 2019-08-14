 #### Project setup
 
 ###### Docker setup
 ```
$ cd docker

$ ./create-volumes.sh
$ docker-compose up -d
$ ./setup.sh <RabbitMq-Container-Name>
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

#### Access

Yves: http://www.de.suite.local  
Zed: http://zed.de.suite.local
- Email: admin@spryker.com
- Password: change123

Jenkins: http://localhost:8080  
ŔabbitMQ: http://localhost:15672
- Username: spryker
- Password: mate20mg

#### Credentials

###### SFTP
Username: root  
Password: nexus123

###### Database
Host: 127.0.0.1  
Port: 5432  
User: spryker  
Password: mate20mg
