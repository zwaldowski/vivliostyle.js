#!/bin/bash
set -ev

if [ "${TRAVIS_PULL_REQUEST}" = "false" -a "${TRAVIS_BRANCH}" = "master" ]; then
    build/npm-publish.sh
    build/deploy-viewer-to-gh-pages.sh
fi
