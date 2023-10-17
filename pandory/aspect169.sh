#!/bin/bash
sed -i 's#aspect_ratio_index = ".*"#aspect_ratio_index = "18"#g' /sdcard/retroarch/zip.cfg
aplay /sdcard/pandory/stretchpants.wav
killall -9 retroarch
