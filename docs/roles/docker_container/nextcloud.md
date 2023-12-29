# Nextcloud

## Nextcloud variables

| name                            | purpose                                             | default value | remark             |
| ------------------------------- | --------------------------------------------------- | ------------- | ------------------ |
| nextcloud_mariadb_root_password | The root password for the database                  |               |                    |
| nextcloud_mariadb_user          | The database user                                   | nextcloud     |                    |
| nextcloud_mariadb_user_password | The database password                               |               |                    |
| nextcloud_project_name          | The docker compose project name                     | nextcloud     |                    |
| nextcloud_redis_password        | The redis passwod                                   |               |                    |
| nextcloud_traefik_router_rules  | The Traefik router rules where nextcloud listens on |               | Must be configured |
| nextcloud_version               | The version of nextcloud to be used                 | latest        |                    |
| nextcloud_mariadb_dbname        | The database name                                   | nextclouddb   |                    |
