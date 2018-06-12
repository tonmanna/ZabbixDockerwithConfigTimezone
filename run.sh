docker rm -f zabbix
docker run --name zabbix --restart=always -v /etc/localtime:/etc/localtime -v $(pwd)/config:/etc/zabbix -v $(pwd)/php5:/etc/php5:ro -v zabbix:/var/lib/mysql -p 8000:80 -p 10051:10051 -d zabbix/zabbix-appliance
docker logs -f zabbix
