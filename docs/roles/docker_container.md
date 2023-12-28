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

## Netvoot.xyz

### Netvoot.xyz variables

| name | purpose | default value | remark |
| ---- | ------- | ------------- | ------ |

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

## Prometheus

### Prometheus variables

| name | purpose | default value | remark |
| ---- | ------- | ------------- | ------ |

## Traefik

### Traefik variables

| name                        | purpose                                  | default value | remark |
| --------------------------- | ---------------------------------------- | ------------- | ------ |
| traefik_basic_auth          | The basic auth configuraiton for traefik | ''            |        |
| traefik_entrypoints         | The entrypoints to be activated          | n/a           |        |
| traefik_letsencrypt_enabled | Whether to use letsencrypt or not        | false         |        |
| traefik_version             | The version of traefik to be used        | latest        |        |
