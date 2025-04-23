#!/usr/bin/env bash

version=1.0.0

echo "Publishing version $version"

git add .
git commit -am "chore: release $version :rocket:"
npm version $version
git push origin main && git push origin main --tags

npm publish
