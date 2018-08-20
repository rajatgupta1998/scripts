sudo su
apt update &&  apt upgrade -y
apt install gcc g++ ccache zip unzip tar make clang llvm git fakeroot build-essential ncurses-dev \
xz-utils libssl-dev bc kmod cpio flex cpio libncurses5-dev python -y
