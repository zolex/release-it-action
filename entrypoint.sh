#!/bin/sh -l

echo "Github Token: $1"
export GITHUB_TOKEN="$1"

ls -lah $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE

git config --global user.name "$3"
git config --global user.email "$4"

release-it -VV --ci
