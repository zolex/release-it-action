#!/bin/sh -l

export GITHUB_TOKEN="$1"

ls -lah $GITHUB_WORKSPACE
cd $GITHUB_WORKSPACE

git config --global user.name "$3"
git config --global user.email "$4"

export RELEASE_VERSION=$(release-it --release-version | tail -n1)
release-it -VV --ci

echo "::set-output name=version::$RELEASE_VERSION"