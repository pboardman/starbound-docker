############################################################
# Dockerfile to build a mumble server that works with supervisor
############################################################

FROM debian:8

# Install Requirements
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y \
  mumble-server \
  supervisor \
  pwgen

# load configs in the image
ADD ./etc/supervisor/supervisord.conf /etc/supervisor/supervisord.conf
ADD ./etc/supervisor/conf.d/murmurd.conf /etc/supervisor/conf.d/murmurd.conf
ADD ./etc/mumble-server.ini /etc/mumble-server.ini
ADD ./server_start /server_start

# Make server_start executable
RUN chmod +x /server_start


# /data will contain mumble data (you define the location of /data when you run the image)
EXPOSE 64738
VOLUME  ["/data"]
CMD     ["/server_start"]
