# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/).

Huge thanks to [prskr](https://github.com/prskr) for allowing me to fork :-).
Original dotfiles by him can be found [here](https://code.icb4dc0.de/prskr/dotfiles).

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
