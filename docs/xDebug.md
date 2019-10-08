Setup xdebug
-----------------------
```bash
docker-php-ext-enable xdebug
vi /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
```

Example Config:
-----------------------
xdebug.idekey="PHPSTORM"
xdebug.remote_enable=1
xdebug.remote_port=9000
xdebug.remote_autostart=0
xdebug.remote_host=host.docker.internal
#xdebug.remote_host=192.168.103.159
xdebug.max_nesting_level=1000
memory_limit=2G
max_execution_time=300

For CLI xdebug add this to ~/.bashrc and restart shell
-----------------------
export PHP_IDE_CONFIG="serverName=zed"
export XDEBUG_CONFIG="profiler_enable=1 remote_port=9000 remote_autostart=1"
