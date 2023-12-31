# Redis

A Redis database container. These containers are usually configured with a service
requiring Redis as a backend service.

## Redis variables

| name                 | purpose                                  | default value | remark                         |
| -------------------- | ---------------------------------------- | ------------- | ------------------------------ |
| redis_container_name | The name of the redis container          |               | Should be configured in a task |
| redis_data_path      | The directory/volume to store redis data |               | Should be configured in a task |
| redis_password       | The password to access redis             |               | Should be configured in a task |
| redis_version        | The version of the redis image           | latest        |                                |

## Usage example

```yaml
- name: "My fancy service"
  ansible.builtin.template:
    src: "docker-compose.yml.j2"
    dest: "/data/docker-compose.yml"
    group: "docker"
    mode: '0640'
  vars:
    project_name: "sample"
    containers:
      - myservice
      - redis
    container_volumes:
      - myservice-redis
    redis_container_name: "redis"
    redis_password: "psst"
    redis_data_path: "myservice-redis" # results in a volume myservice-redis:/data
```
