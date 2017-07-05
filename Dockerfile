FROM hub.c.163.com/library/mysql
MAINTAINER hesheng
ENV REFRESHED_AT 2017-07-03
ENV WORK_PATH /usr/app/mysql
ENV AUTO_RUN_DIR /docker-entrypoint-initdb.d
ENV FILE_0 0-init_database.sql
ENV INSTALL_DATA_SHELL init_database.sh
RUN mkdir -p $WORK_PATH
COPY ./$FILE_0 $WORK_PATH/
COPY ./$INSTALL_DATA_SHELL $AUTO_RUN_DIR/
RUN chmod a+x $AUTO_RUN_DIR/$INSTALL_DATA_SHELL