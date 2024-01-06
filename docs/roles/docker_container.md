# Docker container role

This role is used to set up and configure multiple docker containers. It is only
to set up simple containers. For more complex container setup a separate role
should be created.

All containers being accessible from the net (internal or internet) must deployed
alongside traefik.

List of available containers:

* [Adminer](docker_container/adminer.md)
* [Crowdsec](docker_container/crowdsec.md)
* [Grafana](docker_container/grafana.md)
* [MariaDB](docker_container/mariadb.md)
* [Netboot.xyz](docker_container/netboot.md)
* [Nextcloud](docker_container/nextcloud.md)
* [Node exporter](docker_container/node_exporter.md)
* [Openhab](docker_container/openhab.md)
* [Pihole](docker_container/pihole.md)
* [Portainer](docker_container/portainer.md)
* [Powerdns](docker_container/powerdns.md)
* [PowerdnsAdmin](docker_container/powerdns_admin.md)
* [Prometheus](docker_container/prometheus.md)
* [Redis](docker_container/redis.md)
* [Semaphore](docker_container/semaphore.md)
* [Traefik](docker_container/traefik.md)
* [Unifi Poller](docker_container/unpoller.md)

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

All other configuration is described in the corresponding container
documentation.

## Global variables

There are several variables which have to be defined globally and are reused for
docker containers. For further information see the corresponding documentation.

| name                    | documentation                           |
| ----------------------- | --------------------------------------- |
| docker_backend_network  | [Docker daemon](roles/docker_daemon.md) |
| docker_data_path        | [Docker daemon](roles/docker_daemon.md) |
| docker_frontend_network | [Docker daemon](roles/docker_daemon.md) |
| docker_gid              | [Docker daemon](roles/docker_daemon.md) |
| docker_group            | [Docker daemon](roles/docker_daemon.md) |
| docker_internal_ip      | [Docker daemon](roles/docker_daemon.md) |
| docker_uid              | [Docker daemon](roles/docker_daemon.md) |
| timezone                | [Base](roles/base.md)                   |

This role also uses variables from [base](base.md) and [docker_daemon](docker_daemon.md).
Check these documentations for further information.

## Docker container variables

There are some variables affecting all docker containers.

| name                      | purpose                                                                            | default value                  | remark |
| ------------------------- | ---------------------------------------------------------------------------------- | ------------------------------ | ------ |
| prometheus_enabled        | Enable prometheus and configure scraping (for containers)                          | false                          |        |
| smtp_from                 | The from address                                                                   |                                |        |
| smtp_host                 | The smtp host used to send email                                                   |                                |        |
| smtp_password             | The password to access the smtp server                                             |                                |        |
| smtp_user                 | The user used to send email                                                        |                                |        |
| ssl_enabled               | Whether SSL/TLS is enabled                                                         | false                          |        |
| host_primary_ipv4_address | The ipv4 address to be used to expose ports (ansible_default_ipv4 is not reliable) | `ansible_default_ipv4.address` |        |
