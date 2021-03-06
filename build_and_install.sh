#!/bin/sh

VERSION=`cat version`

# to clean up from last time, run this:
# rm -rf ~/.torbrowser

# clean up from last build
rm -r deb_dist

# build binary package
python setup.py --command-packages=stdeb.command bdist_deb

# install it
sudo dpkg -i deb_dist/torbrowser-launcher_$VERSION-1_all.deb

