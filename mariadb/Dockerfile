ARG MARIADB_VERSION=latest
FROM mariadb:${MARIADB_VERSION}

LABEL maintainer="Camamber"

#####################################
# Set Timezone
#####################################

ARG TZ=UTC
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && chown -R mysql:root /var/lib/mysql/

#####################################
# PMM CLIENT
#####################################

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://repo.percona.com/apt/percona-release_latest.generic_all.deb
RUN dpkg -i percona-release_latest.generic_all.deb; exit 0
RUN apt --fix-broken install -y
RUN dpkg -i percona-release_latest.generic_all.deb
RUN apt-get update
RUN apt-get install pmm-client

COPY my.cnf /etc/mysql/conf.d/my.cnf
RUN chmod -R 644 /etc/mysql/conf.d/my.cnf

CMD ["mysqld"]

EXPOSE 3306