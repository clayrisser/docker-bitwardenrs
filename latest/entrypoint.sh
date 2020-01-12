#!/bin/sh

if [ -z "$MYSQL_URL" ]; then
  export MYSQL_URL="mysql://$MYSQL_USERNAME:$MYSQL_PASSWORD@$MYSQL_HOST:$MYSQL_PORT/$MYSQL_DATABASE"
fi
export DATABASE_URL=$MYSQL_URL

echo $DATABASE_URL

exec /bitwarden_rs $@
