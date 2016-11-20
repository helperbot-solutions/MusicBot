#!/bin/bash
# Copy this to "docker_run.sh" and fill in envronment variables

# Build docker container:
docker build -t musicbot .

# Run docker container:
docker run -d -e "DISCORD_MUSICBOT_TOKEN=<token>" -e "DISCORD_MUSICBOT_OWNER=<owner_id>" -v $(pwd)/config:/musicBot/config musicbot
