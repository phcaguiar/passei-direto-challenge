FROM mysql:5.7

ADD my.cnf /etc/mysql/conf.d/my.cnf

RUN chown -R mysql:root /var/lib/mysql/

ARG MYSQL_USER=notes-api
ARG MYSQL_PASSWORD=Insert a notes-api user password
ARG MYSQL_ROOT_PASSWORD=Insert a mysql root user password

ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD

COPY database_schema.sql /docker-entrypoint-initdb.d/

CMD ["mysqld"]

EXPOSE 3306
