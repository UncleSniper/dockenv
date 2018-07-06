#!/bin/bash

set -e

function usedSpace {
	df --output=used -BM /var/lib/docker | tail -1 | sed 's/M$//'
}

before="$(usedSpace)"

docker container prune -f
dangimg="$(docker images -f "dangling=true" -q)"
if [ -n "$dangimg" ]; then
	docker rmi $dangimg
fi

after="$(usedSpace)"

((delta = before - after))
echo "Freed up $delta MiB."
