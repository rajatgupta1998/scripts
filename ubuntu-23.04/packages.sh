#!/usr/bin/env bash

#
# Authored-By: Rajat Gupta <rjgupta84@gmail.com>
#

#
# Script to install aosp related packages
#

echo "Installing core packages..!"

sudo apt update && sudo apt upgrade -y

sudo apt install curl git python gnupg flex bison gperf libsdl1.2-dev squashfs-tools build-essential zip libncurses5-dev zlib1g-dev openjdk-11-jre openjdk-11-jdk \
pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev g++-multilib lib32z1-dev lib32ncurses5-dev gcc-multilib liblz4-* pngquant \
ncurses-dev texinfo gcc gperf patch libtool automake g++ gawk subversion expat libexpat1-dev python-all-dev bc libcloog-isl-dev libcap-dev \
autoconf libgmp-dev pkg-config libmpc-dev libmpfr-dev lzma* liblzma* w3m maven ncftp htop imagemagick \
libssl-dev clang cmake axel gradle pngcrush lzip ccache pigz python-pip python3-pip neofetch openssh-server re2c libxml-simple-perl patchelf tree screen -y

echo "Installing git lfs..!"
curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt install git-lfs -y

echo "Installing repo..!"
sudo curl --create-dirs -L -o /usr/local/bin/repo -O -L https://storage.googleapis.com/git-repo-downloads/repo
sudo chmod a+wrx /usr/local/bin/repo
