# Ansible playbooks manual

## Prerequisites

### Controller

* passlib installed (`apt install python3-passlib`)
* netaddr installed (`apt install python3-netaddr`)
* Ansible collections:
  * ansible.posix
  * community.docker
  * community.general
  * community.grafana
* Ansible roles:
  * mailcow.mailcow (only when installing mailcow)

### Target hosts

* Ubuntu (or deb based distribution)

When using another distribution than Ubuntu 22.04 the playbooks might not
fully work.

## Playbook overview

| playbook                                    | description                                       |
| ------------------------------------------- | ------------------------------------------------- |
| [base.yml](roles/base.md)                   | Base installation                                 |
| [containers.yml](roles/docker_container.md) | Setup different docker containers                 |
| [docker_daemon.yml](roles/docker_daemon.md) | Setup and configure the docker daemon             |
| [hardening.yml](roles/hardening.md)         | System hardening                                  |
| [mailcow.yml](roles/mailcow.md)             | Setup and configure mailcow dockerized            |
| [partitioning.yml](roles/partitioning.md)   | Configure partitioning and filesystems            |
| playbook.yml                                | Complete playbook combining most of the playbooks |

## Usage

`ansible-playbook -i inventory.yml --limit \<fqdn> playbook.yml`

## Configuration

The playbooks are configured using variables.

Each playbook loads the following files in exact the described order:

| Filename       | content                                    |
| -------------- | ------------------------------------------ |
| 4_default.yml  | Globally used defaults                     |
| 3_versions.yml | Versions, mainly used for docker container |
| 2_site.yml     | Site or company wide variables             |
| 1_\<fqdn>.yml  | Host specific variables                    |
| custom.yml     | Any other custom variables                 |
