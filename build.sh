#!/bin/sh

container_name="kamehb/aws-cli-gh-action:$1"

docker build -t "$container_name" .
docker push "$container_name"
