#! /bin/bash
navigate() {
    if [ -n "$1" ]; then
        cd "$1" || return
    fi

    selected_directory=$(find . -type d | fzf)
    cd "$selected_directory" || return
}
