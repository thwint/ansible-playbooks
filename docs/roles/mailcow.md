# Mailcow role

This role is used to install and configure
[Mailcow Dockerized](https://github.com/mailcow/mailcow-dockerized)

Most of the configuration for mailcow can be found here:
<https://github.com/mailcow/mailcow-ansiblerole>

It extends the configuration by adding a `docker-compose.override.yml`
containing some healthchecks and additional configuration to use traefik.

## Custom mailcow variables

| name                          | purpose                                  | default value | remark |
| ----------------------------- | ---------------------------------------- | ------------- | ------ |
| mailcow__traefik_router_rules | Rules to be added as entpoint in traefik | n/a           |        |
