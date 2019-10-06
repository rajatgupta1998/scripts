LSB_RELEASE_D="$(lsb_release -d | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"
LSB_RELEASE_R="$(lsb_release -r | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"
LSB_RELEASE_C="$(lsb_release -c | cut -d ':' -f 2 | sed -e 's/^[[:space:]]*//')"

echo $whoami "Welcome to HEDONIST, running on ""${LSB_RELEASE_D}" "${LSB_RELEASE_R}", "${LSB_RELEASE_C}".

echo -e ""

echo "Please provide a password whenever required"

echo -e ""

sleep 4

echo "Setting up TimeZone to Asia/Kolkata"
sudo timedatectl set-timezone Asia/Kolkata
echo -e ""

echo "Let us install yay, an AUR helper"

sudo pacman -S yay

echo -e ""
echo "Updating that system of yours"
yay

echo "Installing some bare minimum packages"
yay -S wget base-devel multilib-devel cmake clang svn speedtest-cli neofetch

echo "Installing packages for building AOSP"

for package in ncurses5-compat-libs lib32-ncurses5-compat-libs aosp-devel xml2 lineageos-devel;
do
    git clone https://aur.archlinux.org/"${package}"
    cd "${package}" || continue
    makepkg -si --skippgpcheck
    cd - || break
    rm -rf "${package}"
done

yay -S maven gradle