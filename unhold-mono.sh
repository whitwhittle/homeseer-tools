#!/bin/bash
# hold-mono.sh, (C) 2020, Whit Whittle
# Version 0.1 - Initial issue
# this script will place a HOLD on the apt packages for mono.  Purpose is to ensure stable operation of HomeSeer system

echo "unhold-mono v 0.1; Copyright 2020 Whit Whittle"
echo "this requires sudo access"
echo " "
echo "Note:this version only manages mono-complete and mono-vbnc.  If other Mono packages become part of "
echo "standard HomeSeer Linux install, they will need to be added"

echo "WARNiNG: This will allow Mono packages to be updated on this system!!!!!!"
echo "Please ensure latest version will NOT adversely impact HomeSeer operation"

read -p "Are you sure you wish to continue? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    exit 1
fi

sudo apt-mark unhold mono-complete mono-vbnc
sudo dpkg --get-selections | grep "hold"

echo "task complete..."
echo " "
echo "Run hold-mono.sh to re-hold once packages have been updates"


