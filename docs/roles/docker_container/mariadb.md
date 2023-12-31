# MariaDB

A MariaDB database container. These containers are usually configured with a service
requiring MariaDB or MySQL database as a backend.

## MariaDB variables

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
      - mariadb
    container_volumes:
      - mariadb-data
    mariadb_user: maraidbuser
    mariadb_container_name: fancy-mariadb
    mariadb_dbname: dbname
    mariadb_user_password: "psst"
    mariadb_root_password: "even more psst"
    mariadb_data_path: mariadb-data # results in a volume myservice-redis:/var/lib/mysql
```
