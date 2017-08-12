#!/usr/bin/env sh
if test "$#" -ne 1
then
	echo $1
	echo $#
	echo "Usage : $0 git-src"
	exit 125
fi

GIT_REPO=$1
echo "Now trying to clone git repo $1"
cd scratch
rm -r *
git clone --recursive --depth 1 $GIT_REPO src
cd src
echo "Building the website"
hugo --cleanDestinationDir -d /build/
