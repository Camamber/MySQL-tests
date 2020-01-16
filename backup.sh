BACKUP_NAME=mysql_$(date -u +%Y-%m-%dT%H-%M-%S)
/usr/local/bin/docker-compose run --rm mysql-backup2 create $BACKUP_NAME
/usr/local/bin/docker-compose run --rm mysql-backup2 upload $BACKUP_NAME