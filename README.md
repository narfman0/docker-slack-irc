# docker-slack-irc

## Description

Run [slack-irc](https://github.com/ekmartin/slack-irc) in docker

## Usage

Set up a configuration file named `config.json` and launch a slack-irc Docker
container for that configuration:

``` bash
docker run -it -v $(pwd):/config narfman0/docker-slack-irc --config /config/config.json
```

slack-irc allows for a CONFIG_FILE environment variable to be set as well,
which is more elegant with docker-compose or kubernetes.

## License

Copyright 2018 Jon Robison

See LICENSE for details
