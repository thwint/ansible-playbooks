# Pi-hole

Sets up and starts a [Pi-hole](https://pi-hole.net/) container listening on
`{{ inventory_hostname }}/grafana`

## Global variables

Globally defined variables used by this deployment.

| Name                      | Documentation                                                                                  |
| ------------------------- | ---------------------------------------------------------------------------------------------- |
| docker_data_path          | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_frontend_network   | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_group              | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_uid                | [Docker daemon](roles/docker_daemon.md)                                                        |
| host_primary_ipv4_address | [Docker container](roles/docker_container.md)                                                  |
| inventory_hostname        | [Ansible](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html) |
| prometheus_enabled        | [Docker container](roles/docker_container.md)                                                  |
| ssl_enabled               | [Docker container](roles/docker_container.md)                                                  |
| timezone                  | [Base](roles/base.md)                                                                          |

## Pi-hole variables

Pihole specific variables

| name                    | purpose | default value | remark                  |
| ----------------------- | ------- | ------------- | ----------------------- |
| pihole_dns_1            |         |               |                         |
| pihole_web_password     |         |               |                         |
| pihole_version          |         | latest        |                         |
| pihole_exporter_version |         |               | if `prometheus_enabled` |
