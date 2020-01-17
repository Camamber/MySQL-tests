### SETUP 

```
cp .env.example .env && \
    cp nginx/sites/admin.conf.example nginx/sites/admin.conf && \
    cp mariadb/docker-entrypoint-initdb.d/createdb.sql.example mariadb/docker-entrypoint-initdb.d/createdb.sql && \
    cp grafana/grafana.ini.example grafana/grafana.ini

```
### Backups
crontab -e
```
0 */2 * * * cd $HOME/esmzone/docker && ./backup.sh
```

### PMM
You need to start monitor manually
```
docker-compose exec mariadb ./monitor.sh
```