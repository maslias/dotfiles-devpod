#!/bin/bash


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

# install extra packages
echo "Installing oh-my-posh"
curl -s https://ohmyposh.dev/install.sh | bash -s


echo "All packages have been installed."

cd ~/dotfiles
stow .

# change shell
chsh -s /bin/zsh vscode

