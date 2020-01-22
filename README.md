 #### Project setup
 
 ###### Docker setup
 ```
$ cd docker
$ ./setup.sh
 ```

###### Spryker setup
```
$ docker exec -it nxsacademy_app bash
$ cd /data/shop/development/current

$ vendor/bin/install

chmod -R 777 /data/shop/development/current/data
chown -R 1000:1000 /data/shop/development/current
```

###### Access to docker (right user)

```
$ docker exec -it -u nexus nxsacademy_app bash
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

| Info | Value |
| ---- | ----- |
| Host | 127.0.0.1 |
| Port | 2222 |
| Directory | /data/shop/development |
| Mapping | / |
| Username | nexus |
| Password | nexus123 |


###### Database
Host: 127.0.0.1  
Port: 5432  
User: spryker  
Password: mate20mg  

Database Name:  
- Store DE: `DE_development_zed`
- Store AT: `DE_development_zed`
- Store US: `US_development_zed`


#### Domains

To reach the domains from local, you have to add this entries to your hosts-config:

```
127.0.0.1    de.www.nxsacademy.local at.www.nxsacademy.local us.www.nxsacademy.local
127.0.0.1    de.zed.nxsacademy.local at.zed.nxsacademy.local us.zed.nxsacademy.local
127.0.0.1    de.glue.nxsacademy.local at.glue.nxsacademy.local us.glue.nxsacademy.local
```
