# Nextcloud

Setup a Nextcloud container with Redis and MariadB. It listens on all hosts
configured in `nextcloud_traefik_router_rules`.

## Global variables

Globally defined variables used by this deployment.

| Name                    | Documentation                                 |
| ----------------------- | --------------------------------------------- |
| docker_data_path        | [Docker daemon](roles/docker_daemon.md)       |
| docker_group            | [Docker daemon](roles/docker_daemon.md)       |
| mariadb_version         | [MariaDB](roles/docker_container/mariadb.md)  |
| redis_version           | [Redis](roles/docker_container/redis.md)      |
| timezone                | [Base](roles/base.md)                         |
| ssl_enabled             | [Docker container](roles/docker_container.md) |
| prometheus_enabled      | [Docker container](roles/docker_container.md) |
| docker_backend_network  | [Docker daemon](roles/docker_daemon.md)       |
| docker_frontend_network | [Docker daemon](roles/docker_daemon.md)       |

## Nextcloud variables

| name                            | purpose                                             | default value | remark             |
| ------------------------------- | --------------------------------------------------- | ------------- | ------------------ |
| nextcloud_mariadb_root_password | The root password for the database                  |               |                    |
| nextcloud_mariadb_user          | The database user                                   | nextcloud     |                    |
| nextcloud_mariadb_user_password | The database password                               |               |                    |
| nextcloud_project_name          | The docker compose project name                     | nextcloud     |                    |
| nextcloud_redis_password        | The redis passwod                                   |               |                    |
| nextcloud_traefik_router_rules  | The Traefik router rules where nextcloud listens on |               | Must be configured |
| nextcloud_version               | The version of nextcloud to be used                 | latest        |                    |
| nextcloud_mariadb_dbname        | The database name                                   | nextclouddb   |                    |

### Example configuration

```yaml
nextcloud_container_name_prefix: cloud
nextcloud_project_name: ch_testerion
nextcloud_traefik_router_rules:
  - cloud.testerion.ch
```
