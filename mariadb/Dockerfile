FROM mariadb:latest

LABEL maintainer="Camamber"

RUN apt-get update
RUN apt-get install -y wget
RUN wget https://repo.percona.com/apt/percona-release_latest.generic_all.deb
RUN dpkg -i percona-release_latest.generic_all.deb; exit 0
RUN apt --fix-broken install -y
RUN dpkg -i percona-release_latest.generic_all.deb
RUN apt-get update
RUN mkdir /etc/init
RUN apt-get install pmm-client
#RUN pmm-admin config --server pmm-server:80
#RUN pmm-admin add linux:metrics
#RUN pmm-admin add mysql:metrics --host mariadb --user pmm --password expo213
#RUN pmm-admin add mysql:queries --host mariadb --user pmm --password expo213

# pmm-admin config --server pmm-server:80 &&  pmm-admin add linux:metrics &&  pmm-admin add mysql:metrics --host mariadb --user pmm --password expo213 && pmm-admin add mysql:queries --host mariadb --user pmm --password expo213

COPY my.cnf /etc/mysql/conf.d/my.cnf

CMD ["mysqld"]

EXPOSE 3306
