FROM mysql:5.7

ADD my.cnf /etc/mysql/conf.d/my.cnf

RUN chown -R mysql:root /var/lib/mysql/

COPY database_schema.sql /docker-entrypoint-initdb.d/

CMD ["mysqld"]

EXPOSE ${MYSQL_PORT}