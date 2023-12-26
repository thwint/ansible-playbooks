# Docker daemon role

Setup and configure Docker CE.

Short process description:

1. Create docker group
2. Configure docker repository
3. Install docker
4. Configure users allowed to use docker
5. Hardening
6. Create docker networks

## Docker variables

| name                         | purpose                                                                      | default value    | remark             |
| ---------------------------- | ---------------------------------------------------------------------------- | ---------------- | ------------------ |
| docker_backend_network       | The backend network for docker containers                                    | backend          |                    |
| docker_data_path             | The path where all docker compose files and container volumes are written to | /data            |                    |
| docker_default_address_pools | The address pool to be used in `daemon.json`                                 | 192.168.240.0/20 |                    |
| docker_frontend_network      | The backend network for docker containers                                    | frontend         |                    |
| docker_gid                   | The group id inside a docker container                                       | 990              |                    |
| docker_group                 | The name of the docker group                                                 | docker           |                    |
| docker_internal_ip           | The internal ip address of the docker daemon                                 | 192.168.240.1    |                    |
| docker_uid                   | The user id for to be used inside a docker container                         | 1000             |                    |
| docker_pool_base             | The base network used to configure docker networks                           | n/a              | must be configured |
