 #### Project setup
 
 ###### Docker setup
 ```
$ cd docker
$ ./setup.sh
 ```

###### Spryker setup
```
$ docker exec -it nxsacademy_app_1 bash
$ cd /data/shop/development/current

$ vendor/bin/install

chmod -R 777 /data/shop/development/current/data
chown -R 1000:1000 /data/shop/development/current
```

#### Access

###### Yves
http://de.www.nxsacademy.local
- Email: spencor.hopkin@spryker.com
- Password: change123

###### Zed
http://de.zed.nxsacademy.local
- Email: admin@spryker.com
- Password: change123

###### Glue
http://de.glue.nxsacademy.local

###### Jenkins
http://localhost:8080  

###### ŔabbitMQ
http://localhost:15672
- Username: spryker
- Password: mate20mg

#### Credentials

###### SFTP
Username: nexus  
Password: nexus123

###### Database
Host: 127.0.0.1  
Port: 5432  
User: spryker  
Password: mate20mg
