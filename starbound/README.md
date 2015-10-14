# STARBOUND DOCKER (UNTESTED)

## How to run

After building the docker file you can run the image for the first time with :

``` docker run -d -p=21025:21025 -v=/path/to/starbound/data:/data STEAM_USERNAME=username STEAM_PASSWORD=password lacsap/starbound ```

## Additional info

- You NEED to set the STEAM_USERNAME and STEAM_PASSWORD ENV variable to a steam account with starbound on it.
- The server auto update at each startup.
