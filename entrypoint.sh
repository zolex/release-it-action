#!/bin/sh -l

cd $GITHUB_WORKSPACE

git config user.name "$3"
git config user.email "$4"

export GITHUB_TOKEN=$1
if [ "$5" != "" ]; then
  PRE_RELEASE="--preRelease=$5 --github.preRelease"
fi
RELEASE_VERSION=$(release-it --release-version $PRE_RELEASE | tail -n1)
echo "New version: $RELEASE_VERSION"

release-it -VV --ci $PRE_RELEASE || exit $?

echo "::set-output name=version::$RELEASE_VERSION"