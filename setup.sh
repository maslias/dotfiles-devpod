#!/bin/bash

user="marciii-devpod"
userpw="passwd"

# add user
# sudo useradd -m -G wheel -s /bin/zsh $user
# add password
# echo "$user:$userpw" | sudo chpasswd

# echo '%wheel ALL=(ALL:ALL) ALL' >/etc/sudoers.d/wheel
# sudo echo '%wheel ALL=(ALL:ALL) ALL' >/etc/sudoers.d/wheel
# sudo adduser $user wheel
#
#

# install packages
packages=(
    which
    fzf
    ripgrep
    git
    stow
)

# Iterate over the array and install each package
for package in "${packages[@]}"; do
    echo "Installing $package..."
    sudo apk add "$package"
done

echo "All packages have been installed."
