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