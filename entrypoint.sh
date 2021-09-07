#!/bin/sh -l

echo "Github Token: $1"
echo "${GITHUB_WORKSPACE}"
ls -lah "${GITHUB_WORKSPACE}"

echo "::set-output name=version::0.0.42"
