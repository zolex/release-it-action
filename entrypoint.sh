#!/bin/sh -l

cd $GITHUB_WORKSPACE
ls -lah .

git config --global user.name "$3"
git config --global user.email "$4"
echo "Git user $3<$4>"

export GITHUB_TOKEN=$1
export RELEASE_VERSION=$(release-it --release-version | tail -n1)
echo "Bump version to $RELEASE_VERSION"

release-it -VV --ci || exit $?

echo "::set-output name=version::$RELEASE_VERSION"