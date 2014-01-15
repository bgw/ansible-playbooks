Ansible Playbooks
=================

Goals and Priorities
--------------------

-   I want to be able to run all the basic "cloud" services I need myself
    (instant freedom box).
-   For simplicity, most configuration is based on a single-user model. Multiple
    users may come later.
-   Low memory consumption. When we pick between alternatives, we'll usually go
    with whatever needs the least CPU, RAM, and disk.
-   Everything should be secured as much as is reasonably possible. All daemons
    should run as their own user, not root. All files with "secrets" should have
    no more read permissions than necessary.
-   I'm only targeting Debian Stable for servers, and Sid for workstations (as
    that's what I use).

The project is similar to [Sovereign][]. Sovereign is designed for a single
server in the cloud. I want this to automate (at least part of) all my hardware.

  [Sovereign]: https://github.com/al3x/sovereign

Provided Playbooks
------------------

-   **ddclient**: A dynamic DNS client, using <freedns.afraid.org>
-   **Email**: (Still in development) A single-user mailserver using postfix,
    dovecot, and mutt
-   **IRC Bouncer**: A simple IRC bouncer using ZNC, making IRC across multiple
    machines easy
-   **XChat**: A configuration for XChat that connects through ZNC
-   **Tinc**: A mesh-routing VPN
-   **OpenTTD**: Dedicated server for the game, set up with init.d and stuff

Installation
------------

Installing isn't... too... bad?

```sh
sudo aptitude install python-pip python-dev
sudo pip install virtualenv
virtualenv .env
.env/bin/pip install -e .
cp hosts.example hosts        # Modify as appropriate
cp -r secrets.example secrets # Modify as appropriate
.env/bin/ansible-playbook -i hosts site.yml
```

If you only want to install specific roles, pass the desired tags, such as
`-t ddclient`. If you only want to configure a specific machine or group of
machines, you can pass something like `-l workstations` depending on the hosts
file.
