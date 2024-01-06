# Portainer

Creates and starts a portainer container listening on `{{ inventory_hostname }}/portainer`.
If `ssl_enabled` is set to `true` the connection is ssl terminated.

## Global variables

Globally defined variables used by this deployment.

| Name                    | Documentation                                                                                  |
| ----------------------- | ---------------------------------------------------------------------------------------------- |
| docker_data_path        | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_group            | [Docker daemon](roles/docker_daemon.md)                                                        |
| ssl_enabled             | [Docker container](roles/docker_container.md)                                                  |
| docker_frontend_network | [Docker daemon](roles/docker_daemon.md)                                                        |
| inventory_hostname      | [Ansible](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html) |

## Portainer variables

Portainer specific variables

| name                     | purpose                                     | default value | remark                             |
| ------------------------ | ------------------------------------------- | ------------- | ---------------------------------- |
| portainer_admin_password | The administrator password for portainer    |               | automatically generated if not set |
| portainer_edition        | The edition of portainer (ce/ee) to be used | portainer-ce  |                                    |
| portainer_version        | The version of portainer to be used         | latest        |                                    |
