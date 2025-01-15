#!/bin/bash

user="marciii-devpod"

# add user
useradd -m -G wheel -s /bin/zsh $user
# echo '%wheel ALL=(ALL:ALL) ALL' >/etc/sudoers.d/wheel
echo '%wheel ALL=(ALL) ALL' >/etc/sudoers.d/wheel
adduser $user wheel
