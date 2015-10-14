# Mumble Docker

This mumble Dockerfile will put all of its data in /data (defined when you run the image).
It will auto generate a password on first run for the mumble SuperUser account. the password
will be stored /data/superuser_password.txt

## How to run the image

you can run the image with :

``` sudo docker run -d=true -p=64738:64738 -v=/mnt/mumble:/data hostingshit/mumble /server_start ```
