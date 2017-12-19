FROM mysql
MAINTAINER hesheng
ENV REFRESHED_AT 2017-12-03
ENV MYSQL_DIR /usr/docker/mysql
ENV INIT_DB_DIR /docker-entrypoint-initdb.d
ENV INIT_SQL_FILE init_database.sql
ENV INIT_SQL_SHELL init_database.sh

RUN mkdir -p $MYSQL_DIR
COPY ./$INIT_SQL_FILE $MYSQL_DIR/
COPY ./$INIT_SQL_SHELL $INIT_DB_DIR/
RUN chmod a+x $INIT_DB_DIR/$INIT_SQL_SHELL