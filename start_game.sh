#!/bin/sh -x
#FC		fceumm_libretro.so
#GB/GBA/GBC	mgba_libretro.so
#MD		genesisplusgx_libretro.so
#N64		mupen64plus_libretro.so
#PS ONE		pcsx_rearmed_libretro.so
#SFC 		snes9x_libretro.so

export XDG_CONFIG_HOME=/data
export XDG_RUNTIME_DIR=/data

GAME_PATH=
GAME_LIB=

export LC_ALL='zh_CN.utf8'

case "$1" in
  0)
    GAME_LIB=fbalpha2012_libretro1.so
    ;;
  1)
    GAME_LIB=nestopia_libretro.so
    ;;
  2)
    GAME_LIB=daphne_libretro.so 
    ;;
  3)
    GAME_LIB=fbalpha2012_libretro1.so
    ;;
  4)
    GAME_LIB=mame2003_libretro.so
    ;;
  5)
    GAME_LIB=genesisplusgx_libretro.so
    ;;
  6)
    GAME_LIB=snes9x_libretro.so
    ;;
  7)
    GAME_LIB=mgba_libretro.so
    ;;
  8)
    GAME_LIB=mupen64plus_libretro.so
    ;;
  9)
    GAME_LIB=pcsx_rearmed_libretro.so
    ;;
  10)
    GAME_LIB=mednafen_pce_fast_libretro.so
    ;;
  11)
    GAME_LIB=mednafen_wswan_libretro.so
    ;;
  12)
    GAME_LIB=desmume2015_libretro.so
    ;;
  13)
    GAME_LIB=genesis_plus_gx_libretro.so
    ;;
  14)
    GAME_LIB=fbalpha_libretro.so
    ;;
  15)
    GAME_LIB=stella_libretro.so
    ;;
  16)
    GAME_LIB=atari800_libretro.so
    ;;
	17)
    GAME_LIB=prosystem_libretro.so
    ;;
	18)
    GAME_LIB=mame2016_libretro.so
	;;
	19)
    GAME_LIB=mame2016_libretro.so
	;;
	20)
    GAME_LIB=flycast_libretro.so
	;;
	21)
    GAME_LIB=dc_sunchip_libretro.so
	;;
	22)
    GAME_LIB=swanstation_libretro.so
	;;	
	35)
    GAME_LIB=mame2003_plus_libretro.so
	;;
	36)
    GAME_LIB=fbneo_libretro.so
	;;
	37)
    GAME_LIB=fceumm_libretro.so
	;;
	38)
    GAME_LIB=mame_libretro.so
	;;
	39)
    GAME_LIB=mednafen_psx_libretro.so
	;;
	40)
    GAME_LIB=pcsx_rearmed_n_libretro.so
	;;
  *)
    echo "Have not game resources"
    return
    ;;
esac
	if [ "$1" == 19 ]; then
		/tmp/ppsspp.sh "$3"
	else
		/tmp/retroarch \
		-c "$2"\
		-L /sdcard/retro_lib/$GAME_LIB "$3" -Z $4 -z $5 -Y $6 -y $7 -x $8 -M $9  
	
    fi

