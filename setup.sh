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
#

rm ~/.zshrc

cd ~/dotfiles
rm -rf .git

stow .

