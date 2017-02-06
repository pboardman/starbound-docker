# STARBOUND DOCKER

## How to run

After building the docker file you can run the image for the first time with :

``` docker run -d -p=21025:21025 -v=/path/to/starbound/data:/server/steamcmd/starbound STEAM_USERNAME=username STEAM_PASSWORD=password lacsap/starbound ```

## Additional info

- You NEED to set the STEAM_USERNAME and STEAM_PASSWORD ENV variable to a steam account with starbound on it.
- You need to disable steamguard or steamCMD won't be able to log in and download starbound
- The server auto update at each restart.
- might take a while to download the game on first run, check docker logs for download %
