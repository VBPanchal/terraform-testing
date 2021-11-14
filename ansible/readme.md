

sudo apt-install ansible
ansible webstack -i inventory/hosts -m command -a hostname


ansible-playbook -i ../inventories/hosts -K install-jenkins.yml



# ansible-inventory -i hosts --graph  (only works macos maybe linux not wsl)