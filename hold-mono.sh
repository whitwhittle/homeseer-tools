#!/bin/bash
# hold-mono.sh, (C) 2020, Whit Whittle
# Version 0.1 - Initial issue
# this script will place a HOLD on the apt packages for mono.  Purpose is to ensure stable operation of HomeSeer system

echo "hold-mono v 0.1; Copyright 2020 Whit Whittle"
echo "this requires sudo access"
echo " "
echo "Note:this version only manages mono-complete and mono-vbnc.  If other Mono packages become part of "
echo "standard HomeSeer Linux install, they will need to be added"

sudo apt-mark hold mono-complete mono-vbnc

# sudo dpkg --get-selections | grep "hold"

echo "task complete..."
echo " "
echo "Run unhold-mono.sh to allow updates"


