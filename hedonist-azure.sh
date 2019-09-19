echo $whoami "welcome to HEDONIST, running on " $(lsb_release -d).


echo "OK Microsoft, I will always prefer a clean and up-to-date system"

# cleans apt cache and removes useless packages
sudo apt clean && sudo apt autoremove --purge

# update apt repos and do a system update
sudo apt update && sudo apt upgrade
