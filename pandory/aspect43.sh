#!/bin/bash
sed -i 's#aspect_ratio_index = ".*"#aspect_ratio_index = "22"#g' /sdcard/retroarch/zip.cfg
aplay /sdcard/pandory/fourthree.wav
killall -9 retroarch
