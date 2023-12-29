# Redis

## Redis variables

| name                 | purpose                                  | default value | remark                         |
| -------------------- | ---------------------------------------- | ------------- | ------------------------------ |
| redis_container_name | The name of the redis container          |               | Should be configured in a task |
| redis_data_path      | The directory/volume to store redis data |               | Should be configured in a task |
| redis_password       | The password to access redis             |               | Should be configured in a task |
| redis_version        | The version of the redis image           | latest        |                                |
