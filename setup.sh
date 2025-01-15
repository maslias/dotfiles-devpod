#!/bin/bash

user="marciii-devpod"

# add user
sudo useradd -m -G wheel -s /bin/zsh $user
# echo '%wheel ALL=(ALL:ALL) ALL' >/etc/sudoers.d/wheel
sudo echo '%wheel ALL=(ALL) ALL' >/etc/sudoers.d/wheel
sudo adduser $user wheel
