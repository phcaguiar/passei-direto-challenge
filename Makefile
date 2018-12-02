# Makefile for deploy challenge environment

ansible:
	@bash ./scripts/install-ansible.sh

config: ansible
	@ansible-playbook -i "localhost," -c local ansible-roles/docker-install.yml

deploy:
	@docker-compose -f docker-compose/docker-compose.yml up -d