#!/bin/sh
set -eu

cd ${GITHUB_WORKSPACE}
git show --no-patch --pretty="%B" | commitlint