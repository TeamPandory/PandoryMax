#!/bin/bash
pushd ..
git rev-parse --short HEAD > pandory/version
git checkout -- res/*.png
VERCODE="pandorymax-$(date +'%Y%m%d')-$(cat pandory/version)"
#echo $VERCODE;exit
convert -pointsize 10 -fill white -draw "text 1104,710 '""${VERCODE^^}""'" res/default_bg_template.png res/default_bg.png
tar --exclude="build" --exclude=".project" --exclude=".git" --exclude=".gitignore" -cvf build/pandory.tgz .
cp -fv lib/start_game.sh build/
popd

zip "$VERCODE.zip" pandory.tgz start_game.sh
