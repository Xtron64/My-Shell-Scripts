#! /usr/bin/bash
GetDistro(){
	$(cat /etc/*-release | grep PRETTY_NAME | cut -d '=' -f2 | tr -d '"')
}
