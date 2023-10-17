#!/bin/bash
adb disconnect
adb connect 192.168.0.50
adb push pandory.tgz /sdcard/lib/
adb push start_game.sh /sdcard/lib/
