# Prometheus

Setup and configure a [Prometheus](https://prometheus.io/) container used to
monitor other containers and systems.

## Global variables

Globally defined variables used by this deployment.

| Name                    | Documentation                                                                                  |
| ----------------------- | ---------------------------------------------------------------------------------------------- |
| docker_backend_network  | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_data_path        | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_frontend_network | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_group            | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_uid              | [Docker daemon](roles/docker_daemon.md)                                                        |
| inventory_hostname      | [Ansible](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html) |
| prometheus_enabled      | [Docker container](roles/docker_container.md)                                                  |
| ssl_enabled             | [Docker container](roles/docker_container.md)                                                  |

## Prometheus variables

Prometheus specific variables.

| name               | purpose                                 | default value | remark |
| ------------------ | --------------------------------------- | ------------- | ------ |
| prometheus_version | The version of the prometheus container | latest        |        |
