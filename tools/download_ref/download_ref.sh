#!/usr/bin/sh
ID=$1
ID_URL="http://download.pitagora-galaxy.org/data/reference/$ID"
LOG=$2
cd /disk/reference
wget $ID_URL 2>$LOG
tar xvzf $ID >$LOG
rm $ID
