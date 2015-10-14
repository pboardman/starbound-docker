############################################################
# Dockerfile to run quassel-core
############################################################
FROM debian:8

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
	quassel-core \
	libqt4-sql-psql \
	libqca2-plugin-ossl libicu52

RUN mkdir /data

EXPOSE 4242
VOLUME ["/data"]
ENTRYPOINT ["quasselcore", "--configdir=/data/"]
