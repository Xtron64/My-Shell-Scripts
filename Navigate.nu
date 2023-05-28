def navigate [directory?: path] {
    if  not $directory == "" {
        cd $directory
    }
    cd $"(fd -t d | fzf)"
}
