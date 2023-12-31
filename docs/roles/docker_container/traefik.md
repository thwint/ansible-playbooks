# Traefik

Setup and configure a Traefik proxy

## Global variables

Globally defined variables used by this deployment.

| Name                      | Documentation                                                                                  |
| ------------------------- | ---------------------------------------------------------------------------------------------- |
| crowdsec_enabled          | [MariaDB](roles/docker_container/crowdsec.md)                                                  |
| docker_backend_network    | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_data_path          | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_frontend_network   | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_group              | [Docker daemon](roles/docker_daemon.md)                                                        |
| host_primary_ipv4_address | [Docker container](roles/docker_container.md)                                                  |
| inventory_hostname        | [Ansible](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html) |
| prometheus_enabled        | [Docker container](roles/docker_container.md)                                                  |
| ssl_enabled               | [Docker container](roles/docker_container.md)                                                  |

## Traefik variables

Traefik specific variables

| name                        | purpose                                  | default value | remark |
| --------------------------- | ---------------------------------------- | ------------- | ------ |
| traefik_basic_auth          | The basic auth configuraiton for traefik | ''            |        |
| traefik_entrypoints         | The entrypoints to be activated          | n/a           |        |
| traefik_letsencrypt_enabled | Whether to use letsencrypt or not        | false         |        |
| traefik_version             | The version of traefik to be used        | latest        |        |
