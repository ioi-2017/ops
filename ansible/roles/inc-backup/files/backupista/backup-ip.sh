#!/bin/bash

set -eux

. $(dirname "$0")/settings

"${rsync[@]}" --delete "$remote_user@$1:$backup_path/" "$DATA_VOL/$1/"
