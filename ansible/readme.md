

sudo apt update
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
ansible --version

ansible localhost -i inventory/hosts -m command -a hostname

ansible-playbook -i ../inventories/hosts -K install-jenkins.yml

ansible-playbook all-servers.yml -i inventory/localhost

sudo flask run --host=0.0.0.0 --port=80
# ansible-inventory -i hosts --graph  (only works macos maybe linux not wsl)