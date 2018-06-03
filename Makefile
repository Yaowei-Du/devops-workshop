.PHONY: prerequisites package install prepare lint syntax run up destroy

prerequisites:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew tap homebrew/cask
	brew cask install virtualbox vagrant

install:
	pip install -r requirements.txt

package:
	cd roles/base/; ./package.sh

prepare: prerequisites install package

lint:
	ansible-lint *.yml

syntax:
	ansible-playbook --syntax-check *.yml

run: up
	ansible-playbook -i inventories/test jenkins.yml

up:
	vagrant up

destroy:
	vagrant destroy -f

