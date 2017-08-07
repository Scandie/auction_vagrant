AUTHOR        = Leits <leits@quintagroup.com>



help:
	@echo "Run make <target> with:"
	@echo " > start         : load_roles & vagrant up"
	@echo " > vup           : to create vm via vagrant"
	@echo " > load_roles    : to load from ansible galaxy roles"
	@echo " > provisioning  : to start ansible on vm"
	@echo " > kill          : to stop and destroy vm"


start:
	ansible-galaxy install -r requirements.yml
	vagrant up --provider virtualbox

vup: ./roles
	vagrant up --provider virtualbox

load_roles:
	ansible-galaxy install -r requirements.yml

provisioning: ./roles
	ansible-playbook -i hosts initial_build.yml

kill:
	vagrant destroy -f
