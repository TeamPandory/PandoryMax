#!/bin/bash
sed -i 's#aspect_ratio_index = ".*"#aspect_ratio_index = "22"#g' /sdcard/retroarch/zip.cfg
sed -i 's#aspect_ratio_index = ".*"#aspect_ratio_index = "22"#g' /sdcard/retroarch/zip_dc.cfg
sed -i 's#aspect_ratio_index = ".*"#aspect_ratio_index = "22"#g' /sdcard/retroarch_lg/zip_guangqiang.cfg
killall -9 retroarch