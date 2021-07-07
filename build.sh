#!/bin/sh

container_name="ghcr.io/kamehb-ua/aws-cli-action:$1"

docker build -t "$container_name" .
docker push "$container_name"
