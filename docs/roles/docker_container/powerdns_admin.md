# PowerdnsAdmin

Setup a Nextcloud container with Redis and MariadB. It listens on all hosts
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

## PowerdnsAdmin variables

| name                                 | purpose                                     | default value | remark |
| ------------------------------------ | ------------------------------------------- | ------------- | ------ |
| powerdns_admin_cpu_shares            | The number of cpu shares allowd to use      | 512           |        |
| powerdns_admin_mariadb_dbname        | The mariadb database name                   | pdnsadb       |        |
| powerdns_admin_mariadb_root_password | The mariadb root password                   |               |        |
| powerdns_admin_mariadb_user          | The mariadb user name                       | pdnsa         |        |
| powerdns_admin_mariadb_user_password | The mariadb user password                   |               |        |
| powerdns_admin_mem_limit             | The memory limit allowed to use             | 200m          |        |
| powerdns_admin_pids_limits           | The allowed number of pids                  | 10            |        |
| powerdns_admin_traefik_router_rules  | Traefik router rules (Host...)              |               |        |
| powerdns_admin_version               | The version of the powerdns admin container | latest        |        |

### Example configuration

```yaml
powerdns_admin_traefik_router_rules:
  - dns.testerion.ch
```
