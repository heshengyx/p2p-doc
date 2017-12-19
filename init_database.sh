#!/bin/bash
mysql -uroot -p$MYSQL_ROOT_PASSWORD <<EOF
source $MYSQL_DIR/$INIT_SQL_FILE;