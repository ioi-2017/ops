#!/bin/bash
. $(dirname "$0")/settings

mkdir -p $DAY_PATH $SNAP_PATH
btrfs subvolume create $DATA_VOL
