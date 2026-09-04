#!/bin/bash

export PATH=$PATH:$HOME/.local/bin

curl -sS https://starship.rs/install.sh | sudo sh -s -- --yes

which chezmoi 2>&1 > /dev/null || sudo sh -c "$(curl -fsLS get.chezmoi.io)" -- -b /usr/local/bin

chezmoi init --apply https://github.com/timosur/dotfiles.git

if command -v rbw > /dev/null 2>&1; then
    if ! rbw config show | grep -Fq '"email": "'; then
        rbw config set base_url https://vault.home.timosur.com
        rbw login
    fi
    rbw unlock
    rbw sync
fi

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
