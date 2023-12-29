# Docker container role

This role is used to set up and configure multiple docker containers. It is only
to set up simple containers. For more complex container setup a separate role
should be created.

List of available containers:

* adminer
* grafana (wip)
* netbootxyz (wip)
* openhab (wip)
* pihole (wip)
* portainer
* prometheus (wip)
* traefik

## Global variables

This role also uses variables from [base](base.md) and [docker_daemon](docker_daemon.md).
Check these documentations for further information.

| name               | purpose                                  | default value | remark |
| ------------------ | ---------------------------------------- | ------------- | ------ |
| prometheus_enabled | Enable prometheus and configure scraping | false         |        |
| ssl_enabled        | Whether SSL/TLS is enabled               | false         |        |

## Adminer

Creates and starts an adminer container listening on path `/adminer` for all hosts
configured using traefik.

### Adminer variables

| name            | purpose                                   | default value | remark |
| --------------- | ----------------------------------------- | ------------- | ------ |
| adminer_version | Sets the version of the adminer container | latest        |        |

## Grafana

### Grafana variables

| name | purpose | default value | remark |
| ---- | ------- | ------------- | ------ |

## MariaDB

### MariaDB variables

| name                   | purpose                                    | default value | remark                         |
| ---------------------- | ------------------------------------------ | ------------- | ------------------------------ |
| mariadb_container_name | The name of the mariadb container          |               | Should be configured in a task |
| mariadb_cpu_shares     | The limit of cpu shares allowd to use      | 512           |                                |
| mariadb_data_path      | The directory/volume to store mariadb data |               | Should be configured in a task |
| mariadb_mem_limit      | The limit of memory allowd to use          | 100m          |                                |
| mariadb_pids_limit     | The limit of pids allowd to use            | 30            |                                |
| mariadb_root_password  | The database root password                 |               | Should be configured in a task |
| mariadb_user_password  | The database user password                 |               | Should be configured in a task |
| mariadb_version        | The version of the mariadb image           | latest        |                                |

## Netvoot.xyz

### Netvoot.xyz variables

| name | purpose | default value | remark |
| ---- | ------- | ------------- | ------ |

## Nextcloud

### Nextcloud variables

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

## Openhab

### Openhab variables

| name | purpose | default value | remark |
| ---- | ------- | ------------- | ------ |

## Pi-hole

### Pi-hole variables

| name | purpose | default value | remark |
| ---- | ------- | ------------- | ------ |

## Portainer

Creates and starts a portainer container listening on `{{ inventory_hostname }}/portainer`.
If `ssl_enabled` is set to `true` the connection is ssl terminated.

### Portainer variables

| name                     | purpose                                     | default value | remark                             |
| ------------------------ | ------------------------------------------- | ------------- | ---------------------------------- |
| portainer_admin_password | The administrator password for portainer    |               | automatically generated if not set |
| portainer_edition        | The edition of portainer (ce/ee) to be used | portainer-ce  |                                    |
| portainer_version        | The version of portainer to be used         | latest        |                                    |

## Powerdns

### Powerdns variables

| name | purpose | default value | remark |
| ---- | ------- | ------------- | ------ |

## PowerdnsAdmin

### PowerdnsAdmin variables

| name | purpose | default value | remark |
| ---- | ------- | ------------- | ------ |

## Prometheus

### Prometheus variables

| name | purpose | default value | remark |
| ---- | ------- | ------------- | ------ |

## Redis

### Redis variables

| name                 | purpose                                  | default value | remark                         |
| -------------------- | ---------------------------------------- | ------------- | ------------------------------ |
| redis_container_name | The name of the redis container          |               | Should be configured in a task |
| redis_data_path      | The directory/volume to store redis data |               | Should be configured in a task |
| redis_password       | The password to access redis             |               | Should be configured in a task |
| redis_version        | The version of the redis image           | latest        |                                |

## Semaphore

### Semaphore variables

| name                            | purpose                            | default value   | remark |
| ------------------------------- | ---------------------------------- | --------------- | ------ |
| semaphore_admin_password        | The password for the admin user    |                 |        |
| semaphore_admin_user            | The username for the admin user    |                 |        |
| semaphore_mariadb_root_password | The mariadb root password          |                 |        |
| semaphore_mariadb_user_password | The mariadb user password          |                 |        |
| semaphore_admin_email           | The mail address of the admin user | admin@localhost |        |

## Traefik

### Traefik variables

| name                        | purpose                                  | default value | remark |
| --------------------------- | ---------------------------------------- | ------------- | ------ |
| traefik_basic_auth          | The basic auth configuraiton for traefik | ''            |        |
| traefik_entrypoints         | The entrypoints to be activated          | n/a           |        |
| traefik_letsencrypt_enabled | Whether to use letsencrypt or not        | false         |        |
| traefik_version             | The version of traefik to be used        | latest        |        |
