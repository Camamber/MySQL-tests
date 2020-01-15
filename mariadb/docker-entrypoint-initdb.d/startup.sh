#!/bin/bash

pmm-admin config --server pmm-server:80
pmm-admin add linux:metrics
pmm-admin add mysql:metrics --host mariadb --user pmm --password expo213 
pmm-admin add mysql:queries --host mariadb --user pmm --password expo213 --query-source perfschema

# Start mysqld in foreground
mysqld