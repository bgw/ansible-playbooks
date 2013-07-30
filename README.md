Ansible Playbooks
=================

Provided Playbooks
------------------

- **OpenTTD**: Dedicated server for the game, set up with init.d and stuff

Installation
------------

Installing isn't... too... bad?

```sh
sudo aptitude install python-pip
sudo pip install virtualenv
virtualenv .env
.env/bin/pip install -e .
sudo .env/bin/ansible-playbook -i hosts openttd.yml
```
