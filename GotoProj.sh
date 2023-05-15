#! /bin/bash
cd ~/Programming || return
cd "$(fd | fzf)" || return
