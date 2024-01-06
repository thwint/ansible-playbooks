# Grafana

Sets up and starts a [Grafana](https://grafana.com/) container listening on
`{{ inventory_hostname }}/grafana`

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
| mariadb_version         | [MariaDB](roles/docker_container/mariadb.md)                                                   |
| prometheus_enabled      | [Docker container](roles/docker_container.md)                                                  |
| smtp_from               | [Docker container](roles/docker_container.md)                                                  |
| smtp_host               | [Docker container](roles/docker_container.md)                                                  |
| smtp_password           | [Docker container](roles/docker_container.md)                                                  |
| smtp_user               | [Docker container](roles/docker_container.md)                                                  |
| ssl_enabled             | [Docker container](roles/docker_container.md)                                                  |
| timezone                | [Base](roles/base.md)                                                                          |

## Grafana variables

Grafana specific variables.

| name                          | purpose                                       | default value | remark |
| ----------------------------- | --------------------------------------------- | ------------- | ------ |
| grafana_mariadb_dbname        | The database name                             | grafanadb     |        |
| grafana_mariadb_root_password | The root password for the database            |               |        |
| grafana_mariadb_user          | The database user                             | grafana       |        |
| grafana_mariadb_user_password | The database password                         |               |        |
| grafana_renderer_version      | The version of the grafana renderer container | latest        |        |
| grafana_version               | The version of the grafana container          | latest        |        |
| grafana_admin_password        |                                               |               |        |
