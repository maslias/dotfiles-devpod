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

# Remove home structure
echo "Remove Structures"
to_remove=(
    .zshrc
    .zprofile
    .oh-my-zsh/
    .config
    .bashrc
    .bash_history
)

for tr in "${to_remove[@]}"; do
    echo "Remove $tr..."
    sudo rm -rf ~/"$tr"
done

echo "All Removed."

# install packages
echo "Install packages."
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
