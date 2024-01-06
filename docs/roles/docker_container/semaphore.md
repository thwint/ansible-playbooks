# Semaphore UI

[Semaphore](https://www.semui.co/) UI for Ansible

## Global variables

Globally defined variables used by this deployment.

| Name                    | Documentation                                                                                  |
| ----------------------- | ---------------------------------------------------------------------------------------------- |
| docker_backend_network  | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_data_path        | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_frontend_network | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_group            | [Docker daemon](roles/docker_daemon.md)                                                        |
| mariadb_version         | [MariaDB](roles/docker_container/mariadb.md)                                                   |
| prometheus_enabled      | [Docker container](roles/docker_container.md)                                                  |
| ssl_enabled             | [Docker container](roles/docker_container.md)                                                  |
| inventory_hostname      | [Ansible](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html) |

## Semaphore variables

| name                            | purpose                                           | default value   | remark |
| ------------------------------- | ------------------------------------------------- | --------------- | ------ |
| semaphore_access_key_encryption | The encryption key used to encrypt the access_key |                 |        |
| semaphore_admin_email           | The mail address of the admin user                | admin@localhost |        |
| semaphore_admin_password        | The password for the admin user                   |                 |        |
| semaphore_admin_user            | The username for the admin user                   |                 |        |
| semaphore_mariadb_root_password | The mariadb root password                         |                 |        |
| semaphore_mariadb_user_password | The mariadb user password                         |                 |        |
| semaphore_version               | The version of the semaphore container            | latest          |        |
