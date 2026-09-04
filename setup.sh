#!/bin/bash

export PATH=$PATH:$HOME/.local/bin

curl -sS https://starship.rs/install.sh | sudo sh -s -- --yes

which chezmoi 2>&1 > /dev/null || sudo sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /usr/local/bin

chezmoi init --apply https://github.com/timosur/dotfiles.git

if $(which dnf 2>&1 > /dev/null); then
sudo dnf config-manager --add-repo https://rpm.releases.hashicorp.com/fedora/hashicorp.repo
sudo dnf install -y \
    lsd \
    zoxide \
    terraform \
    helm \
    ansible \
    python3-kubernetes \
    fontawesome-fonts \
    fontawesome5-free-fonts
fi
