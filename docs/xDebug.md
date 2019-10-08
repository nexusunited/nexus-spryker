Setup xDebug:
-----------------------
```bash
docker-php-ext-enable xdebug
vi /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
```

Example Config:
-----------------------
```
xdebug.idekey="PHPSTORM"
xdebug.remote_enable=1
xdebug.remote_port=9000
xdebug.remote_autostart=0
xdebug.remote_host=host.docker.internal
#xdebug.remote_host=192.168.103.159
xdebug.max_nesting_level=1000
memory_limit=2G
max_execution_time=300
```

Execute in console:
-----------------------
```
echo "xdebug.idekey=\"PHPSTORM\"" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 
echo "xdebug.remote_enable=1" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 
echo "xdebug.remote_port=9000" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 
echo "xdebug.remote_autostart=0" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 
echo "xdebug.remote_host=host.docker.internal" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 
echo "#xdebug.remote_host=192.168.103.159" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 
echo "xdebug.max_nesting_level=1000" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 
echo "memory_limit=2G" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 
echo "max_execution_time=300" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini 
```

Server configuration in PHPStorm:
-----------------------
Language & Frameworks > PHP > Servers
```
Host: de.zed.nxsacademy.local (at./us. for other stores)
Port: 80
Path mapping: /data/shop/development
IDE Key: PHPSTORM
```

For CLI xdebug add this to ~/.bashrc and restart shell
-----------------------
```
export PHP_IDE_CONFIG="serverName=zed"
export XDEBUG_CONFIG="profiler_enable=1 remote_port=9000 remote_autostart=1"
```