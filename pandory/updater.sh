#!/bin/bash
N="$(tar xf /sdcard/lib/pandory.tgz -C /tmp ./pandory/version; cat /tmp/pandory/version)"; O="$(cat /sdcard/pandory/version)"; [ "$N" != "$O" ] && (tar xvf /sdcard/lib/pandory.tgz -C /sdcard/ && cat /sdcard/pandory/db.sql | /sdcard/pandory/sqlite3 /sdcard/res/games.db && reboot);
