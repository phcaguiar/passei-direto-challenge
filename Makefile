# Makefile for deploy challenge environment

setpass:
	@bash ./scripts/set-pass.sh

ansible: setpass
	@bash ./scripts/install-ansible.sh

config: ansible
	@ansible-playbook -i "localhost," -c local ansible-roles/docker-install.yml

deploy:
	@docker-compose -f docker-compose/docker-compose.yml up -d
