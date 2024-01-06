# Node exporter

Sets up and starts a [Node exporter](https://prometheus.io/docs/guides/node-exporter/)
container.

This container requires prometheus being enabled and started.

## Global variables

Globally defined variables used by this deployment.

| Name               | Documentation                                 |
| ------------------ | --------------------------------------------- |
| docker_data_path   | [Docker daemon](roles/docker_daemon.md)       |
| prometheus_enabled | [Docker container](roles/docker_container.md) |
| docker_group       | [Docker daemon](roles/docker_daemon.md)       |

## Node exporter variables

Node exporter specific variables.

| name                  | purpose                                    | default value | remark |
| --------------------- | ------------------------------------------ | ------------- | ------ |
| node_exporter_version | The version of the node exporter container | latest        |        |
