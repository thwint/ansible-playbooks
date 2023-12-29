# Docker container role

This role is used to set up and configure multiple docker containers. It is only
to set up simple containers. For more complex container setup a separate role
should be created.

List of available containers:

* [Adminer](docker_container/adminer.md)
* grafana (wip)
* [MariaDB](docker_container/mariadb.md)
* netbootxyz (wip)
* [Nextcloud](docker_container/nextcloud.md)
* openhab (wip)
* pihole (wip)
* [Portainer](docker_container/portainer.md)
* powerdens (wip)
* powerdnsAdmin (wip)
* [Redis](docker_container/redis.md)
* [Traefik](docker_container/traefik.md)

## Example configuration

Create and load a variable containing the containers you want to install on your
node.

```yaml
docker:
  containers:
    - traefik
    - adminer
    - portainer
    - nextcloud
```

All other configuration is described in the corresponding
container documentation.

## Global variables

There are several variables which have to be defined globally and are reused for
docker containers. For further information see the corresponding documentation.

| name                    | documentation                           |
| ----------------------- | --------------------------------------- |
| docker_backend_network  | [Docker daemon](roles/docker_daemon.md) |
| docker_data_path        | [Docker daemon](roles/docker_daemon.md) |
| docker_frontend_network | [Docker daemon](roles/docker_daemon.md) |
| docker_group            | [Docker daemon](roles/docker_daemon.md) |
| docker_internal_ip      | [Docker daemon](roles/docker_daemon.md) |
| timezone                | [Base](roles/base.md)                   |

This role also uses variables from [base](base.md) and [docker_daemon](docker_daemon.md).
Check these documentations for further information.

## Docker container variables

There are some variables affecting all docker containers.

| name               | purpose                                  | default value | remark |
| ------------------ | ---------------------------------------- | ------------- | ------ |
| prometheus_enabled | Enable prometheus and configure scraping | false         |        |
| ssl_enabled        | Whether SSL/TLS is enabled               | false         |        |
