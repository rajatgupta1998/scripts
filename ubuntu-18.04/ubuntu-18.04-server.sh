#!/usr/bin/env bash

# SPDX-License-Identifier: GPL-3.0-only

# Script to install packages for my dev setup

UNDER='\e[4m'
RED='\e[31;1m'
GREEN='\e[32;1m'
YELLOW='\e[33;1m'
BLUE='\e[34;1m'
MAGENTA='\e[35;1m'
CYAN='\e[36;1m'
WHITE='\e[37;1m'
ENDCOLOR='\e[0m'

function update_system() {
    sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
}

function install_base_packages() {
    sudo apt install curl lsb-core git python gnupg flex bison gperf libsdl1.2-dev squashfs-tools build-essential zip libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk \
    pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev g++-multilib lib32z1-dev lib32ncurses5-dev gcc-multilib liblz4-* pngquant \
    ncurses-dev texinfo gcc gperf patch libtool automake g++ gawk subversion expat libexpat1-dev python-all-dev bc libcloog-isl-dev libcap-dev \
    autoconf libgmp-dev pkg-config libmpc-dev libmpfr-dev lzma* liblzma* w3m android-tools-* maven ncftp htop imagemagick \
    libssl-dev clang cmake axel gradle pngcrush lzip ccache pigz python-pip python3-pip neofetch openssh-server re2c libxml-simple-perl patchelf tree screen snap
}

function install_vscode() {
    curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
    sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt update
    sudo apt install code
    rm packages.microsoft.gpg
}

function install_powerline_fonts() {
    git clone https://github.com/powerline/fonts.git --depth=1
    cd fonts
    ./install.sh
    rm -rf fonts
}

function install_jetbrains_mono() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"
}

function install_gitlfs() {
    curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
    sudo apt install git-lfs
    git lfs install
}

function install_oh_my_bash() {
    bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
    . ~/.bashrc
    # echo 'OSH_THEME="agnoster"' >> ~/.bashrc && . ~/.bashrc
    echo -e "$RED Change OSH_THEME to agnoster in .bashrc manually ... $ENDCOLOR"
}

function install_thefuck() {
    sudo apt install python3-dev python3-pip python3-setuptools
    sudo pip3 install thefuck
    eval $(thefuck --alias)
    echo 'eval "$(thefuck --alias)"' >> ~/.bashrc
    . ~/.bashrc
}

function install_repo() {
    sudo curl --create-dirs -L -o /usr/local/bin/repo -O -L https://storage.googleapis.com/git-repo-downloads/repo
    sudo chmod a+rx /usr/local/bin/repo
}

#1. Update system
echo -e "$YELLOW Updating your system ... $ENDCOLOR"
sleep 3
update_system
echo -e "$GREEN System update complete ... $ENDLCOLOR"


#2. Install base packages
echo -e "$YELLOW Installing base packages ... $ENDCOLOR"
sleep 3
install_base_packages
echo -e "$GREEN Installing base packages complete ... $ENDLCOLOR"

#3. Install VS Code
echo -e "$YELLOW Installing VS Code ... $ENDCOLOR"
install_vscode
echo -e "$GREEN Installing VS Code complete ... $ENDLCOLOR"

#4. Install Powerline fonts
echo -e "$YELLOW Installing Powerline Fonts ... $ENDCOLOR"
install_powerline_fonts
echo -e "$GREEN Installing Powerline Fonts complete ... $ENDLCOLOR"

#5. Install JetBrains Mono 
echo -e "$YELLOW Installing JetBrains Mono ... $ENDCOLOR"
install_jetbrains_mono
echo -e "$GREEN Installing JetBrains Mono complete ... $ENDLCOLOR"

#6. Install git-lfs
echo -e "$YELLOW Installing Git LFS ... $ENDCOLOR"
install_gitlfs
echo -e "$GREEN Installing Git LFS complete ... $ENDLCOLOR"

#7. Install oh-my-bash
echo -e "$YELLOW Installing oh-my-bash ... $ENDCOLOR"
install_oh_my_bash
echo -e "$GREEN Installing oh-my-bash complete ... $ENDLCOLOR"

#8. Install thefuck
echo -e "$YELLOW Installing thefuck ... $ENDCOLOR"
install_thefuck
echo -e "$GREEN Installing thefuck complete ... $ENDLCOLOR"

#9. Install repo
echo -e "$YELLOW Installing repo ... $ENDCOLOR"
install_repo
echo -e "$GREEN Installing repo complete ... $ENDLCOLOR"
