#!/usr/bin/env sh
#used for cleaning entry sockets
cat <&0 > /dev/null

if test "$#" -ne 2
then
	echo $1
	echo $#
	echo "Usage : $0 git-src domain"
	exit 125
fi

GIT_REPO=$1
DOMAIN=$2
echo "Now trying to clone git repo $1"
cd scratch
git clone --recursive --depth 1 $GIT_REPO src
cd src
echo "Building the website"
hugo -b $DOMAIN --cleanDestinationDir --destination /build 
