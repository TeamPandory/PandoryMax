#!/bin/bash
pushd ..
git rev-parse --short HEAD > pandory.ver
tar --exclude="build" --exclude=".git" --exclude=".gitignore" -cvf build/pandory.tgz .
popd

du -sh pandory.tgz
