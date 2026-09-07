# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

Huge thanks to [prskr](https://github.com/prskr) for allowing me to fork :-) [Peter's dotfiles](https://code.icb4dc0.de/prskr/dotfiles).

## Installed Tools

Installed packages live in [`.chezmoidata/packages.yaml`](.chezmoidata/packages.yaml), which is source of truth for full list.

- Shell and terminal: Atuin, bat, duf, fd, lsd, macchina, procs, Starship, tlrc, watch, and zoxide.
- Development: Git plus git-absorb, git-cliff, git-lfs, delta, diffnav, difftastic, direnv, Buf, Go, gopls, go-size-analyzer, Neovim, Helix, uv, SQL Formatter, RTK, and OpenSpec.
- Containers and Kubernetes: crane, dive, lazydocker, skopeo, socktainer, syft, Helm, kubectl, kustomize, kind, kubelogin, kubectl-cnpg, kube-linter, and kubeconform.
- Security and secrets: rbw, pinentry, pwgen, and Git credential OAuth support.
- macOS apps: Ghostty, OrbStack, Raycast, Ice, SizeUp, Zed, Zen, HTTPie Desktop, ungoogled-chromium, VLC, and UniClipboard.

## Configured Tools

- Configuration: Zsh, Git, SSH, GPG, Starship, Atuin, Ghostty, Alacritty, Neovim, Helix, Zed, and local helper scripts.
- Agent tooling: Claude, OpenCode, Pi, RoboRev, RTK, Crush, OpenSpec commands and skills, plus Herdr agent plugins.
- Services: Bazel Remote, Herdr, Raycast AI providers, and macOS SizeUp preferences.

## Initial setup

```sh
./setup.sh
```

## Apply changes

```sh
chezmoi apply
```

Preview pending changes:

```sh
chezmoi diff
```

Pull latest source and apply it:

```sh
chezmoi update
```
