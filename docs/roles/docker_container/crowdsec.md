# Crowdsec

Setup and configue [Crowdsec](https://www.crowdsec.net/) and [Crowdsec traefik bouncer](https://github.com/fbonalair/traefik-crowdsec-bouncer/tree/main).

## Global variables

Globally defined variables used by this deployment.

| Name                    | Documentation                                                                                  |
| ----------------------- | ---------------------------------------------------------------------------------------------- |
| inventory_hostname      | [Ansible](https://docs.ansible.com/ansible/latest/reference_appendices/special_variables.html) |
| docker_backend_network  | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_data_path        | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_frontend_network | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_group            | [Docker daemon](roles/docker_daemon.md)                                                        |
| docker_pool_base        | [Docker daemon](roles/docker_daemon.md)                                                        |

## Crowdsec variables

Crowdsec specific variables.

| name                     | purpose                                                | default value | remark                               |
| ------------------------ | ------------------------------------------------------ | ------------- | ------------------------------------ |
| crowdsec_bouncer_api_key | The API key to communicate with the crowdsec container |               | `cscli bouncers add bouncer-traefik` |
| crowdsec_collections     | A list of enabled collections                          |               |                                      |
| crowdsec_enabled         | Whether crowdsec is enabled or not                     | false         |                                      |
| crowdsec_enroll_token    | The enrollment token to register a new engine          |               | Found in crowdsec account            |

### Example configuration

```yaml
crowdsec_enabled: true
crowdsec_collections:
  - crowdsecurity/sshd
  - crowdsecurity/linux
  - crowdsecurity/traefik
  - crowdsecurity/http-cve
  - crowdsecurity/whitelist-good-actors
crowdsec_bouncer_api_key: <generated key>
crowdsec_enroll_token: <key taken from crowdsec.net>

```
