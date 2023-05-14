#! /bin/bash
ProjSetup(){
	read -p "What is the name of your project: " project
	pyproject = $project
	pyproject += "_py"
	ktproject = $project
	ktproject += "_kt"
	rsproject = $project
	rsproject += "_rs"
	mdkir $pyproject $ktproject $rsproject
	cd $pyproject
	source ~/Scripts/PySetup.sh
	cd ..
	cd $ktproject
	source ~/Scripts/KTSetup.
	cd ..
	cd $rsproject
	cargo init
	cd ..
	cp ~/Programming/Snekkie-Template/LICENSE LICENSE
	touch README.md
	git init
	git add .
	git commit "Initial commit"
}
