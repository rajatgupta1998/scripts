# update your rusty system
sudo apt update && sudo apt upgrade -y

sudo apt install curl git python gnupg flex bison gperf libsdl1.2-dev squashfs-tools build-essential zip libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk \
pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev g++-multilib lib32z1-dev lib32ncurses5-dev gcc-multilib liblz4-* pngquant \
ncurses-dev texinfo gcc gperf patch libtool automake g++ gawk subversion expat libexpat1-dev python-all-dev bc libcloog-isl-dev libcap-dev \
autoconf libgmp-dev pkg-config libmpc-dev libmpfr-dev lzma* liblzma* w3m android-tools-* maven ncftp htop imagemagick \
libssl-dev clang cmake axel gradle pngcrush lzip ccache pigz python-pip python3-pip neofetch openssh-server re2c libxml-simple-perl patchelf -y

# Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
sudo apt install google-chrome-stable
