sudo apt update
sudo apt upgrade -y
sudo apt install ansible
cd .ssh
ls
chmod 700 ~/.ssh
vi ansible_key
ls
chmod 700 ~/.ssh
chmod 600 ~/.ssh/ansible_key
cd
mkdir ansible
cd ansible
vi hosts
ansible-inventory --list -i /home/ubuntu/ansible/hosts
ansible all -i /home/ubuntu/ansible/hosts -m ping --private-key=~/.ssh/ansible_key
vi hosts
ansible all -i /home/ubuntu/ansible/hosts -m ping --private-key=~/.ssh/ansible_key
vi nginx.yml
cat hosts
ansible-playbook -i hosts nginx.yml --private-key=~/.ssh/ansible_key
vi stop.yml
ansible-playbook -i hosts stop.yml --private-key=~/.ssh/ansible_key
vi update.yml
ansible-playbook -i hosts update.yml --private-key=~/.ssh/ansible_key
vi python
rm -rf python
vi python.yml
ansible-playbook -i hosts python.yml --private-key=~/.ssh/ansible_key
