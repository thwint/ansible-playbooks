# Netvoot.xyz

Sets up and starts a [Netboot.xyz](https://netboot.xyz/) container listening on
`{{ inventory_hostname }}/netboot`

## Global variables

Globally defined variables used by this deployment.

| Name                      | Documentation                                 |
| ------------------------- | --------------------------------------------- |
| docker_data_path          | [Docker daemon](roles/docker_daemon.md)       |
| docker_group              | [Docker daemon](roles/docker_daemon.md)       |
| docker_uid                | [Docker daemon](roles/docker_daemon.md)       |
| docker_gid                | [Docker daemon](roles/docker_daemon.md)       |
| host_primary_ipv4_address | [Docker container](roles/docker_container.md) |
| timezone                  | [Base](roles/base.md)                         |
| ssl_enabled               | [Docker container](roles/docker_container.md) |
| docker_frontend_network   | [Docker daemon](roles/docker_daemon.md)       |

## Netvoot.xyz variables

| name            | purpose | default value | remark |
| --------------- | ------- | ------------- | ------ |
| netboot_version |         | latest        |        |
