Ansible Playbooks
=================

Provided Playbooks
------------------

-   **ddclient**: A dynamic DNS client, using <freedns.afraid.org>
-   **Email**: (Still in development) A single-user mailserver using postfix,
    dovecot, and mutt
-   **IRC Bouncer**: A simple IRC bouncer using ZNC, making IRC across multiple
    machines easy
-   **XChat**: A configuration for XChat that connects through ZNC
-   **OpenTTD**: Dedicated server for the game, set up with init.d and stuff

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
