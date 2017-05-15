#!/bin/bash

cat /opt/qnib/pgsql/etc/postgresql.conf | sed \
    -e "s/listen_addresses = .*/listen_addresses = '${PSQL_BIND_ADDR}'/" \
> /var/lib/pgsql/data/postgresql.conf
