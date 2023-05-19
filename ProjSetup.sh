#! /bin/bash
ProjSetup(){
	read -pr "What is the name of your project: " project
	pyproject=$project
	pyproject+="_py"
	cproject=$project
	cproject+="_c"
	rsproject=$project
	rsproject+="_rs"
	mdkir "$pyproject $cproject $rsproject"
	cd "$pyproject" || return
	PySetup
	cd ..
	cd "$cproject" || return
	CSetup
	cd ..
	cd "$rsproject" || return
	cargo init
	cd ..
	cp ~/Programming/Snekkie-Template/LICENSE LICENSE
	touch README.md
	git init
	git add .
	git commit "Initial commit"
}
