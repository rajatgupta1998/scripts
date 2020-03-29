# update your rusty system
sudo apt update && sudo apt upgrade -y

sudo apt install curl git python gnupg flex bison gperf libsdl1.2-dev squashfs-tools build-essential zip libncurses5-dev zlib1g-dev openjdk-8-jre openjdk-8-jdk \
pngcrush schedtool libxml2 libxml2-utils xsltproc lzop libc6-dev g++-multilib lib32z1-dev lib32ncurses5-dev gcc-multilib liblz4-* pngquant \
ncurses-dev texinfo gcc gperf patch libtool automake g++ gawk subversion expat libexpat1-dev python-all-dev bc libcloog-isl-dev libcap-dev \
autoconf libgmp-dev build-essential pkg-config libmpc-dev libmpfr-dev lzma* liblzma* w3m adb fastboot maven ncftp htop imagemagick \
libssl-dev clang cmake axel gradle pngcrush lzip ccache pigz -y

#flex errors bois
echo "export LC_ALL=C" >> ~/.bashrc
