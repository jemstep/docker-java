#!/bin/bash -eu
curl -H "Content-Type: application/json" --data '{"build": true}' -X POST https://registry.hub.docker.com/u/cloudesire/java/trigger/$DOCKER_REGISTRY_JAVA_TRIGGER/
