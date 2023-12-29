# MariaDB

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
