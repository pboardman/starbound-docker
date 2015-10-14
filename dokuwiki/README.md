# Dokuwiki inside Docker

All of [Dokuwiki](https://www.dokuwiki.org/) data will be stored in /data

## How to run the image
build the image (or get it from [Docker Hub](https://hub.docker.com/u/lacsap/)) then mount the /data volume somewhere on your machine for example:

you can run the image with :

``` sudo docker run -d -p=80:80 -v=/mnt/dokuwiki:/data lacsap/dokuwiki ```

Then configure the server by going to 127.0.0.1/install.php
