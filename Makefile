
# initialize Jenkins in virtual Linux-based environment with Vagrant
init: 
	sh scripts/system_select.sh


# reload virtual Linux-based environment 
reload:
	VAGRANT_RELEASE=$(<scripts/release.tmp) vagrant reload


# retry provision Vagrant if error in ansible playbook or ect.
retry:
	VAGRANT_RELEASE=$(<scripts/release.tmp) vagrant provision

# stop VM
stop:
	VAGRANT_RELEASE=$(<scripts/release.tmp) vagrant halt

# delete virtual Linux-based environment with Vagrant
delete:
	VAGRANT_RELEASE=$(<scripts/release.tmp) vagrant destroy -f
	rm -rf .vagrant
	rm scripts/release.tmp
