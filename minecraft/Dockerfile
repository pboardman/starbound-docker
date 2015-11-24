############################################################
# Dockerfile to build a minecraft server that works with supervisor
############################################################

from java:8

# Change the memory limit and version of the minecraft server
ENV MEMORY 1024
ENV VERSION 1.8.8

RUN apt-get update
RUN apt-get --yes install curl supervisor

# Load scripts in the image
COPY etc/supervisor/supervisord.conf /etc/supervisor/supervisord.conf
COPY etc/supervisor/conf.d/minecraft.conf /etc/supervisor/conf.d/minecraft.conf
COPY server_start /server_start

# Apply the MEMORY and VERSION ENV
RUN sed -i "s/1024/${MEMORY}/g" /etc/supervisor/conf.d/minecraft.conf
RUN sed -i "s/VERSION/${VERSION}/g" /server_start

expose 25565
volume ["/data"]
cmd    ["/server_start"]
