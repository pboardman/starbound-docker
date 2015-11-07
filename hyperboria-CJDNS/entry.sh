#!/bin/bash
if [ -f /etc/cjdns/cjdroute.conf ]; then
  echo "Starting CJDNS with existing cjdroute.conf"
  #this next command need to output "File descriptor in bad state" for CJDNS to work.
  cat /dev/net/tun
  exec cjdroute --nobg < /etc/cjdns/cjdroute.conf
fi

if ! [ -f /etc/cjdns/cjdroute.conf ]; then
  echo "Generating /etc/cjdns/cjdroute.conf... "
  (
    umask 077
    cjdroute --genconf > /etc/cjdns/cjdroute.conf
  )
  echo "cjdroute.conf has been generated, you need to configure it and start the container again."
fi
