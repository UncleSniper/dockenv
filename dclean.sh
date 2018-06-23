#!/bin/bash

set -e

docker container prune -f
dangimg="$(docker images -f "dangling=true" -q)"
if [ -n "$dangimg" ]; then
	docker rmi $dangimg
fi
