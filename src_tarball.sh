#!/bin/bash
ORIGDIR=`pwd`
TMPDIR=libvpx2.$$
VPX=libvpx2-2.0.0

mkdir -p ../${TMPDIR}

cd ..
cp -a libvpx ${TMPDIR}/${VPX}
cd ${TMPDIR}
rm -rf ${VPX}/.git*
tar zcvf ${VPX}.tar.gz ${VPX}
mv ${VPX}.tar.gz ${ORIGDIR}/.
cd ${ORIGDIR}
rm -rf ../${TMPDIR}
