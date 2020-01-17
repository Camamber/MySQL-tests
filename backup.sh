BACKUP_NAME=mysql_$(date -u +%Y-%m-%dT%H-%M-%S)
/usr/local/bin/docker-compose run --rm mysql-backup create $BACKUP_NAME
/usr/local/bin/docker-compose run --rm mysql-backup upload $BACKUP_NAME