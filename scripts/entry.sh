#!/usr/bin/env sh
if test "$#" -ne 2
then
	echo "Usage : $0 git-src"
	exit -1
fi

GIT_REPO=$1

cd scratch
rm -r *
git clone --recursive --depth 1 $GIT_REPO src
cd src
hugo --cleanDestinationDir -d /build/
