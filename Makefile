.PHONY: prepare install lint syntax run destroy

prepare:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap homebrew/cask
	brew cask install virtualbox vagrant

install:
	pip install -r requirements.txt

lint:
	ansible-lint *.yml

syntax:
	ansible-playbook --syntax-check *.yml

run:
	vagrant up
	ansible-playbook -i inventories/test jenkins.yml

destroy:
	vagrant destroy -f

