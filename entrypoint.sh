#!/bin/sh -l

echo "Github Token: $1"
export GITHUB_TOKEN="$1"

ls -lah $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE

release-it -VV --ci
