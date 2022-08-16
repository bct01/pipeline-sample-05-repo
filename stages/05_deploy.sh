#!/usr/bin/env bash

echo
echo "Deploying Application"

container_port=$(jq -r .deploy.containerPort pipeline.json)
registry=$(jq -r .archive.registry pipeline.json)
repository=$(jq -r .archive.repository pipeline.json)
namespace=$(jq -r .archive.namespace pipeline.json)
image="${registry}/${namespace}/${repository}:latest"

docker run -dp "${container_port}:${container_port}" "${image}"
