# deluge-web

## how to
build the image (or get it from [Docker Hub](https://hub.docker.com/u/lacsap/)) then mount the /data and /torrent volumes somewhere on your machine for example:

``` docker run -d -p=8112:8112 -v=/data/deluge-web:/data -v=/torrent_location:/torrent lacsap/deluge-web ```

- /torrent is the directory where the torrents will be downloaded.
- /data is the directory where the config will be stored.
- You need to change the torrents download location in the webUI to /torrent
- The default password for the webUI is "deluge"
