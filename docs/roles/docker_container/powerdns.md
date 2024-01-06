# Powerdns

Setup a powerdns container with MariadB backend. It listens on all hosts
configured in `powerdns_admin_traefik_router_rules`.

## Global variables

Globally defined variables used by this deployment.

| Name                    | Documentation                                 |
| ----------------------- | --------------------------------------------- |
| docker_group            | [Docker daemon](roles/docker_daemon.md)       |
| docker_data_path        | [Docker daemon](roles/docker_daemon.md)       |
| ssl_enabled             | [Docker container](roles/docker_container.md) |
| docker_backend_network  | [Docker daemon](roles/docker_daemon.md)       |
| docker_frontend_network | [Docker daemon](roles/docker_daemon.md)       |

## Powerdns variables

Powerdns specific variables.

| name                           | purpose                                      | default value | remark |
| ------------------------------ | -------------------------------------------- | ------------- | ------ |
| powerdns_allow_axfr_ips        | Servers allowed to use axfr requests         |               |        |
| powerdns_api_key               | The Powerdns API key                         |               |        |
| powerdns_mariadb_dbname        | The database name for the mariadb backend    | powerdnsdb    |        |
| powerdns_mariadb_root_password | The root password for the mariadb backend    |               |        |
| powerdns_mariadb_user          | The username for the mariadb backend         | powerdns      |        |
| powerdns_mariadb_user_password | The user password for the mariadb backend    |               |        |
| powerdns_traefik_router_rules  | Router rules for traefik (Host...)           |               |        |
| powerdns_version               | The version of the powerdns container        | latest        |        |
| powerdns_webserver_password    | The password for the integrated webserver    |               |        |
| powerdns_whitelisted_ip_range  | A range of allowd ip addresses to use dyndns |               |        |

### Example configuration

```yaml
powerdns_allow_axfr_ips:
  - 1.2.3.4
  - 4.3.2.1
powerdns_traefik_router_rules:
  - dyndns.testerion.ch
powerdns_whitelisted_ip_range: 1.2.3.0/24
```
