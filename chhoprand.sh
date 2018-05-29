#!/bin/bash
set -e

if check=`(iwconfig | grep Monitor)`; then
	echo "wlx00c0ca973c00 already in monitor mode"
else
	echo "setting wlx00c0ca973c00 into monitor mode"
	sudo ifconfig wlx00c0ca973c00 down
	sleep .5
	sudo iwconfig wlx00c0ca973c00 mode monitor
	sleep .5
	sudo ifconfig wlx00c0ca973c00 up
	sleep .5
fi

echo "Setting Random Channels ..."

while true; do

MIN=1
MAX=17
rnd=$(( $RANDOM % ($MAX + 1 - $MIN) + $MIN ))
echo "Set Channel Random $rnd"

case "$rnd" in

    1) sudo iw wlx00c0ca973c00 set channel 1 HT20
    echo "Set Channel 1 HT20"
    sleep .5
    ;;
    2) sudo iw wlx00c0ca973c00 set channel 2 HT20
    echo "Set Channel 2 HT20"
    sleep .5
    ;;
    3) sudo iw wlx00c0ca973c00 set channel 4 HT20
    echo "Set Channel 4 HT20"
    sleep .5
    ;;
    4) sudo iw wlx00c0ca973c00 set channel 6 HT20
    echo "Set Channel 6 HT20"
    sleep .5
    ;;
    5) sudo iw wlx00c0ca973c00 set channel 6 HT40+
    echo "Set Channel 6 HT40+"
    sleep .5
    ;;
    6) sudo iw wlx00c0ca973c00 set channel 8 HT20
    echo "Set Channel 8 HT20"
    sleep .5
    ;;
    7) sudo iw wlx00c0ca973c00 set channel 10 HT20
    echo "Set Channel 10 HT20"
    sleep .5
    ;;
    8) sudo iw wlx00c0ca973c00 set channel 11 HT40-
    echo "Set Channel 11 HT40-"
    sleep .5
    ;;
    9) sudo iw wlx00c0ca973c00 set channel 13 HT20
    echo "Set Channel 13 HT20"
    sleep .5
    ;;
    10) sudo iw wlx00c0ca973c00 set channel 1 HT40+
    echo "Set Channel 1 HT40+"
    sleep .5
    ;;
    11) sudo iw wlx00c0ca973c00 set channel 3 HT20
    echo "Set Channel 3 HT20"
    sleep .5
    ;;
    12) sudo iw wlx00c0ca973c00 set channel 5 HT20
    echo "Set Channel 5 HT20"
    sleep .5
    ;;
    13) sudo iw wlx00c0ca973c00 set channel 6 HT40-
    echo "Set Channel 6 HT40-"
    sleep .5
    ;;
    14) sudo iw wlx00c0ca973c00 set channel 7 HT20
    echo "Set Channel 7 HT20"
    sleep .5
    ;;
    15) sudo iw wlx00c0ca973c00 set channel 9 HT20
    echo "Set Channel 9 HT20"
    sleep .5
    ;;
    16) sudo iw wlx00c0ca973c00 set channel 11 HT20
    echo "Set Channel 11 HT20"
    sleep .5
    ;;
    17) sudo iw wlx00c0ca973c00 set channel 12 HT20
    echo "Set Channel 12 HT20"
    sleep .5
    ;;
esac

done
