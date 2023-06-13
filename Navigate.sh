#!/bin/bash

directory="$1"

if [ -n "$directory" ]; then
  cd "$directory" || exit 1
fi

selected_dir=$(fd -t d | fzf)
cd "$selected_dir" || exit 1
