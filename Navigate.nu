def navigate [directory?: str] {
	if ($directory) {
		cd $directory
		}
	cd $(fd -t d | fzf)
}
