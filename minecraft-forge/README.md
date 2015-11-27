# Minecraft server inside Docker

All of [Minecraft](https://minecraft.net/) data will be stored in /data

## How to run the image
build the image (or get it from [Docker Hub](https://hub.docker.com/u/lacsap/)) then mount the /data volume somewhere on your machine for example:

you can run the image with :

``` sudo docker run -d -p=25565:25565 -v=/mnt/minecraft:/data lacsap/minecraft-forge ```

You can change the version and memory limit of the minecraft server with the MCVERSION and MEMORY ENV.
You can change FORGEVERSION to switch between latest and recommended build.
