#!/bin/bash
bdir=$(dirname "$0")
. $bdir/settings

for i in `cat $bdir/hosts`; do
  echo "Syncing $i";
  $bdir/backup-ip.sh $i;
done
$bdir/snapshot.sh
