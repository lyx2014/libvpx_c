#!/bin/bash

if [ $# -eq 1 ]; then
	CHANGELOG=/tmp/changelog.tmp.$$

	cat >> $CHANGELOG << EOF
libvpx (1.1.0-$1) unstable; urgency=low

  * AutoBuild Revision Update

 -- FreeSWITCH Autobuild <autobuild@freeswitch.org>  `date -R`

EOF
	cat debian/changelog >> $CHANGELOG
	cp $CHANGELOG debian/changelog
	rm $CHANGELOG

fi

git-buildpackage --git-upstream-tree=origin/upstream -us -uc -sa --git-ignore-new --git-no-pristine-tar
