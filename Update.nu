def update [] {
    garuda-update
    sudo flatpak update
    cargo install-update --all
    paru -Sua
}
