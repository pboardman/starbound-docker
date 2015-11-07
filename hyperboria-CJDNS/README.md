# Hyperboria node in a container

## How to use

Run ``` docker run -d --privileged --net=host --name hyperboria-node -v /PATH/ON/YOUR/MACHINE:/etc/cjdns lacsap/hyperboria ``` and the container will generate a default config
where you mounted ``` /etc/cjdns ``` (at ``` /PATH/ON/YOUR/MACHINE ```) and exit.

Edit this config file then restart the container with: ``` docker start hyperboria-node ```

## Notes
- If you don't know how to edit the config, refer to the [Hyperboria CJDNS repo](https://github.com/hyperboria/cjdns).
- For more info on hyperboria visit the [Hyperboria website](https://hyperboria.net/).
