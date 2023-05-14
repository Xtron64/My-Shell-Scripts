#! /usr/bin/bash
PySetup() {
	# Get info from the user to put into setup.py
	read -pr "Please enter your project's name: " proj_name;
	read -pr "What version is your project on: " proj_ver;
	read -pr "Enter a description of you project: " proj_desc;
	read -pr "Enter the URL for where to find your project online (I.E. the Github or Gitlab repo it is in): " proj_url;
	read -pr "Enter your name: " proj_auth;
	read -pr "Enter you email: " proj_email;
	proj_lice="GPLv3";
	echo "Is your project zip safe?"
	select yn in "Yes" "No"; do
		case $yn in 
			Yes ) zip_safe=true;;
        		No ) zip_safe=false;;
		esac 
	done
	# Copies the GPLv3 from Snekkie-Template into this project
	cp ~/Programming/Snekkie-Template/LICENSE LICENSE
	# Creates the src (where the source code is stored) and the tests (where the tests for the project are stored) directories
	mkdir src tests
	# Creates the boilerplate files that the project needs
	touch src/main.py src/__init__.py pyproject.toml requirements.txt README.md
	# Writes all the necessary info that needs to be in setup.py
	echo "from setup tools import setup" >> setup.py
	echo "" >> setup.py
	echo "" >> setup.py
	echo "setup(name='$proj_name', version='$proj_ver', description='$proj_desc', url='$proj_url', author='$proj_auth', author_email='$proj_email', license='$proj_lice', packages=['$proj_name'], zip_safe='$zip_safe)" >> setup.py
	# Ends the function
	return
}
