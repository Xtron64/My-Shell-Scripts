#!/bin/bash
garuda-update --aur
sudo flatpak update
cargo install-update --all
sudo nix-channel --update; sudo nix-env -iA nixpkgs.nix nixpkgs.cacert; sudo systemctl daemon-reload; sudo systemctl restart nix-daemon
sudo brew update
