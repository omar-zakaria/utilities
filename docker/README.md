# Dockerfile tips and commands
## To build image
`docker build --tag node-server .`

## To build iage and prune build images
docker build -t my-image . && docker image prune -f

## To run
`docker run --publish 3005:3005 node-server`

## To connect with bash
`docker container exec -it db94b82e6b92 /bin/bash`

## To set environment variables
`ENV NODE_ENV=development`

## Tips
- Make sure to include .dockerignore file in folder to avoid copying unwanted folders

