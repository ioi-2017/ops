#!/bin/bash
. $(dirname "$0")/settings
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

echo "$timestamp: Snapshotting!"
btrfs subvolume snapshot $DATA_VOL $SNAP_PATH/$timestamp
