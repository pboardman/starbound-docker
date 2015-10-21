#!/bin/bash

# Generating a ssl certificate on first run
if [ ! -f /data/quasselCert.pem ]
then
    openssl req -x509 -subj "/C=aa/ST=aa/L=a/O=a/CN=a" -nodes -days 365 -newkey rsa:4096 -keyout /data/quasselCert.pem -out /data/quasselCert.pem
fi

# start quasselcore
quasselcore --configdir=/data/
