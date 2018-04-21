FROM mysql:5.7

ADD my.cnf /etc/mysql/conf.d/my.cnf

RUN chown -R mysql:root /var/lib/mysql/

ARG MYSQL_USER=notes-api
ARG MYSQL_PASSWORD=notes-api
ARG MYSQL_ROOT_PASSWORD=Infra.2018

ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

COPY database_schema.sql /docker-entrypoint-initdb.d/

CMD ["mysqld"]

EXPOSE 3306
