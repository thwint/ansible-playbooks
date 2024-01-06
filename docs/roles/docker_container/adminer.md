# Adminer

Creates and starts an adminer container listening on path `/adminer` for all hosts
configured using traefik.

## Global variables

Globally defined variables used by this deployment.

| Name                    | Documentation                                 |
| ----------------------- | --------------------------------------------- |
| docker_backend_network  | [Docker daemon](roles/docker_daemon.md)       |
| docker_data_path        | [Docker daemon](roles/docker_daemon.md)       |
| docker_frontend_network | [Docker daemon](roles/docker_daemon.md)       |
| docker_group            | [Docker daemon](roles/docker_daemon.md)       |
| ssl_enabled             | [Docker container](roles/docker_container.md) |
| timezone                | [Base](roles/base.md)                         |

## Adminer variables

Adminer specific variables

| name            | purpose                                   | default value | remark |
| --------------- | ----------------------------------------- | ------------- | ------ |
| adminer_version | Sets the version of the adminer container | latest        |        |
