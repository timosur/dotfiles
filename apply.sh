#!/usr/bin/env bash
set -euo pipefail

read -r -s -p "Enpass vault password: " MASTERPW
printf '\n'
export MASTERPW
trap 'unset MASTERPW' EXIT

chezmoi apply --source "$(cd -- "$(dirname -- "$0")" && pwd)" "$@"
